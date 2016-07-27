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

__inline__ __device__ int warpReduceSum(int val)
{
    for(int offset = warpSize/2; offset > 0; offset /= 2)
    {
	val += __shfl_down(val, offset);
        //printf("%d\t", val);
    }
    return val;
}

__inline__ __device__ int blockReduceSum(int val)
{
    static __shared__ int shared[32];
    int lane = threadIdx.x % warpSize;
    int wid = threadIdx.x / warpSize; 
    
    val = warpReduceSum(val); // warp partial sum
    
    if(lane == 0) shared[wid] = val; // store each warp partial sum
    
    __syncthreads();

    val = (threadIdx.x < blockDim.x / warpSize) ? shared[lane] : 0;
    if(wid==0) val = warpReduceSum(val);
    
    return val;
}

__inline__ __host__ __device__ UINT64 genPrefix(UINT64 prefix, unsigned char len)
{
    register UINT64 result;
    register UINT mask_m;
    
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

// distribute filters before sorting, to thread by order. (approach 0)
__global__ void gpu_conflict_detect_0(filter * const __restrict__ filterSet, int rule_size, int* d_total)
{
    //printf("blockIdx.x: %d, threadIdx.x: %d\n", blockIdx.x, threadIdx.x);
    int threadID = blockDim.x * blockIdx.x + threadIdx.x;
    int threadSize = gridDim.x * blockDim.x;
    int base = rule_size/threadSize+1;
    int start = threadID*base;
    int total = 0;

    //printf("threadSize:%d,%d\n", threadSize, rule_size/threadSize + 1);
    //for(int i=threadID; i<rule_size; i+=threadSize){  
    if(threadID > rule_size) return;
    for (int i=start; i<(start+base) && i<rule_size ; i++) {
	//devTotal[threadID].set = 1;    
        for (int j= 0; j<rule_size; j++) {
	    //if(j>=i) return;
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
                                        //devTotal[threadID].result++;
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
                                    //devTotal++;
                                    //devTotal[threadID].result++;
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
                                        //devTotal++;
                                        //devTotal[threadID].result++;
					total++;
                                }
                            }
                        }
                    }
                }
            }
        }

    }
    total = blockReduceSum(total);

    if(threadIdx.x == 0)
	d_total[blockIdx.x] = total;

}

// base on new, distribute filters to thread by order. (approach 1)
__global__ void gpu_conflict_detect_1(filter * const __restrict__ filterSet, int rule_size, int* d_total)
{
    //printf("blockIdx.x: %d, threadIdx.x: %d\n", blockIdx.x, threadIdx.x);
    int threadID = blockDim.x * blockIdx.x + threadIdx.x;
    int threadSize = gridDim.x * blockDim.x;
    int base = rule_size/threadSize+1;
    int start = threadID*base;
    int total = 0;
   
    //for(int i=threadID; i<rule_size; i+=threadSize){  
    if(threadID > rule_size) return;
    for (int i=start; i<(start+base) && i<rule_size ; i++) {
	//devTotal[threadID].set = 1;      
        for (int j= 0; j<i; j++) {
	    //if(j>=i) break;
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
                                        //devTotal[threadID].result++;
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
                                    //devTotal++;
                                    //devTotal[threadID].result++;
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
                                        //devTotal++;
                                        //devTotal[threadID].result++;
					total++;
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    total = blockReduceSum(total);
    if(threadIdx.x == 0)
	d_total[blockIdx.x] = total;
}

// base on new, distribute filters to thread by work. (approach 2)
__global__ void gpu_conflict_detect_2(filter * const __restrict__ filterSet, int rule_size, int* d_total)
{
    //printf("blockIdx.x: %d, threadIdx.x: %d\n", blockIdx.x, threadIdx.x);
    int start = threadIdx.x * gridDim.x + blockIdx.x;
    int threadSize = gridDim.x * blockDim.x;
    int total = 0;
    int i, j;
    //printf("threadSize:%d,%d\n", threadSize, rule_size/threadSize + 1);
    if(start > rule_size) return;
    for (i=start; i<rule_size; i+=threadSize) {
    //for(int i=threadID; i<rule_size; i+=threadSize){  
        //devTotal[threadIndex].set = 1;
        for (j= 0; j<i; j++) {
	    //if(j>=i) break;
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
                                        //devTotal[threadIndex].result++;
                                        //shm[threadIndex]++;
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
                                    //devTotal[threadIndex].result++;
                                    //shm[threadIndex]++;
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
                                        //devTotal[threadIndex].result++;
                                        //shm[threadIndex]++;
					total++;
					
					
                                }
                            }
                        }
			
                    }
                }
            }
        }
    }
    //printf("%d\t", total);
    total = blockReduceSum(total);
    
    if(threadIdx.x == 0)
	d_total[blockIdx.x] = total;

}

/*
__global__ void gpu_conflict_detect_2(const filter * __restrict__ filterSet, int rule_size, dev_var* devTotal)
{
    //printf("blockIdx.x: %d, threadIdx.x: %d\n", blockIdx.x, threadIdx.x);
    int threadID = threadIdx.x * gridDim.x + blockIdx.x;
    int threadSize = gridDim.x * blockDim.x;
    int total = 0;
    
    //devTotal[threadID].set = 1;
    //printf("threadSize:%d,%d\n", threadSize, rule_size/threadSize + 1);
    for (int i=threadID; i<rule_size; i+=threadSize) {
    //for(int i=threadID; i<rule_size; i+=threadSize){  
        
        //devTotal[i].result = 0;
        for (int j= 0; j<rule_size ; j++) {
            if( __ldg(&filterSet[i].srcIPLen_) > __ldg(&filterSet[j].srcIPLen_) ){
                if( genPrefix(__ldg(&filterSet[i].srcIP_), __ldg(&filterSet[j].srcIPLen_)) == __ldg(&filterSet[j].srcIP_) ){
                    if(( (!__ldg(&filterSet[i].pro_num_) || !__ldg(&filterSet[j].pro_num_)) || (__ldg(&filterSet[i].pro_num_) == __ldg(&filterSet[j].pro_num_) )) ) {
                        if (
                            (
                             
                             ((__ldg(&filterSet[i].destPortleft_) <= __ldg(&filterSet[j].destPortright_)) && (__ldg(&filterSet[i].destPortleft_) >= __ldg(&filterSet[j].destPortleft_)))   ||
                             ((__ldg(&filterSet[i].destPortright_) >= __ldg(&filterSet[j].destPortleft_)) && (__ldg(&filterSet[i].destPortright_) <= __ldg(&filterSet[j].destPortright_))) ||
                             ((__ldg(&filterSet[i].destPortright_) >= __ldg(&filterSet[j].destPortright_)) && (__ldg(&filterSet[i].destPortleft_) <= __ldg(&filterSet[j].destPortleft_)))
                             
                             )
                            &&
                            (
                             ((__ldg(&filterSet[i].srcPortleft_) <= __ldg(&filterSet[j].srcPortright_)) && (__ldg(&filterSet[i].srcPortleft_) >= __ldg(&filterSet[j].srcPortleft_)))   ||
                             ((__ldg(&filterSet[i].srcPortright_) >= __ldg(&filterSet[j].srcPortleft_)) && (__ldg(&filterSet[i].srcPortright_) <= __ldg(&filterSet[j].srcPortright_))) ||
                             ((__ldg(&filterSet[i].srcPortright_) >= __ldg(&filterSet[j].srcPortright_)) && (__ldg(&filterSet[i].srcPortleft_) <= __ldg(&filterSet[j].srcPortleft_)))
                             
                             )
                            )
                        {
                            
                            
                            if (__ldg(&filterSet[i].destIPLen_) > __ldg(&filterSet[j].destIPLen_) ){
                                if ( genPrefix(__ldg(&filterSet[i].destIP_), __ldg(&filterSet[j].destIPLen_)) == __ldg(&filterSet[j].destIP_)){
                                    //counter1++;
                                    
                                    if(
                                       ( (__ldg(&filterSet[i].destPortleft_) <= __ldg(&filterSet[j].destPortleft_)) && (__ldg(&filterSet[i].destPortright_) >= __ldg(&filterSet[j].destPortright_)) ) &&
                                       ( (__ldg(&filterSet[i].srcPortleft_)  <= __ldg(&filterSet[j].srcPortleft_))  && (__ldg(&filterSet[i].srcPortright_)  >= __ldg(&filterSet[j].srcPortright_)) ) &&
                                       ( (__ldg(&filterSet[i].pro_num_) == __ldg(&filterSet[j].pro_num_)) || (__ldg(&filterSet[i].pro_num_) == 0) )
                                       ){}
                                    else
                                        //devTotal++;
                                        //devTotal[threadID].result++;
					total++;
					
                                }
                            }
                            
                            if (__ldg(&filterSet[i].destIPLen_) < __ldg(&filterSet[j].destIPLen_)){
                                if ( genPrefix(__ldg(&filterSet[j].destIP_), __ldg(&filterSet[i].destIPLen_)) == __ldg(&filterSet[i].destIP_)){
                                    //counter2++;
                                    
                                     //if(
                                     //( (rule.__ldg(&filterSet_[i].destPortleft_) <= rule.__ldg(&filterSet_[j].destPortleft_)) && (rule.__ldg(&filterSet_[i].destPortright_) >= rule.__ldg(&filterSet_[j].destPortright_)) ) &&
                                     //( (rule.__ldg(&filterSet_[i].srcPortleft_)  <= rule.__ldg(&filterSet_[j].srcPortleft_))  && (rule.__ldg(&filterSet_[i].srcPortright_)  >= rule.__ldg(&filterSet_[j].srcPortright_)) ) &&
                                     //( (rule.__ldg(&filterSet_[i].pro_num_) == rule.__ldg(&filterSet_[j].pro_num_)) || (rule.__ldg(&filterSet_[i].pro_num_) == 0) )
                                     //){}
                                     //else
                                     
                                    //devTotal++;
                                    //devTotal[threadID].result++;
				    total++;
				    
                                }
                            }
                            
                            if (__ldg(&filterSet[i].destIPLen_) == __ldg(&filterSet[j].destIPLen_)){
                                if ( __ldg(&filterSet[i].destIP_) == __ldg(&filterSet[j].destIP_)){
                                    //counter3++;
                                    
                                    if(
                                       ( (__ldg(&filterSet[i].destPortleft_) <= __ldg(&filterSet[j].destPortleft_)) && (__ldg(&filterSet[i].destPortright_) >= __ldg(&filterSet[j].destPortright_)) ) &&
                                       ( (__ldg(&filterSet[i].srcPortleft_)  <= __ldg(&filterSet[j].srcPortleft_))  && (__ldg(&filterSet[i].srcPortright_)  >= __ldg(&filterSet[j].srcPortright_)) ) &&
                                       ( (__ldg(&filterSet[i].pro_num_) == __ldg(&filterSet[j].pro_num_)) || (__ldg(&filterSet[i].pro_num_) == 0) )
                                       ){}
                                    else
                                        //devTotal++;
                                        //devTotal[threadID].result++;
					total++;
					
					
                                }
                            }
                        }
			
                    }
                }
            }
        }
    }
    //devTotal[threadID].set = 1;
    //devTotal[threadID].result += total;
    //__syncthreads();
    //devTotal[threadIdx.x].set = 1;
    //devTotal[threadIdx.x].result += shm[threadIdx.x];
    //printf("%d\t", devTotal[threadIdx.x].result);
    
}
*/

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
    int total = 0;// for host computaion result
    int *d_total;// store device result
    int *h_total;// store host result
    int sum = 0;

    // CUDA variable
    filter* dev_filterSet;	// store filter in device
   
    //insert filters
    if (db.loadFilters(argv[1]) == -1)
	err_quit("Error: unable to open the filter database.");

    db_size = db.size();	// get database size
    printf("number of rules: %d\n", db_size);
    int block = 512;
    int grid = 4;
    //int grid =( db_size + block - 1)/block;
    //if(grid == 0)
	//grid = 1;
    // set to 0 for copying to device variable

    //cudaDeviceSetCacheConfig(cudaFuncCachePreferShared);
    //cudaSetDevice(0);

// ################ Prepare call M0 funtion ###################
    // prepare device variable
    cudaMalloc((void**)&dev_filterSet, db_size * sizeof(filter));
    cudaCheckErrors("cudaMalloc1 fail");
    cudaMalloc((void**)&d_total, grid*sizeof(int));
    cudaCheckErrors("cudaMalloc2 fail");   
    cudaMemset(d_total, 0, grid*sizeof(int));

    h_total = (int*)malloc(grid*sizeof(int));
    // call kernel function
    g0conflict_start = cpuSecond();
    // copy to device
    cudaMemcpy(dev_filterSet, db.filterSet_, db_size * sizeof(filter), cudaMemcpyHostToDevice);
    cudaCheckErrors("cudaMemcpy1 fail");
    gpu_conflict_detect_0<<<grid, block>>>(dev_filterSet, db_size, d_total);
    cudaDeviceSynchronize();
    
    // copy device result ot host
    cudaMemcpy(h_total, d_total, grid*sizeof(int), cudaMemcpyDeviceToHost);
    sum = 0;
    for(int tmp = 0; tmp < grid; tmp++)
	sum += h_total[tmp];
    
    g0conflict_time = cpuSecond() - g0conflict_start;
    cout << "m0_detection_time: " << g0conflict_time << " usec" << endl;
    printf("m0 conflict detection: %d\n", sum);
    free(h_total);
    cudaFree(dev_filterSet);
    cudaFree(d_total);


    // sort filter with srcIPlen & desIPlen
    sort_start = cpuSecond();
    bubble_sort(db, db_size);
    sort_time = cpuSecond() - sort_start;
    //cout << "sort_time: " << sort_time << " usec" << endl;


// ################ Prepare call M1 funtion ###################
    // prepare device variable
    cudaMalloc((void**)&dev_filterSet, db_size * sizeof(filter));
    cudaCheckErrors("cudaMalloc1 fail");
    cudaMalloc((void**)&d_total, grid*sizeof(int));
    cudaCheckErrors("cudaMalloc2 fail");
    cudaMemset(d_total, 0, grid*sizeof(int));
    h_total = (int*)malloc(grid*sizeof(int));
    // call kernel function
    g1conflict_start = cpuSecond();
    // copy to device
    cudaMemcpy(dev_filterSet, db.filterSet_, db_size * sizeof(filter), cudaMemcpyHostToDevice);
    cudaCheckErrors("cudaMemcpy1 fail");
    gpu_conflict_detect_1<<<grid, block>>>(dev_filterSet, db_size, d_total);
    cudaDeviceSynchronize();
    
    // copy device result ot host
    cudaMemcpy(h_total, d_total, grid*sizeof(int), cudaMemcpyDeviceToHost);
    sum = 0;
    for(int tmp = 0; tmp < grid; tmp++)
	sum += h_total[tmp];
     
    g1conflict_time = cpuSecond() - g1conflict_start;
    cout << "m1_detection_time: " << g1conflict_time << " usec" << endl;
    printf("m1 conflict detection: %d\n", sum);
    free(h_total);
    cudaFree(dev_filterSet);
    cudaFree(d_total);



// ################ Prepare call M2 funtion ###################
    // prepare device variable
    cudaMalloc((void**)&dev_filterSet, db_size * sizeof(filter));
    cudaCheckErrors("cudaMalloc1 fail");
    cudaMalloc((void**)&d_total, grid*sizeof(int));
    cudaCheckErrors("cudaMalloc2 fail");
    cudaMemset(d_total, 0, grid*sizeof(int));
    h_total = (int*)malloc(grid*sizeof(int));
      
    // call kernel function method 2
    g2conflict_start = cpuSecond();
    // copy to device
    cudaMemcpy(dev_filterSet, db.filterSet_, db_size * sizeof(filter), cudaMemcpyHostToDevice);
    cudaCheckErrors("cudaMemcpy1 fail");
    gpu_conflict_detect_2<<<grid, block>>>(dev_filterSet, db_size, d_total);
    cudaDeviceSynchronize();
    
    // copy device result ot host
    cudaMemcpy(h_total, d_total, grid*sizeof(int), cudaMemcpyDeviceToHost);
    sum = 0;
    for(int tmp = 0; tmp < grid; tmp++)
	sum += h_total[tmp];
    
    g2conflict_time = cpuSecond() - g2conflict_start;
    cout << "m2_detection_time: " << g2conflict_time << " usec" << endl;
    printf("m2 conflict detection: %d\n", sum);
    free(h_total);
    cudaFree(dev_filterSet);
    cudaFree(d_total);


    cudaDeviceReset();
/*
// ################ Prepare call host funtion ###################
    hconflict_start = cpuSecond();
    host_conflict_detect(db.filterSet_, db_size, total);
    hconflict_time = cpuSecond() - hconflict_start;
    cout.setf(ios::fixed);
    cout << std::noshowpoint << "host_detection_time: " << hconflict_time << " usec" << endl;
    printf("Host conflict detection: %d\n", total);
*/    
/*
fout.open("0726_10248M1.txt", ios::app);   
//fout<< hconflict_time<< "\t";
fout<< g1conflict_time<< "\n";
//fout<< g1conflict_time<< "\t";
//fout<< g2conflict_time<< "\n";
fout.close();
*/
    //free(cpy_dev);
    //cudaFree(dev_filterSet);
    //cudaFree(dev_total);
}


