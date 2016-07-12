#include	<stdio.h>
#include	<string.h>
#include	"err_handler.h"
#include	"filter_db.h"
#include	"util.h"
#include    <sys/time.h>
#include    <fstream>
#include    <iostream>

//#include    <cuda_runtime.h>

#define		BUF_SZ   256
using namespace std;
clsFilterDB   db;
UINT mask_m;
inline UINT64 genPrefix(UINT64 prefix, unsigned char len)
{
  UINT64 result;
  
  if (len == 0)
		return(0);
	else	{
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

/*
void gpu_conflict_detect(clsFilterDB rule, int rule_size, int &total)
{
    int j = blockIdx.x * blockDim.x + threadIdx.x;
    int m = gridDim.x * blockDim.x;
    for (int i=0; i<rule_size; i++)	{
        for (int j= 0; j<rule_size ; j++) {
            if( (rule.filterSet_[i].srcIPLen_ > rule.filterSet_[j].srcIPLen_ ) && ( genPrefix(rule.filterSet_[i].srcIP_, rule.filterSet_[j].srcIPLen_) == rule.filterSet_[j].srcIP_ ) ){
                if(( (!rule.filterSet_[i].pro_num_ || !rule.filterSet_[j].pro_num_) || (rule.filterSet_[i].pro_num_ == rule.filterSet_[j].pro_num_ )) ) {
                    if (
                        (
                         
                         ((rule.filterSet_[i].destPortleft_ <= rule.filterSet_[j].destPortright_) && (rule.filterSet_[i].destPortleft_ >= rule.filterSet_[j].destPortleft_))   ||
                         ((rule.filterSet_[i].destPortright_ >= rule.filterSet_[j].destPortleft_) && (rule.filterSet_[i].destPortright_ <= rule.filterSet_[j].destPortright_)) ||
                         ((rule.filterSet_[i].destPortright_ >= rule.filterSet_[j].destPortright_) && (rule.filterSet_[i].destPortleft_ <= rule.filterSet_[j].destPortleft_))
                         
                         )
                        &&
                        (
                         ((rule.filterSet_[i].srcPortleft_ <= rule.filterSet_[j].srcPortright_) && (rule.filterSet_[i].srcPortleft_ >= rule.filterSet_[j].srcPortleft_))   ||
                         ((rule.filterSet_[i].srcPortright_ >= rule.filterSet_[j].srcPortleft_) && (rule.filterSet_[i].srcPortright_ <= rule.filterSet_[j].srcPortright_)) ||
                         ((rule.filterSet_[i].srcPortright_ >= rule.filterSet_[j].srcPortright_) && (rule.filterSet_[i].srcPortleft_ <= rule.filterSet_[j].srcPortleft_))
                         
                         )
                        )
                    {
                        
                        
                        if (rule.filterSet_[i].destIPLen_ > rule.filterSet_[j].destIPLen_ ){
                            if ( genPrefix(rule.filterSet_[i].destIP_, rule.filterSet_[j].destIPLen_) == rule.filterSet_[j].destIP_){
                                //counter1++;
                                
                                if(
                                   ( (rule.filterSet_[i].destPortleft_ <= rule.filterSet_[j].destPortleft_) && (rule.filterSet_[i].destPortright_ >= rule.filterSet_[j].destPortright_) ) &&
                                   ( (rule.filterSet_[i].srcPortleft_  <= rule.filterSet_[j].srcPortleft_)  && (rule.filterSet_[i].srcPortright_  >= rule.filterSet_[j].srcPortright_) ) &&
                                   ( (rule.filterSet_[i].pro_num_ == rule.filterSet_[j].pro_num_) || (rule.filterSet_[i].pro_num_ == 0) )
                                   ){}
                                else
                                    total++;
                            }
                        }
                        
                        if (rule.filterSet_[i].destIPLen_ < rule.filterSet_[j].destIPLen_){
                            if ( genPrefix(rule.filterSet_[j].destIP_, rule.filterSet_[i].destIPLen_) == rule.filterSet_[i].destIP_){
                                //counter2++;
 
                                 //if(
                                 //( (rule.filterSet_[i].destPortleft_ <= rule.filterSet_[j].destPortleft_) && (rule.filterSet_[i].destPortright_ >= rule.filterSet_[j].destPortright_) ) &&
                                 //( (rule.filterSet_[i].srcPortleft_  <= rule.filterSet_[j].srcPortleft_)  && (rule.filterSet_[i].srcPortright_  >= rule.filterSet_[j].srcPortright_) ) &&
                                 //( (rule.filterSet_[i].pro_num_ == rule.filterSet_[j].pro_num_) || (rule.filterSet_[i].pro_num_ == 0) )
                                 //){}
                                 //else
 

                                total++;
                            }
                        }
                        
                        if (rule.filterSet_[i].destIPLen_ == rule.filterSet_[j].destIPLen_){
                            if ( rule.filterSet_[i].destIP_ == rule.filterSet_[j].destIP_){
                                //counter3++;
                                
                                if(
                                   ( (rule.filterSet_[i].destPortleft_ <= rule.filterSet_[j].destPortleft_) && (rule.filterSet_[i].destPortright_ >= rule.filterSet_[j].destPortright_) ) &&
                                   ( (rule.filterSet_[i].srcPortleft_  <= rule.filterSet_[j].srcPortleft_)  && (rule.filterSet_[i].srcPortright_  >= rule.filterSet_[j].srcPortright_) ) &&
                                   ( (rule.filterSet_[i].pro_num_ == rule.filterSet_[j].pro_num_) || (rule.filterSet_[i].pro_num_ == 0) )
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
*/

void host_conflict_detect(clsFilterDB rule, int rule_size, int &total)
{
    for (int i=0; i<rule_size; i++)	{
        for (int j= 0; j<rule_size ; j++) {
            if( (rule.filterSet_[i].srcIPLen_ > rule.filterSet_[j].srcIPLen_ ) && ( genPrefix(rule.filterSet_[i].srcIP_, rule.filterSet_[j].srcIPLen_) == rule.filterSet_[j].srcIP_ ) ){
                if(( (!rule.filterSet_[i].pro_num_ || !rule.filterSet_[j].pro_num_) || (rule.filterSet_[i].pro_num_ == rule.filterSet_[j].pro_num_ )) ) {
                    if (
                        (
                         
                         ((rule.filterSet_[i].destPortleft_ <= rule.filterSet_[j].destPortright_) && (rule.filterSet_[i].destPortleft_ >= rule.filterSet_[j].destPortleft_))   ||
                         ((rule.filterSet_[i].destPortright_ >= rule.filterSet_[j].destPortleft_) && (rule.filterSet_[i].destPortright_ <= rule.filterSet_[j].destPortright_)) ||
                         ((rule.filterSet_[i].destPortright_ >= rule.filterSet_[j].destPortright_) && (rule.filterSet_[i].destPortleft_ <= rule.filterSet_[j].destPortleft_))
                         
                        )
                        &&
                        (
                         ((rule.filterSet_[i].srcPortleft_ <= rule.filterSet_[j].srcPortright_) && (rule.filterSet_[i].srcPortleft_ >= rule.filterSet_[j].srcPortleft_))   ||
                         ((rule.filterSet_[i].srcPortright_ >= rule.filterSet_[j].srcPortleft_) && (rule.filterSet_[i].srcPortright_ <= rule.filterSet_[j].srcPortright_)) ||
                         ((rule.filterSet_[i].srcPortright_ >= rule.filterSet_[j].srcPortright_) && (rule.filterSet_[i].srcPortleft_ <= rule.filterSet_[j].srcPortleft_))
                         
                         )
                        )
                    {
                        
                        
                        if (rule.filterSet_[i].destIPLen_ > rule.filterSet_[j].destIPLen_ ){
                            if ( genPrefix(rule.filterSet_[i].destIP_, rule.filterSet_[j].destIPLen_) == rule.filterSet_[j].destIP_){
                                //counter1++;
                                
                                if(
                                   ( (rule.filterSet_[i].destPortleft_ <= rule.filterSet_[j].destPortleft_) && (rule.filterSet_[i].destPortright_ >= rule.filterSet_[j].destPortright_) ) &&
                                   ( (rule.filterSet_[i].srcPortleft_  <= rule.filterSet_[j].srcPortleft_)  && (rule.filterSet_[i].srcPortright_  >= rule.filterSet_[j].srcPortright_) ) &&
                                   ( (rule.filterSet_[i].pro_num_ == rule.filterSet_[j].pro_num_) || (rule.filterSet_[i].pro_num_ == 0) )
                                   ){}
                                else
                                    total++;
                            }
                        }
                        
                        if (rule.filterSet_[i].destIPLen_ < rule.filterSet_[j].destIPLen_){
                            if ( genPrefix(rule.filterSet_[j].destIP_, rule.filterSet_[i].destIPLen_) == rule.filterSet_[i].destIP_){
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
                        
                        if (rule.filterSet_[i].destIPLen_ == rule.filterSet_[j].destIPLen_){
                            if ( rule.filterSet_[i].destIP_ == rule.filterSet_[j].destIP_){
                                //counter3++;
                                
                                if(
                                   ( (rule.filterSet_[i].destPortleft_ <= rule.filterSet_[j].destPortleft_) && (rule.filterSet_[i].destPortright_ >= rule.filterSet_[j].destPortright_) ) &&
                                   ( (rule.filterSet_[i].srcPortleft_  <= rule.filterSet_[j].srcPortleft_)  && (rule.filterSet_[i].srcPortright_  >= rule.filterSet_[j].srcPortright_) ) &&
                                   ( (rule.filterSet_[i].pro_num_ == rule.filterSet_[j].pro_num_) || (rule.filterSet_[i].pro_num_ == 0) )
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

    FILE          *fp;
    char          buf[BUF_SZ];
    ofstream fout;
    struct timeval tv, tv2, tv3;
    double sort_start, hconflict_start, gpu_conflict_start;
    double sort_time, hconflict_time, gconflict_time;
    //unsigned long long start_utime, mid_utime, end_utime;

	//insert filters
	if (db.loadFilters(argv[2]) == -1)
			err_quit("Error: unable to open the filter database.");

    //test = new CD;
    
    sort_start = cpuSecond();
    bubble_sort(db, db.size());
    sort_time = cpuSecond() - sort_start;
    cout << "sort_time: " << sort_time << " usec" << endl;
    
    for(int tmp = 0; tmp < db.size(); tmp++)
    {
        printf("srtIPlen:  %d\n", db.filterSet_[tmp].srcIPLen_);
        printf("destIPlen: %d\n", db.filterSet_[tmp].destIPLen_);
        //system("read var1");
    }
    int counter1 = 0;
    int counter2 = 0;
    int counter3 = 0;
    int counter4 = 0;
    int total = 0;
    
    
    hconflict_start = cpuSecond();
    host_conflict_detect(db, db.size(), total);
    hconflict_time = cpuSecond() - hconflict_start;
    cout << "host_detection_time: " << hconflict_time << " usec" << endl;
    
    //counter4 = counter1 + counter2 + counter3;
    //printf("%d, %d\n", total, counter4);
    printf("%d\n", total);
    //printf("讀進檔案數%d\n",db.size());
}


