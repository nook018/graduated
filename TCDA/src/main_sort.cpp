#include	<stdio.h>
#include	<string.h>
#include	"err_handler.h"
#include	"filter_db.h"
#include	"util.h"
#include    <sys/time.h>
#include    <fstream>
#include    <iostream>
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
                //memcpy(&temp, db.filterSet_[j], sizeof(clsFilterDB));
                //memcpy(db.filterSet_[j], db.filterSet_[j+1], sizeof(clsFilterDB));
                //memcpy(db.filterSet_[j+1], &temp, sizeof(clsFilterDB));
                
            }
            if(item.filterSet_[j].srcIPLen_ > item.filterSet_[j+1].srcIPLen_)
            {
                //printf("1.srcIP: %d\n", item.filterSet_[j].srcIPLen_);
                temp = item.filterSet_[j];
                item.filterSet_[j] = item.filterSet_[j+1];
                item.filterSet_[j+1] = temp;
                //printf("2.srcIP: %d\n", item.filterSet_[j].srcIPLen_);
                //memcpy(&temp, db.filterSet_[j], sizeof(clsFilterDB));
                //memcpy(db.filterSet_[j], db.filterSet_[j+1], sizeof(clsFilterDB));
                //memcpy(db.filterSet_[j+1], &temp, sizeof(clsFilterDB));
                
            }
            
        }
    
}

int main(int argc, char *argv[])
{

    FILE          *fp;
    char          buf[BUF_SZ];
    ofstream fout;
    struct timeval tv, tv2, tv3;
    unsigned long long start_utime, mid_utime, end_utime;

	//insert filters
	if (db.loadFilters(argv[2]) == -1)
			err_quit("Error: unable to open the filter database.");

    //test = new CD;
    bubble_sort(db, db.size());
    
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
	for (int i=0; i<db.size(); i++)	{
        for (int j= 0; j<db.size() ; j++) {
             if( (db.filterSet_[i].srcIPLen_ > db.filterSet_[j].srcIPLen_ ) && ( genPrefix(db.filterSet_[i].srcIP_, db.filterSet_[j].srcIPLen_) == db.filterSet_[j].srcIP_ ) ){
                 if(( (!db.filterSet_[i].pro_num_ || !db.filterSet_[j].pro_num_) || (db.filterSet_[i].pro_num_ == db.filterSet_[j].pro_num_ )) ) {
                     if (
                         (
                          
                          ((db.filterSet_[i].destPortleft_ <= db.filterSet_[j].destPortright_) && (db.filterSet_[i].destPortleft_ >= db.filterSet_[j].destPortleft_))   ||
                          ((db.filterSet_[i].destPortright_ >= db.filterSet_[j].destPortleft_) && (db.filterSet_[i].destPortright_ <= db.filterSet_[j].destPortright_)) ||
                          ((db.filterSet_[i].destPortright_ >= db.filterSet_[j].destPortright_) && (db.filterSet_[i].destPortleft_ <= db.filterSet_[j].destPortleft_))
				
                          )
                         &&
                         (
                          ((db.filterSet_[i].srcPortleft_ <= db.filterSet_[j].srcPortright_) && (db.filterSet_[i].srcPortleft_ >= db.filterSet_[j].srcPortleft_))   ||
                          ((db.filterSet_[i].srcPortright_ >= db.filterSet_[j].srcPortleft_) && (db.filterSet_[i].srcPortright_ <= db.filterSet_[j].srcPortright_)) ||
                          ((db.filterSet_[i].srcPortright_ >= db.filterSet_[j].srcPortright_) && (db.filterSet_[i].srcPortleft_ <= db.filterSet_[j].srcPortleft_))
					  
                          )
                         )
                     {


                         if (db.filterSet_[i].destIPLen_ > db.filterSet_[j].destIPLen_ ){
                             if ( genPrefix(db.filterSet_[i].destIP_, db.filterSet_[j].destIPLen_) == db.filterSet_[j].destIP_){
                                 //counter1++;
                                 
                                 if(
                                    ( (db.filterSet_[i].destPortleft_ <= db.filterSet_[j].destPortleft_) && (db.filterSet_[i].destPortright_ >= db.filterSet_[j].destPortright_) ) &&
                                    ( (db.filterSet_[i].srcPortleft_  <= db.filterSet_[j].srcPortleft_)  && (db.filterSet_[i].srcPortright_  >= db.filterSet_[j].srcPortright_) ) &&
                                    ( (db.filterSet_[i].pro_num_ == db.filterSet_[j].pro_num_) || (db.filterSet_[i].pro_num_ == 0) )
                                    ){}
                                 else
                                     total++;
                             }
                         }

                         if (db.filterSet_[i].destIPLen_ < db.filterSet_[j].destIPLen_){
                             if ( genPrefix(db.filterSet_[j].destIP_, db.filterSet_[i].destIPLen_) == db.filterSet_[i].destIP_){
                                 //counter2++;
/*
        			if(
				( (db.filterSet_[i].destPortleft_ <= db.filterSet_[j].destPortleft_) && (db.filterSet_[i].destPortright_ >= db.filterSet_[j].destPortright_) ) &&
				( (db.filterSet_[i].srcPortleft_  <= db.filterSet_[j].srcPortleft_)  && (db.filterSet_[i].srcPortright_  >= db.filterSet_[j].srcPortright_) ) &&
				( (db.filterSet_[i].pro_num_ == db.filterSet_[j].pro_num_) || (db.filterSet_[i].pro_num_ == 0) ) 
				){}
				else
*/
                                 total++;
                             }
                         }
		
                         if (db.filterSet_[i].destIPLen_ == db.filterSet_[j].destIPLen_){
                             if ( db.filterSet_[i].destIP_ == db.filterSet_[j].destIP_){
                                 //counter3++;

                                 if(
                                    ( (db.filterSet_[i].destPortleft_ <= db.filterSet_[j].destPortleft_) && (db.filterSet_[i].destPortright_ >= db.filterSet_[j].destPortright_) ) &&
                                    ( (db.filterSet_[i].srcPortleft_  <= db.filterSet_[j].srcPortleft_)  && (db.filterSet_[i].srcPortright_  >= db.filterSet_[j].srcPortright_) ) &&
                                    ( (db.filterSet_[i].pro_num_ == db.filterSet_[j].pro_num_) || (db.filterSet_[i].pro_num_ == 0) )
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
    counter4 = counter1 + counter2 + counter3;
    //printf("%d, %d\n", total, counter4);
    printf("%d\n", total);
    //printf("讀進檔案數%d\n",db.size());
}


