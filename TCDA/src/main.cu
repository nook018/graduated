#include	<stdio.h>
#include	<string.h>
#include	"err_handler.h"
#include	"filter_db.h"
#include	"util.h"
#include    <sys/time.h>
#include    <fstream>
#include    <iostream>

#include    <cuda_runtime.h>

#define		BUF_SZ   256
using namespace std;
clsFilterDB   db;

#define cudaCheckErrors(msg) \
    do { \
    cudaError_t __err = cudaGetLastError(); \
    if (__err != cudaSuccess) { \
        fprintf(stderr, "Fatal error: %s (%s at %s:%d)\n", \
                        msg, cudaGetErrorString(__err), __FILE__, __LINE__); \
        fprintf(stderr, "*** FAILED - ABORTING\n"); \
        exit(1); \
    } \
    } while (0)

inline __host__ __device__ UINT64 genPrefix(UINT64 prefix, unsigned char len)
{
    UINT64 result;
    UINT mask_m;
    
    if (len == 0)
	return(0);
    else{
	// mask    = 0xFFFFFFFFFFFFFFFFLL << (64-len);
	mask_m    = 0xFFFFFFFF << (32-len);
        result  = prefix & mask_m;
        return(result);
    }
}

double cpuSecond() {
    struct timeval tp;
    gettimeofday(&tp,NULL);
    return ((double)tp.tv_sec*1e6 + (double)tp.tv_usec);
}


void bubble_sort(clsFilterDB item, int len)
{
    int i, j;
    filter temp;
    for(i = 0; i < len - 1; i++)
        for(j = 0; j < len - i - 1; j++)
        {
            if(item.filterSet_[j].destIPLen_ > item.filterSet_[j+1].destIPLen_)
            {
                
                //printf("1.srcIP: %d\n", item.filterSet_[j].srcIPLen_);
                temp = item.filterSet_[j];
                item.filterSet_[j] = item.filterSet_[j+1];
                item.filterSet_[j+1] = temp;
                //printf("2.srcIP: %d\n", item.filterSet_[j].srcIPLen_);
            }
            if(item.filterSet_[j].srcIPLen_ > item.filterSet_[j+1].srcIPLen_)
            {
                //printf("1.srcIP: %d\n", item.filterSet_[j].srcIPLen_);
                temp = item.filterSet_[j];
                item.filterSet_[j] = item.filterSet_[j+1];
                item.filterSet_[j+1] = temp;
                //printf("2.srcIP: %d\n", item.filterSet_[j].srcIPLen_);
            }
            
        }
    
}

// distribute filters before sorting, to thread by order. (approach 1)
__global__ void gpu_conflict_detect_0(filter * __restrict__ filterSet, int rule_size, dev_var* devTotal)
{
    //printf("blockIdx.x: %d, threadIdx.x: %d\n", blockIdx.x, threadIdx.x);
    int threadID = blockDim.x * blockIdx.x + threadIdx.x;
    int threadSize = gridDim.x * blockDim.x;
    int base = rule_size/threadSize+1;
    int start = threadID*base;
    //devTotal[start].set = 1;
    //devTotal[threadID].set = 1;
    //devTotal[threadID].result = 0;
    //printf("threadSize:%d,%d\n", threadSize, rule_size/threadSize + 1);
    //for(int i=threadID; i<rule_size; i+=threadSize){  
    for (int i=start; i<(start+base) && i<rule_size ; i++) {
	devTotal[i].set = 1;        
	devTotal[i].result = 0;
        for (int j= 0; j<rule_size ; j++) {
            if( filterSet[i].srcIPLen_ > filterSet[j].srcIPLen_ ){
                if( genPrefix(filterSet[i].srcIP_, filterSet[j].srcIPLen_) == filterSet[j].srcIP_ ){
                    if(( (!filterSet[i].pro_num_ || !filterSet[j].pro_num_) || (filterSet[i].pro_num_ == filterSet[j].pro_num_ )) ) {
                        if (
                            (
                             
                             ((filterSet[i].destPortleft_ <= filterSet[j].destPortright_) && (filterSet[i].destPortleft_ >= filterSet[j].destPortleft_))   ||
                             ((filterSet[i].destPortright_ >= filterSet[j].destPortleft_) && (filterSet[i].destPortright_ <= filterSet[j].destPortright_)) ||
                             ((filterSet[i].destPortright_ >= filterSet[j].destPortright_) && (filterSet[i].destPortleft_ <= filterSet[j].destPortleft_))
                             
                             )
                            &&
                            (
                             ((filterSet[i].srcPortleft_ <= filterSet[j].srcPortright_) && (filterSet[i].srcPortleft_ >= filterSet[j].srcPortleft_))   ||
                             ((filterSet[i].srcPortright_ >= filterSet[j].srcPortleft_) && (filterSet[i].srcPortright_ <= filterSet[j].srcPortright_)) ||
                             ((filterSet[i].srcPortright_ >= filterSet[j].srcPortright_) && (filterSet[i].srcPortleft_ <= filterSet[j].srcPortleft_))
                             
                             )
                            )
                        {
                            
                            
                            if (filterSet[i].destIPLen_ > filterSet[j].destIPLen_ ){
                                if ( genPrefix(filterSet[i].destIP_, filterSet[j].destIPLen_) == filterSet[j].destIP_){
                                    //counter1++;
                                    
                                    if(
                                       ( (filterSet[i].destPortleft_ <= filterSet[j].destPortleft_) && (filterSet[i].destPortright_ >= filterSet[j].destPortright_) ) &&
                                       ( (filterSet[i].srcPortleft_  <= filterSet[j].srcPortleft_)  && (filterSet[i].srcPortright_  >= filterSet[j].srcPortright_) ) &&
                                       ( (filterSet[i].pro_num_ == filterSet[j].pro_num_) || (filterSet[i].pro_num_ == 0) )
                                       ){}
                                    else
                                        //devTotal++;
                                        devTotal[i].result++;
                                }
                            }
                            
                            if (filterSet[i].destIPLen_ < filterSet[j].destIPLen_){
                                if ( genPrefix(filterSet[j].destIP_, filterSet[i].destIPLen_) == filterSet[i].destIP_){
                                    //counter2++;
                                    /*
                                     if(
                                     ( (rule.filterSet_[i].destPortleft_ <= rule.filterSet_[j].destPortleft_) && (rule.filterSet_[i].destPortright_ >= rule.filterSet_[j].destPortright_) ) &&
                                     ( (rule.filterSet_[i].srcPortleft_  <= rule.filterSet_[j].srcPortleft_)  && (rule.filterSet_[i].srcPortright_  >= rule.filterSet_[j].srcPortright_) ) &&
                                     ( (rule.filterSet_[i].pro_num_ == rule.filterSet_[j].pro_num_) || (rule.filterSet_[i].pro_num_ == 0) )
                                     ){}
                                     else
                                     */
                                    //devTotal++;
                                    devTotal[i].result++;
                                }
                            }
                            
                            if (filterSet[i].destIPLen_ == filterSet[j].destIPLen_){
                                if ( filterSet[i].destIP_ == filterSet[j].destIP_){
                                    //counter3++;
                                    
                                    if(
                                       ( (filterSet[i].destPortleft_ <= filterSet[j].destPortleft_) && (filterSet[i].destPortright_ >= filterSet[j].destPortright_) ) &&
                                       ( (filterSet[i].srcPortleft_  <= filterSet[j].srcPortleft_)  && (filterSet[i].srcPortright_  >= filterSet[j].srcPortright_) ) &&
                                       ( (filterSet[i].pro_num_ == filterSet[j].pro_num_) || (filterSet[i].pro_num_ == 0) )
                                       ){}
                                    else
                                        //devTotal++;
                                        devTotal[i].result++;
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    
}


// base on new, distribute filters to thread by order. (approach 1)
__global__ void gpu_conflict_detect_1(filter * __restrict__ filterSet, int rule_size, dev_var* devTotal)
{
    //printf("blockIdx.x: %d, threadIdx.x: %d\n", blockIdx.x, threadIdx.x);
    int threadID = blockDim.x * blockIdx.x + threadIdx.x;
    int threadSize = gridDim.x * blockDim.x;
    int base = rule_size/threadSize+1;
    int start = threadID*base;
    //devTotal[start].set = 1;
    //devTotal[threadID].set = 1;
    //devTotal[threadID].result = 0;
    //printf("threadSize:%d,%d\n", threadSize, rule_size/threadSize + 1);
    //for(int i=threadID; i<rule_size; i+=threadSize){  
    for (int i=start; i<(start+base) && i<rule_size ; i++) {
	devTotal[i].set = 1;        
	devTotal[i].result = 0;
        for (int j= 0; j<i ; j++) {
            if( filterSet[i].srcIPLen_ > filterSet[j].srcIPLen_ ){
                if( genPrefix(filterSet[i].srcIP_, filterSet[j].srcIPLen_) == filterSet[j].srcIP_ ){
                    if(( (!filterSet[i].pro_num_ || !filterSet[j].pro_num_) || (filterSet[i].pro_num_ == filterSet[j].pro_num_ )) ) {
                        if (
                            (
                             
                             ((filterSet[i].destPortleft_ <= filterSet[j].destPortright_) && (filterSet[i].destPortleft_ >= filterSet[j].destPortleft_))   ||
                             ((filterSet[i].destPortright_ >= filterSet[j].destPortleft_) && (filterSet[i].destPortright_ <= filterSet[j].destPortright_)) ||
                             ((filterSet[i].destPortright_ >= filterSet[j].destPortright_) && (filterSet[i].destPortleft_ <= filterSet[j].destPortleft_))
                             
                             )
                            &&
                            (
                             ((filterSet[i].srcPortleft_ <= filterSet[j].srcPortright_) && (filterSet[i].srcPortleft_ >= filterSet[j].srcPortleft_))   ||
                             ((filterSet[i].srcPortright_ >= filterSet[j].srcPortleft_) && (filterSet[i].srcPortright_ <= filterSet[j].srcPortright_)) ||
                             ((filterSet[i].srcPortright_ >= filterSet[j].srcPortright_) && (filterSet[i].srcPortleft_ <= filterSet[j].srcPortleft_))
                             
                             )
                            )
                        {
                            
                            
                            if (filterSet[i].destIPLen_ > filterSet[j].destIPLen_ ){
                                if ( genPrefix(filterSet[i].destIP_, filterSet[j].destIPLen_) == filterSet[j].destIP_){
                                    //counter1++;
                                    
                                    if(
                                       ( (filterSet[i].destPortleft_ <= filterSet[j].destPortleft_) && (filterSet[i].destPortright_ >= filterSet[j].destPortright_) ) &&
                                       ( (filterSet[i].srcPortleft_  <= filterSet[j].srcPortleft_)  && (filterSet[i].srcPortright_  >= filterSet[j].srcPortright_) ) &&
                                       ( (filterSet[i].pro_num_ == filterSet[j].pro_num_) || (filterSet[i].pro_num_ == 0) )
                                       ){}
                                    else
                                        //devTotal++;
                                        devTotal[i].result++;
                                }
                            }
                            
                            if (filterSet[i].destIPLen_ < filterSet[j].destIPLen_){
                                if ( genPrefix(filterSet[j].destIP_, filterSet[i].destIPLen_) == filterSet[i].destIP_){
                                    //counter2++;
                                    /*
                                     if(
                                     ( (rule.filterSet_[i].destPortleft_ <= rule.filterSet_[j].destPortleft_) && (rule.filterSet_[i].destPortright_ >= rule.filterSet_[j].destPortright_) ) &&
                                     ( (rule.filterSet_[i].srcPortleft_  <= rule.filterSet_[j].srcPortleft_)  && (rule.filterSet_[i].srcPortright_  >= rule.filterSet_[j].srcPortright_) ) &&
                                     ( (rule.filterSet_[i].pro_num_ == rule.filterSet_[j].pro_num_) || (rule.filterSet_[i].pro_num_ == 0) )
                                     ){}
                                     else
                                     */
                                    //devTotal++;
                                    devTotal[i].result++;
                                }
                            }
                            
                            if (filterSet[i].destIPLen_ == filterSet[j].destIPLen_){
                                if ( filterSet[i].destIP_ == filterSet[j].destIP_){
                                    //counter3++;
                                    
                                    if(
                                       ( (filterSet[i].destPortleft_ <= filterSet[j].destPortleft_) && (filterSet[i].destPortright_ >= filterSet[j].destPortright_) ) &&
                                       ( (filterSet[i].srcPortleft_  <= filterSet[j].srcPortleft_)  && (filterSet[i].srcPortright_  >= filterSet[j].srcPortright_) ) &&
                                       ( (filterSet[i].pro_num_ == filterSet[j].pro_num_) || (filterSet[i].pro_num_ == 0) )
                                       ){}
                                    else
                                        //devTotal++;
                                        devTotal[i].result++;
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    
}

// base on new, distribute filters to thread by work. (approach 2)
__global__ void gpu_conflict_detect_2(filter * __restrict__ filterSet, int rule_size, dev_var* devTotal)
{
    //printf("blockIdx.x: %d, threadIdx.x: %d\n", blockIdx.x, threadIdx.x);
    int threadID = threadIdx.x * gridDim.x + blockIdx.x;
    int threadSize = gridDim.x * blockDim.x;
    
    //devTotal[threadID].set = 1;
    //printf("threadSize:%d,%d\n", threadSize, rule_size/threadSize + 1);
    for (int i=threadID; i<rule_size; i+=threadSize) {
    //for(int i=threadID; i<rule_size; i+=threadSize){  
        devTotal[i].set = 1;
        //devTotal[i].result = 0;
        for (int j= 0; j<i ; j++) {
            if( filterSet[i].srcIPLen_ > filterSet[j].srcIPLen_ ){
                if( genPrefix(filterSet[i].srcIP_, filterSet[j].srcIPLen_) == filterSet[j].srcIP_ ){
                    if(( (!filterSet[i].pro_num_ || !filterSet[j].pro_num_) || (filterSet[i].pro_num_ == filterSet[j].pro_num_ )) ) {
                        if (
                            (
                             
                             ((filterSet[i].destPortleft_ <= filterSet[j].destPortright_) && (filterSet[i].destPortleft_ >= filterSet[j].destPortleft_))   ||
                             ((filterSet[i].destPortright_ >= filterSet[j].destPortleft_) && (filterSet[i].destPortright_ <= filterSet[j].destPortright_)) ||
                             ((filterSet[i].destPortright_ >= filterSet[j].destPortright_) && (filterSet[i].destPortleft_ <= filterSet[j].destPortleft_))
                             
                             )
                            &&
                            (
                             ((filterSet[i].srcPortleft_ <= filterSet[j].srcPortright_) && (filterSet[i].srcPortleft_ >= filterSet[j].srcPortleft_))   ||
                             ((filterSet[i].srcPortright_ >= filterSet[j].srcPortleft_) && (filterSet[i].srcPortright_ <= filterSet[j].srcPortright_)) ||
                             ((filterSet[i].srcPortright_ >= filterSet[j].srcPortright_) && (filterSet[i].srcPortleft_ <= filterSet[j].srcPortleft_))
                             
                             )
                            )
                        {
                            
                            
                            if (filterSet[i].destIPLen_ > filterSet[j].destIPLen_ ){
                                if ( genPrefix(filterSet[i].destIP_, filterSet[j].destIPLen_) == filterSet[j].destIP_){
                                    //counter1++;
                                    
                                    if(
                                       ( (filterSet[i].destPortleft_ <= filterSet[j].destPortleft_) && (filterSet[i].destPortright_ >= filterSet[j].destPortright_) ) &&
                                       ( (filterSet[i].srcPortleft_  <= filterSet[j].srcPortleft_)  && (filterSet[i].srcPortright_  >= filterSet[j].srcPortright_) ) &&
                                       ( (filterSet[i].pro_num_ == filterSet[j].pro_num_) || (filterSet[i].pro_num_ == 0) )
                                       ){}
                                    else
                                        //devTotal++;
                                        devTotal[i].result++;
                                }
                            }
                            
                            if (filterSet[i].destIPLen_ < filterSet[j].destIPLen_){
                                if ( genPrefix(filterSet[j].destIP_, filterSet[i].destIPLen_) == filterSet[i].destIP_){
                                    //counter2++;
                                    /*
                                     if(
                                     ( (rule.filterSet_[i].destPortleft_ <= rule.filterSet_[j].destPortleft_) && (rule.filterSet_[i].destPortright_ >= rule.filterSet_[j].destPortright_) ) &&
                                     ( (rule.filterSet_[i].srcPortleft_  <= rule.filterSet_[j].srcPortleft_)  && (rule.filterSet_[i].srcPortright_  >= rule.filterSet_[j].srcPortright_) ) &&
                                     ( (rule.filterSet_[i].pro_num_ == rule.filterSet_[j].pro_num_) || (rule.filterSet_[i].pro_num_ == 0) )
                                     ){}
                                     else
                                     */
                                    //devTotal++;
                                    devTotal[i].result++;
                                }
                            }
                            
                            if (filterSet[i].destIPLen_ == filterSet[j].destIPLen_){
                                if ( filterSet[i].destIP_ == filterSet[j].destIP_){
                                    //counter3++;
                                    
                                    if(
                                       ( (filterSet[i].destPortleft_ <= filterSet[j].destPortleft_) && (filterSet[i].destPortright_ >= filterSet[j].destPortright_) ) &&
                                       ( (filterSet[i].srcPortleft_  <= filterSet[j].srcPortleft_)  && (filterSet[i].srcPortright_  >= filterSet[j].srcPortright_) ) &&
                                       ( (filterSet[i].pro_num_ == filterSet[j].pro_num_) || (filterSet[i].pro_num_ == 0) )
                                       ){}
                                    else
                                        //devTotal++;
                                        devTotal[i].result++;
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    
}

// base on new, distribute filters to thread by work. (compare)
__global__ void gpu_conflict_detect_3(filter * __restrict__ filterSet, int rule_size, dev_var* devTotal)
{
    //printf("blockIdx.x: %d, threadIdx.x: %d\n", blockIdx.x, threadIdx.x);
    int threadID = blockDim.x * blockIdx.x + threadIdx.x;
    int threadSize = gridDim.x * blockDim.x;
    //int base = rule_size/threadSize+1;
    //int start = threadID*base;
    //devTotal[start].set = 1;
    //devTotal[start].result = 0;
    //printf("threadSize:%d,%d\n", threadSize, rule_size/threadSize + 1);
    for (int i=threadID; i<rule_size; i+=threadSize) {
        devTotal[i].set = 1;
	//devTotal[i].result = 0;
        for (int j= 0; j<i ; j++) {
            if( filterSet[i].srcIPLen_ > filterSet[j].srcIPLen_ ){
                if( genPrefix(filterSet[i].srcIP_, filterSet[j].srcIPLen_) == filterSet[j].srcIP_ ){
                    if(( (!filterSet[i].pro_num_ || !filterSet[j].pro_num_) || (filterSet[i].pro_num_ == filterSet[j].pro_num_ )) ) {
                        if (
                            (
                             
                             ((filterSet[i].destPortleft_ <= filterSet[j].destPortright_) && (filterSet[i].destPortleft_ >= filterSet[j].destPortleft_))   ||
                             ((filterSet[i].destPortright_ >= filterSet[j].destPortleft_) && (filterSet[i].destPortright_ <= filterSet[j].destPortright_)) ||
                             ((filterSet[i].destPortright_ >= filterSet[j].destPortright_) && (filterSet[i].destPortleft_ <= filterSet[j].destPortleft_))
                             
                             )
                            &&
                            (
                             ((filterSet[i].srcPortleft_ <= filterSet[j].srcPortright_) && (filterSet[i].srcPortleft_ >= filterSet[j].srcPortleft_))   ||
                             ((filterSet[i].srcPortright_ >= filterSet[j].srcPortleft_) && (filterSet[i].srcPortright_ <= filterSet[j].srcPortright_)) ||
                             ((filterSet[i].srcPortright_ >= filterSet[j].srcPortright_) && (filterSet[i].srcPortleft_ <= filterSet[j].srcPortleft_))
                             
                             )
                            )
                        {
                            
                            
                            if (filterSet[i].destIPLen_ > filterSet[j].destIPLen_ ){
                                if ( genPrefix(filterSet[i].destIP_, filterSet[j].destIPLen_) == filterSet[j].destIP_){
                                    //counter1++;
                                    
                                    if(
                                       ( (filterSet[i].destPortleft_ <= filterSet[j].destPortleft_) && (filterSet[i].destPortright_ >= filterSet[j].destPortright_) ) &&
                                       ( (filterSet[i].srcPortleft_  <= filterSet[j].srcPortleft_)  && (filterSet[i].srcPortright_  >= filterSet[j].srcPortright_) ) &&
                                       ( (filterSet[i].pro_num_ == filterSet[j].pro_num_) || (filterSet[i].pro_num_ == 0) )
                                       ){}
                                    else
                                        //devTotal++;
                                        devTotal[i].result++;
                                }
                            }
                            
                            if (filterSet[i].destIPLen_ < filterSet[j].destIPLen_){
                                if ( genPrefix(filterSet[j].destIP_, filterSet[i].destIPLen_) == filterSet[i].destIP_){
                                    //counter2++;
                                    /*
                                     if(
                                     ( (rule.filterSet_[i].destPortleft_ <= rule.filterSet_[j].destPortleft_) && (rule.filterSet_[i].destPortright_ >= rule.filterSet_[j].destPortright_) ) &&
                                     ( (rule.filterSet_[i].srcPortleft_  <= rule.filterSet_[j].srcPortleft_)  && (rule.filterSet_[i].srcPortright_  >= rule.filterSet_[j].srcPortright_) ) &&
                                     ( (rule.filterSet_[i].pro_num_ == rule.filterSet_[j].pro_num_) || (rule.filterSet_[i].pro_num_ == 0) )
                                     ){}
                                     else
                                     */
                                    //devTotal++;
                                    devTotal[i].result++;
                                }
                            }
                            
                            if (filterSet[i].destIPLen_ == filterSet[j].destIPLen_){
                                if ( filterSet[i].destIP_ == filterSet[j].destIP_){
                                    //counter3++;
                                    
                                    if(
                                       ( (filterSet[i].destPortleft_ <= filterSet[j].destPortleft_) && (filterSet[i].destPortright_ >= filterSet[j].destPortright_) ) &&
                                       ( (filterSet[i].srcPortleft_  <= filterSet[j].srcPortleft_)  && (filterSet[i].srcPortright_  >= filterSet[j].srcPortright_) ) &&
                                       ( (filterSet[i].pro_num_ == filterSet[j].pro_num_) || (filterSet[i].pro_num_ == 0) )
                                       ){}
                                    else
                                        //devTotal++;
                                        devTotal[i].result++;
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    
}

// base on new, distribute filters to thread by work. (1234 8765)
__global__ void gpu_conflict_detect_4(filter *filterSet, int rule_size, dev_var* devTotal)
{
    //printf("blockIdx.x: %d, threadIdx.x: %d\n", blockIdx.x, threadIdx.x);
    int threadID = blockDim.x * blockIdx.x + threadIdx.x;
    int threadSize = gridDim.x * blockDim.x;
    int base = threadSize * 2;
    int start = (base-1) - threadID;
    //devTotal[start].set = 1;
    //devTotal[start].result = 0;
    //printf("threadSize:%d,%d\n", threadSize, rule_size/threadSize + 1);
    for (int i=threadID; i<rule_size; i+=base) {
        devTotal[i].set = 1;
        devTotal[i].result = 0;
        for (int j= 0; j<i ; j++) {
            if( filterSet[i].srcIPLen_ > filterSet[j].srcIPLen_ ){
                if( genPrefix(filterSet[i].srcIP_, filterSet[j].srcIPLen_) == filterSet[j].srcIP_ ){
                    if(( (!filterSet[i].pro_num_ || !filterSet[j].pro_num_) || (filterSet[i].pro_num_ == filterSet[j].pro_num_ )) ) {
                        if (
                            (
                             
                             ((filterSet[i].destPortleft_ <= filterSet[j].destPortright_) && (filterSet[i].destPortleft_ >= filterSet[j].destPortleft_))   ||
                             ((filterSet[i].destPortright_ >= filterSet[j].destPortleft_) && (filterSet[i].destPortright_ <= filterSet[j].destPortright_)) ||
                             ((filterSet[i].destPortright_ >= filterSet[j].destPortright_) && (filterSet[i].destPortleft_ <= filterSet[j].destPortleft_))
                             
                             )
                            &&
                            (
                             ((filterSet[i].srcPortleft_ <= filterSet[j].srcPortright_) && (filterSet[i].srcPortleft_ >= filterSet[j].srcPortleft_))   ||
                             ((filterSet[i].srcPortright_ >= filterSet[j].srcPortleft_) && (filterSet[i].srcPortright_ <= filterSet[j].srcPortright_)) ||
                             ((filterSet[i].srcPortright_ >= filterSet[j].srcPortright_) && (filterSet[i].srcPortleft_ <= filterSet[j].srcPortleft_))
                             
                             )
                            )
                        {
                            
                            
                            if (filterSet[i].destIPLen_ > filterSet[j].destIPLen_ ){
                                if ( genPrefix(filterSet[i].destIP_, filterSet[j].destIPLen_) == filterSet[j].destIP_){
                                    //counter1++;
                                    
                                    if(
                                       ( (filterSet[i].destPortleft_ <= filterSet[j].destPortleft_) && (filterSet[i].destPortright_ >= filterSet[j].destPortright_) ) &&
                                       ( (filterSet[i].srcPortleft_  <= filterSet[j].srcPortleft_)  && (filterSet[i].srcPortright_  >= filterSet[j].srcPortright_) ) &&
                                       ( (filterSet[i].pro_num_ == filterSet[j].pro_num_) || (filterSet[i].pro_num_ == 0) )
                                       ){}
                                    else
                                        //devTotal++;
                                        devTotal[i].result++;
                                }
                            }
                            
                            if (filterSet[i].destIPLen_ < filterSet[j].destIPLen_){
                                if ( genPrefix(filterSet[j].destIP_, filterSet[i].destIPLen_) == filterSet[i].destIP_){
                                    //counter2++;
                                    /*
                                     if(
                                     ( (rule.filterSet_[i].destPortleft_ <= rule.filterSet_[j].destPortleft_) && (rule.filterSet_[i].destPortright_ >= rule.filterSet_[j].destPortright_) ) &&
                                     ( (rule.filterSet_[i].srcPortleft_  <= rule.filterSet_[j].srcPortleft_)  && (rule.filterSet_[i].srcPortright_  >= rule.filterSet_[j].srcPortright_) ) &&
                                     ( (rule.filterSet_[i].pro_num_ == rule.filterSet_[j].pro_num_) || (rule.filterSet_[i].pro_num_ == 0) )
                                     ){}
                                     else
                                     */
                                    //devTotal++;
                                    devTotal[i].result++;
                                }
                            }
                            
                            if (filterSet[i].destIPLen_ == filterSet[j].destIPLen_){
                                if ( filterSet[i].destIP_ == filterSet[j].destIP_){
                                    //counter3++;
                                    
                                    if(
                                       ( (filterSet[i].destPortleft_ <= filterSet[j].destPortleft_) && (filterSet[i].destPortright_ >= filterSet[j].destPortright_) ) &&
                                       ( (filterSet[i].srcPortleft_  <= filterSet[j].srcPortleft_)  && (filterSet[i].srcPortright_  >= filterSet[j].srcPortright_) ) &&
                                       ( (filterSet[i].pro_num_ == filterSet[j].pro_num_) || (filterSet[i].pro_num_ == 0) )
                                       ){}
                                    else
                                        //devTotal++;
                                        devTotal[i].result++;
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    
    for (int i=start; i<rule_size; i+=base) {
        devTotal[i].set = 1;
        devTotal[i].result = 0;
        for (int j= 0; j<i ; j++) {
            if( filterSet[i].srcIPLen_ > filterSet[j].srcIPLen_ ){
                if( genPrefix(filterSet[i].srcIP_, filterSet[j].srcIPLen_) == filterSet[j].srcIP_ ){
                    if(( (!filterSet[i].pro_num_ || !filterSet[j].pro_num_) || (filterSet[i].pro_num_ == filterSet[j].pro_num_ )) ) {
                        if (
                            (
                             
                             ((filterSet[i].destPortleft_ <= filterSet[j].destPortright_) && (filterSet[i].destPortleft_ >= filterSet[j].destPortleft_))   ||
                             ((filterSet[i].destPortright_ >= filterSet[j].destPortleft_) && (filterSet[i].destPortright_ <= filterSet[j].destPortright_)) ||
                             ((filterSet[i].destPortright_ >= filterSet[j].destPortright_) && (filterSet[i].destPortleft_ <= filterSet[j].destPortleft_))
                             
                             )
                            &&
                            (
                             ((filterSet[i].srcPortleft_ <= filterSet[j].srcPortright_) && (filterSet[i].srcPortleft_ >= filterSet[j].srcPortleft_))   ||
                             ((filterSet[i].srcPortright_ >= filterSet[j].srcPortleft_) && (filterSet[i].srcPortright_ <= filterSet[j].srcPortright_)) ||
                             ((filterSet[i].srcPortright_ >= filterSet[j].srcPortright_) && (filterSet[i].srcPortleft_ <= filterSet[j].srcPortleft_))
                             
                             )
                            )
                        {
                            
                            
                            if (filterSet[i].destIPLen_ > filterSet[j].destIPLen_ ){
                                if ( genPrefix(filterSet[i].destIP_, filterSet[j].destIPLen_) == filterSet[j].destIP_){
                                    //counter1++;
                                    
                                    if(
                                       ( (filterSet[i].destPortleft_ <= filterSet[j].destPortleft_) && (filterSet[i].destPortright_ >= filterSet[j].destPortright_) ) &&
                                       ( (filterSet[i].srcPortleft_  <= filterSet[j].srcPortleft_)  && (filterSet[i].srcPortright_  >= filterSet[j].srcPortright_) ) &&
                                       ( (filterSet[i].pro_num_ == filterSet[j].pro_num_) || (filterSet[i].pro_num_ == 0) )
                                       ){}
                                    else
                                        //devTotal++;
                                        devTotal[i].result++;
                                }
                            }
                            
                            if (filterSet[i].destIPLen_ < filterSet[j].destIPLen_){
                                if ( genPrefix(filterSet[j].destIP_, filterSet[i].destIPLen_) == filterSet[i].destIP_){
                                    //counter2++;
                                    /*
                                     if(
                                     ( (rule.filterSet_[i].destPortleft_ <= rule.filterSet_[j].destPortleft_) && (rule.filterSet_[i].destPortright_ >= rule.filterSet_[j].destPortright_) ) &&
                                     ( (rule.filterSet_[i].srcPortleft_  <= rule.filterSet_[j].srcPortleft_)  && (rule.filterSet_[i].srcPortright_  >= rule.filterSet_[j].srcPortright_) ) &&
                                     ( (rule.filterSet_[i].pro_num_ == rule.filterSet_[j].pro_num_) || (rule.filterSet_[i].pro_num_ == 0) )
                                     ){}
                                     else
                                     */
                                    //devTotal++;
                                    devTotal[i].result++;
                                }
                            }
                            
                            if (filterSet[i].destIPLen_ == filterSet[j].destIPLen_){
                                if ( filterSet[i].destIP_ == filterSet[j].destIP_){
                                    //counter3++;
                                    
                                    if(
                                       ( (filterSet[i].destPortleft_ <= filterSet[j].destPortleft_) && (filterSet[i].destPortright_ >= filterSet[j].destPortright_) ) &&
                                       ( (filterSet[i].srcPortleft_  <= filterSet[j].srcPortleft_)  && (filterSet[i].srcPortright_  >= filterSet[j].srcPortright_) ) &&
                                       ( (filterSet[i].pro_num_ == filterSet[j].pro_num_) || (filterSet[i].pro_num_ == 0) )
                                       ){}
                                    else
                                        //devTotal++;
                                        devTotal[i].result++;
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    
}

void host_conflict_detect(filter *filterSet, int rule_size, int &total)
{
    for (int i=0; i<rule_size; i++)	{
        for (int j= 0; j<i; j++) {
            if( (filterSet[i].srcIPLen_ > filterSet[j].srcIPLen_ ) && ( genPrefix(filterSet[i].srcIP_, filterSet[j].srcIPLen_) == filterSet[j].srcIP_ ) ){
                if(( (!filterSet[i].pro_num_ || !filterSet[j].pro_num_) || (filterSet[i].pro_num_ == filterSet[j].pro_num_ )) ) {
                    if (
                        (
                         
                         ((filterSet[i].destPortleft_ <= filterSet[j].destPortright_) && (filterSet[i].destPortleft_ >= filterSet[j].destPortleft_))   ||
                         ((filterSet[i].destPortright_ >= filterSet[j].destPortleft_) && (filterSet[i].destPortright_ <= filterSet[j].destPortright_)) ||
                         ((filterSet[i].destPortright_ >= filterSet[j].destPortright_) && (filterSet[i].destPortleft_ <= filterSet[j].destPortleft_))
                         
                        )
                        &&
                        (
                         ((filterSet[i].srcPortleft_ <= filterSet[j].srcPortright_) && (filterSet[i].srcPortleft_ >= filterSet[j].srcPortleft_))   ||
                         ((filterSet[i].srcPortright_ >= filterSet[j].srcPortleft_) && (filterSet[i].srcPortright_ <= filterSet[j].srcPortright_)) ||
                         ((filterSet[i].srcPortright_ >= filterSet[j].srcPortright_) && (filterSet[i].srcPortleft_ <= filterSet[j].srcPortleft_))
                         
                         )
                        )
                    {
                        
                        
                        if (filterSet[i].destIPLen_ > filterSet[j].destIPLen_ ){
                            if ( genPrefix(filterSet[i].destIP_, filterSet[j].destIPLen_) == filterSet[j].destIP_){
                                //counter1++;
                                
                                if(
                                   ( (filterSet[i].destPortleft_ <= filterSet[j].destPortleft_) && (filterSet[i].destPortright_ >= filterSet[j].destPortright_) ) &&
                                   ( (filterSet[i].srcPortleft_  <= filterSet[j].srcPortleft_)  && (filterSet[i].srcPortright_  >= filterSet[j].srcPortright_) ) &&
                                   ( (filterSet[i].pro_num_ == filterSet[j].pro_num_) || (filterSet[i].pro_num_ == 0) )
                                   ){}
                                else
                                    total++;
                            }
                        }
                        
                        if (filterSet[i].destIPLen_ < filterSet[j].destIPLen_){
                            if ( genPrefix(filterSet[j].destIP_, filterSet[i].destIPLen_) == filterSet[i].destIP_){
                                //counter2++;
                                /*
                                 if(
                                 ( (rule.filterSet_[i].destPortleft_ <= rule.filterSet_[j].destPortleft_) && (rule.filterSet_[i].destPortright_ >= rule.filterSet_[j].destPortright_) ) &&
                                 ( (rule.filterSet_[i].srcPortleft_  <= rule.filterSet_[j].srcPortleft_)  && (rule.filterSet_[i].srcPortright_  >= rule.filterSet_[j].srcPortright_) ) &&
                                 ( (rule.filterSet_[i].pro_num_ == rule.filterSet_[j].pro_num_) || (rule.filterSet_[i].pro_num_ == 0) )
                                 ){}
                                 else
                                 */
                                total++;
                            }
                        }
                        
                        if (filterSet[i].destIPLen_ == filterSet[j].destIPLen_){
                            if ( filterSet[i].destIP_ == filterSet[j].destIP_){
                                //counter3++;
                                
                                if(
                                   ( (filterSet[i].destPortleft_ <= filterSet[j].destPortleft_) && (filterSet[i].destPortright_ >= filterSet[j].destPortright_) ) &&
                                   ( (filterSet[i].srcPortleft_  <= filterSet[j].srcPortleft_)  && (filterSet[i].srcPortright_  >= filterSet[j].srcPortright_) ) &&
                                   ( (filterSet[i].pro_num_ == filterSet[j].pro_num_) || (filterSet[i].pro_num_ == 0) )
                                   ){}
                                else
                                    total++;
                            }
                        }
                        
                    }
                }
            }
        }
    }
    
}


int main(int argc, char *argv[])
{

    ofstream fout;
    double sort_start, hconflict_start, g1conflict_start, g2conflict_start, g0conflict_start;
    double sort_time, hconflict_time, g1conflict_time, g2conflict_time, g0conflict_time;
    int db_size;
    int total = 0;
    //int *cpy_dev_total;
    dev_var *cpy_dev;

    // CUDA variable
    filter* dev_filterSet;	// store filter in device
    //int dev_total = 0;
    dev_var* dev_total;		// store conflict result in device
    
    //insert filters
    if (db.loadFilters(argv[1]) == -1)
	err_quit("Error: unable to open the filter database.");

    db_size = db.size();	// get database size
    printf("number of rules: %d\n", db_size);
    int block = 1024;
    int grid = 13;
    //int grid = db_size/block;
    //if(grid == 0)
	//grid = 1;
    // set to 0 for copying to device variable

    // prepare device variable
    cudaMalloc((void**)&dev_filterSet, db_size * sizeof(filter));
    cudaCheckErrors("cudaMalloc1 fail");
    cudaMalloc((void**)&dev_total, db_size * sizeof(dev_var));
    cudaCheckErrors("cudaMalloc2 fail");   
    cudaMemset(dev_total, 0, db_size*sizeof(dev_total));

    cpy_dev = (dev_var*)malloc(db_size*sizeof(dev_var));
    // call kernel function
    g0conflict_start = cpuSecond();
    // copy to device
    cudaMemcpy(dev_filterSet, db.filterSet_, db_size * sizeof(filter), cudaMemcpyHostToDevice);
    cudaCheckErrors("cudaMemcpy1 fail");
    gpu_conflict_detect_0<<<grid, block>>>(dev_filterSet, db_size, dev_total);
    cudaDeviceSynchronize();
    
    // copy device result ot host
    cudaMemcpy(cpy_dev, dev_total, db_size * sizeof(dev_var), cudaMemcpyDeviceToHost);
    int sum = 0;
    for(int tmp = 0; tmp < db_size; tmp++)
    {
        if(cpy_dev[tmp].set == 1)
	{
	    //printf("threadIdx:%d\t", tmp);
	    sum += cpy_dev[tmp].result;   
	}	
	//printf("srtIPlen:  %d\n", db.filterSet_[tmp].srcIPLen_);
        //printf("destIPlen: %d\n", db.filterSet_[tmp].destIPLen_);
        //system("read var1");
    }
    g0conflict_time = cpuSecond() - g0conflict_start;
    cout << "m0_detection_time: " << g0conflict_time << " usec" << endl;
    printf("m0 conflict detection: %d\n", sum);
    free(cpy_dev);
    cudaFree(dev_filterSet);
    cudaFree(dev_total);

    // sort filter with srcIPlen & desIPlen
    sort_start = cpuSecond();
    bubble_sort(db, db_size);
    sort_time = cpuSecond() - sort_start;
    cout << "sort_time: " << sort_time << " usec" << endl;

    // prepare device variable
    cudaMalloc((void**)&dev_filterSet, db_size * sizeof(filter));
    cudaCheckErrors("cudaMalloc1 fail");
    cudaMalloc((void**)&dev_total, db_size * sizeof(dev_var));
    cudaCheckErrors("cudaMalloc2 fail");   
    cudaMemset(dev_total, 0, db_size*sizeof(dev_total));

    cpy_dev = (dev_var*)malloc(db_size*sizeof(dev_var));
    // call kernel function
    g1conflict_start = cpuSecond();
    // copy to device
    cudaMemcpy(dev_filterSet, db.filterSet_, db_size * sizeof(filter), cudaMemcpyHostToDevice);
    cudaCheckErrors("cudaMemcpy1 fail");
    gpu_conflict_detect_1<<<grid, block>>>(dev_filterSet, db_size, dev_total);
    cudaDeviceSynchronize();
    
    // copy device result ot host
    cudaMemcpy(cpy_dev, dev_total, db_size * sizeof(dev_var), cudaMemcpyDeviceToHost);
    sum = 0;
    for(int tmp = 0; tmp < db_size; tmp++)
    {
        if(cpy_dev[tmp].set == 1)
	{
	    //printf("threadIdx:%d\t", tmp);
	    sum += cpy_dev[tmp].result;   
	}	
	//printf("srtIPlen:  %d\n", db.filterSet_[tmp].srcIPLen_);
        //printf("destIPlen: %d\n", db.filterSet_[tmp].destIPLen_);
        //system("read var1");
    }
    g1conflict_time = cpuSecond() - g1conflict_start;
    cout << "m1_detection_time: " << g1conflict_time << " usec" << endl;
    printf("m1 conflict detection: %d\n", sum);
    free(cpy_dev);
    cudaFree(dev_filterSet);
    cudaFree(dev_total);

    // prepare device variable
    cudaMalloc((void**)&dev_filterSet, db_size * sizeof(filter));
    cudaCheckErrors("cudaMalloc1 fail");
    cudaMalloc((void**)&dev_total, db_size * sizeof(dev_var));
    cudaCheckErrors("cudaMalloc2 fail");
    cudaMemset(dev_total, 0, db_size*sizeof(dev_total));
 
    cpy_dev = (dev_var*)malloc(db_size*sizeof(dev_var));
      
    // call kernel function method 2
    g2conflict_start = cpuSecond();
    // copy to device
    cudaMemcpy(dev_filterSet, db.filterSet_, db_size * sizeof(filter), cudaMemcpyHostToDevice);
    cudaCheckErrors("cudaMemcpy1 fail");
    gpu_conflict_detect_2<<<grid, block>>>(dev_filterSet, db_size, dev_total);
    cudaDeviceSynchronize();
    
    // copy device result ot host
    cudaMemcpy(cpy_dev, dev_total, db_size * sizeof(dev_var), cudaMemcpyDeviceToHost);
    sum = 0;
    for(int tmp = 0; tmp < db_size; tmp++)
    {
        if(cpy_dev[tmp].set == 1)
            sum += cpy_dev[tmp].result;
        //printf("srtIPlen:  %d\n", db.filterSet_[tmp].srcIPLen_);
        //printf("destIPlen: %d\n", db.filterSet_[tmp].destIPLen_);
        //system("read var1");
    }
    g2conflict_time = cpuSecond() - g2conflict_start;
    cout << "m2_detection_time: " << g2conflict_time << " usec" << endl;
    printf("m2 conflict detection: %d\n", sum);
    free(cpy_dev);
    cudaFree(dev_filterSet);
    cudaFree(dev_total);

// call host conflict function
    hconflict_start = cpuSecond();
    host_conflict_detect(db.filterSet_, db_size, total);
    hconflict_time = cpuSecond() - hconflict_start;
    cout << "host_detection_time: " << hconflict_time << " usec" << endl;
    printf("Host conflict detection: %d\n", total);
    
/*
fout.open("0714_512dbTCDA.txt", ios::app);   
fout<< hconflict_time<< "\t";
fout<< g1conflict_time<< "\t";
fout<< g2conflict_time<< "\n";
fout.close();
*/
    //free(cpy_dev);
    //cudaFree(dev_filterSet);
    //cudaFree(dev_total);
}


