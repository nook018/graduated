#include	"CD.h"
#include  "filter_db.h"
#include	<stdio.h>
#include	"util.h"

#define	DEBUG_S 0
clsFilterDB newdb;
int RCount = 0;
int Conflictnum = 0;
int read =0;
int link =0;
UINT64  TraceFilter_srcIP, TraceFilter_dstIP, mask; 
void CD::addFilter(UINT64 srcPrefix, UCHAR srcLen, UINT64 dstPrefix, UCHAR dstLen, filter *SourcePointer)
{
  filter tmpFilter;
  tmpFilter.srcIP_     = genPrefix(srcPrefix, srcLen); 
  tmpFilter.srcIPLen_  = srcLen;
  tmpFilter.destIP_    = genPrefix(dstPrefix, dstLen);
  tmpFilter.destIPLen_ = dstLen;
  tmpFilter.Pointer    = SourcePointer;  
  filter_[srcLen][dstLen][tmpFilter] = SourcePointer;
  Rfilter_[srcLen][dstLen][tmpFilter] = SourcePointer;
}

void CD::genNEWMarkers(void)
{
  register int i, j, k;
  map<filter, filter *, ltFilter>::iterator it;   
  filter tmpFilter;

  for (i=0; i<33; i++) flagX_[i] = flagY_[i] = 0;

  // set output flag
  for (i=0; i<33; i++)
    for (j=0; j<33; j++) 
      if (Rfilter_[i][j].size()) flagX_[j] = flagY_[i] = 1;
/*
	int total1=0;
  for (i=0; i<33; i++)
    for (j=0; j<33; j++) 
      total1 += Rfilter_[i][j].size();

	printf("偵測前Filter總數:%d\n",total1);
*/
  // generate markers
  for (i=0; i<33 ; i++)	{
    for (j=0; j<33 && flagY_[i]; j++)	{
      for (k=j-1; k>=0; k--) {
        // insert markers and set pointer to real filter array     
        for (it=filter_[i][j].begin(); it!=filter_[i][j].end(); it++)
				{      
		  		tmpFilter.srcIP_     = genPrefix(it->first.srcIP_, i); 
		  		tmpFilter.srcIPLen_  = i;
		  		tmpFilter.destIP_    = genPrefix(it->first.destIP_, k);
		  		tmpFilter.destIPLen_ = k;
		  		tmpFilter.Pointer    = it->second; 
  
					if (filter_[i][k].count(tmpFilter) && (tmpFilter.Pointer->add_marker))	{
					 	if (filter_[i][k][tmpFilter]->marker == false)	{
							if (filter_[i][k][tmpFilter]->Pointer == NULL)	{
								filter_[i][k][tmpFilter]->Pointer = tmpFilter.Pointer;
								tmpFilter.Pointer->add_marker = false;
							}
							else {
								tmpFilter.Pointer->add_marker = false;
								filter *p;
								p = filter_[i][k][tmpFilter];
								while (p->Pointer != NULL)	{
									p = p->Pointer;
								}
					 	 		p->Pointer = tmpFilter.Pointer;
					 		}
						}
						else if(filter_[i][k][tmpFilter]->marker == true)	{
					 		if (filter_[i][k][tmpFilter]->Pointer == NULL){
								tmpFilter.Pointer->add_marker = false;
								filter_[i][k][tmpFilter]->Pointer = tmpFilter.Pointer;
							}
							else {
								tmpFilter.Pointer->add_marker = false;
								filter *p;
								p = filter_[i][k][tmpFilter];
								while (p->Pointer != NULL) {
									p = p->Pointer;  
								} 
								p->Pointer = tmpFilter.Pointer;
							}                 
						}
  				}

   				else if (!filter_[i][k].count(tmpFilter)){
    				filter_[i][k][tmpFilter] = it->second; 
    				filter_[i][k][tmpFilter]->marker = true;
        	}		
      	}  //loop filter_[i][j]     
			} //loop K
		}
	}
/*	
	int total2=0;
		for (i=0; i<33; i++)
		  for (j=0; j<33; j++) 
		       total2 += filter_[i][j].size();

	printf("偵測前Marker總數:%d\n",total2-total1);
*/	
}

void CD::TupleDetect(void)
{
  register int i, j, k;
  map<filter, filter *, ltFilter>::iterator is;  
  filter tmpFilter; 	
  for (i=1; i<33; i++){ 	
		for (j=0; flagY_[i] && j<32; j++){   //衝突偵測最右邊一列不需要作衝突偵測,因為沒有"右上角"
			for (is=Rfilter_[i][j].begin(); is!=Rfilter_[i][j].end(); is++){
        //tmpFilter.srcIP_     = is->first.srcIP_; 
	      tmpFilter.destIP_    = is->first.destIP_; 
				//printf("[%d]srcIP:%llx\n",i,tmpFilter.srcIP_);
				//printf("[%d]destIP:%llx\n\n",j,tmpFilter.destIP_); 
				//read++; //判斷有多少Filter讀進
        //TraceFilter_srcIP    = tmpFilter.srcIP_ ;
        TraceFilter_dstIP    = tmpFilter.destIP_;    
//key+0    
				filter *p;
				for (k=0; k<i; k++){   	  
          tmpFilter.srcIP_    = genPrefix(is->first.srcIP_, k);
          tmpFilter.destIP_   = TraceFilter_dstIP;  //這裡轉換要注意，少做一次genPrefix()較省時間
          if (filter_[k][j+1].count(tmpFilter)){ 
						p = filter_[k][j+1][tmpFilter];                
            Conflictnum++;  //SetResloveFilter(TraceFilter_srcIP, i, tmpFilter.destIP_, j+1);
						while (p->Pointer != NULL){
              //link++;
              p = p->Pointer;                        
              if (genPrefix(p->destIP_, j+1) == tmpFilter.destIP_){   //相同prefix才作以下判斷！
                Conflictnum++; //SetResloveFilter(TraceFilter_srcIP, i, p->destIP_, p->destIPLen_); 
              }
						}  
					}
//key+1     
					// 32-bit version
					mask = 0x00000001 << (31-j);					
					
					// 64-bit version					
					// mask = 0x0000000000000001LL << (63-j);
					tmpFilter.destIP_ = TraceFilter_dstIP | mask;  
					if (filter_[k][j+1].count(tmpFilter)){                   
						p = filter_[k][j+1][tmpFilter];                
						Conflictnum++;  //SetResloveFilter(TraceFilter_srcIP, i, tmpFilter.destIP_, j+1);   

						while (p->Pointer != NULL){
                                                        //link++;
							p = p->Pointer;
							if (genPrefix(p->destIP_, j+1) == tmpFilter.destIP_){   //相同prefix才作以下判斷！                            
								Conflictnum++;  //SetResloveFilter(TraceFilter_srcIP, i, p->destIP_, p->destIPLen_);
              }
						}
					} 
 				}  //loop k
      }  //loop filter_[i][j]
    }  //loop j
	}  //loop i
}

void CD::SetResloveFilter(UINT64 add_srcPrefix, int i, UINT64 add_dstPrefix, int j)
{
 Conflictnum++;
/*
register int  k;

  map<filter, filter *, ltFilter>::iterator it;  
  filter tmpFilter;

  tmpFilter.srcIP_     = genPrefix(add_srcPrefix, i);
  tmpFilter.srcIPLen_  =// i;
  tmpFilter.destIP_    = genPrefix(add_dstPrefix, j);
  tmpFilter.destIPLen_ = j; 

  if (!filter_[i][j].count(tmpFilter)){

  newdb.addfilterSet_[RCount].srcIP_     = genPrefix(add_srcPrefix, i);
  newdb.addfilterSet_[RCount].srcIPLen_  = i;
  newdb.addfilterSet_[RCount].destIP_    = genPrefix(add_dstPrefix, j);
  newdb.addfilterSet_[RCount].destIPLen_ = j; 
  tmpFilter.srcIP_     = genPrefix(add_srcPrefix, i);
  tmpFilter.srcIPLen_  = i;
  tmpFilter.destIP_    = genPrefix(add_dstPrefix, j);
  tmpFilter.destIPLen_ = j; 
  filter_[i][j][tmpFilter] = &(newdb.addfilterSet_[RCount]);
  filter_[i][j][tmpFilter]->Pointer = NULL;
  filter_[i][j][tmpFilter]->Traceflag = true;  
  filter_[i][j][tmpFilter]->add_marker = true;  

for (k=j-1; k>=0; k--) {
		  tmpFilter.srcIP_     = genPrefix(add_srcPrefix, i); 
		  tmpFilter.srcIPLen_  = i;
		  tmpFilter.destIP_    = genPrefix(add_dstPrefix, k);
		  tmpFilter.destIPLen_ = k;
		  tmpFilter.Pointer    = &(newdb.addfilterSet_[RCount]);  

  if (filter_[i][k].count(tmpFilter) && (tmpFilter.Pointer->add_marker)){ 
    if (filter_[i][k][tmpFilter]->Pointer == NULL){
      filter_[i][k][tmpFilter]->Pointer = tmpFilter.Pointer;
      tmpFilter.Pointer->add_marker = false;
         }
    else{
      tmpFilter.Pointer->add_marker = false;
      filter *p;
      p = filter_[i][k][tmpFilter];
      while (p->Pointer != NULL){
        p = p->Pointer;
           }
	  p->Pointer = tmpFilter.Pointer;
	   }
    }
  else if (marker_[i][k].count(tmpFilter) && (tmpFilter.Pointer->add_marker)){
    if (marker_[i][k][tmpFilter]->Pointer == NULL){
      tmpFilter.Pointer->add_marker = false;
      marker_[i][k][tmpFilter]->Pointer = tmpFilter.Pointer;
       }
    else{
         tmpFilter.Pointer->add_marker = false;
         filter *p;
         p = marker_[i][k][tmpFilter];
      while (p->Pointer != NULL){
        p = p->Pointer;  
           } 
	  p->Pointer = tmpFilter.Pointer;
           }                 
    }  	      
   else if (!marker_[i][k].count(tmpFilter)){
    marker_[i][k][tmpFilter] = tmpFilter.Pointer;  
}		

         }

RCount++;
}
*/

}

void CD::showStat(void)
{
//printf("showStat()\n");
printf("發生Conflict次數:%d\n",Conflictnum);
//printf("讀Filter次數:%d\n",read);
//printf("偵測次數:%d\n",link);
}

inline UINT64 genPrefix(UINT64 prefix, unsigned char len)
{
  UINT64 result;
  
  if (len == 0)
		return(0);
	else	{
		// mask    = 0xFFFFFFFFFFFFFFFFLL << (64-len);
		mask    = 0xFFFFFFFF << (32-len);
  	result  = prefix & mask;
	  return(result);  
	}
}
