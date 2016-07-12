#include	"CD.h"
#include  "filter_db.h"
#include	<stdio.h>
#include	"util.h"
#include  "TableC.cpp"

#define	DEBUG_S 0
clsFilterDB newdb;
int RCount = 0;
int Conflictnum = 0;
int reada =0;
int link =0;
int exact=0, compare=0; //2012/07/10 update
UINT64  TraceFilter_srcIP, TraceFilter_dstIP, mask; 
int spl, spr, dpl, dpr, protocol;  //2011/07/11 update
int bits; //2012/07/10 update
void CD::addFilter(UINT64 srcPrefix, UCHAR srcLen, UINT64 dstPrefix, UCHAR dstLen, filter *SourcePointer, int sl, int sr, int dl, int dr, int pro)  //2011/07/11 update
{ 
  filter tmpFilter;
  tmpFilter.srcIP_     = genPrefix(srcPrefix, srcLen); 
  tmpFilter.srcIPLen_  = srcLen;
  tmpFilter.destIP_    = genPrefix(dstPrefix, dstLen);
  tmpFilter.destIPLen_ = dstLen;
  tmpFilter.Pointer    = SourcePointer;  
// 2011/07/11 update
  tmpFilter.srcPortleft_   = sl;
  tmpFilter.srcPortright_  = sr;
  tmpFilter.destPortleft_  = dl;
  tmpFilter.destPortright_ = dr;
  tmpFilter.pro_num_       = pro; 
  if(Rfilter_[srcLen][dstLen][tmpFilter] == NULL){
  	filter_[srcLen][dstLen][tmpFilter] = SourcePointer;
  	Rfilter_[srcLen][dstLen][tmpFilter] = SourcePointer;
  }
  else{
  	filter *p;
  	p = Rfilter_[srcLen][dstLen][tmpFilter];
        while(p->FPointer != NULL){
	p = p->FPointer;
        }
	p->FPointer = SourcePointer; 
      }
//
//  filter_[srcLen][dstLen][tmpFilter] = SourcePointer;
//  Rfilter_[srcLen][dstLen][tmpFilter] = SourcePointer;
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

	//printf("Total Filter is:%d\n",total1);
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

	printf("Total Marker is:%d\n",total2-total1);
*/	
}

void CD::TupleDetect(void)
{
  register int i, j, k;
  map<filter, filter *, ltFilter>::iterator is;  
  filter tmpFilter; 	
  for (i=1; i<33; i++){               //In subset & overlap conflicts, we don't need to check first row!	
    for (j=0; flagY_[i] && j<33; j++){   
      for (is=Rfilter_[i][j].begin(); is!=Rfilter_[i][j].end(); is++){
          
          filter *p, *fp, *mp, *tp, *kp;
          fp = is->second; 
	  tmpFilter.destIP_    = is->first.destIP_; 
          TraceFilter_dstIP    = tmpFilter.destIP_;
//2011/07/11 update
          spl      = fp->srcPortleft_;
          spr      = fp->srcPortright_;
	  dpl      = fp->destPortleft_;
	  dpr      = fp->destPortright_;
	  protocol = fp->pro_num_;
// 2012/07/09 update
          bits     = fp->bitstream;
//
//============================== check upper right of tuple[i][j]   				
	  for (k=0; k<i; k++){   	  
          tmpFilter.srcIP_    = genPrefix(is->first.srcIP_, k);
          tmpFilter.destIP_   = TraceFilter_dstIP;  //be careful this translation, TraceFilter_dstIP(UINT64) will make key+0
          
//key+0 start  
          if (filter_[k][j+1].count(tmpFilter)){ 
             fp = is->second; 
             p = filter_[k][j+1][tmpFilter];
             mp = p;
             
             //lookupTable(p);
             exactCompare(p);

             while (p->FPointer != NULL){
//link++;
             p = p->FPointer;
             //lookupTable(p);     
             exactCompare(p);
             }

                     
	     while (fp->FPointer != NULL){  //if there are some filters that have the same src prefix & dest prefix in tuple[i][j]
             fp = fp->FPointer;
             p = mp;
//link++;      
             //lookupTable(fp, p);             
             exactCompare(fp, p);
                           
             	while (p->FPointer != NULL){ //if there are some filters that have the same src prefix & dest prefix in target tuple
             	p = p->FPointer;
//link++;
                //lookupTable(fp, p);
             	exactCompare(fp, p);
                }

             }   
             tp = mp;	// back to original place, check marker pointer	
	     while (tp->Pointer != NULL){
             tp = tp->Pointer;
             p = tp;
//link++;      
             if (genPrefix(p->destIP_, j+1) == tmpFilter.destIP_){  //if two dest prefix equal, continue check other field
                exactCompare(p);
                //lookupTable(p);                                                                                              
                                                                                                   
                while (p->FPointer != NULL){
                  p = p->FPointer;
//link++;
                  //lookupTable(p);
                  exactCompare(p); 
                } 
 
                p = tp;
                fp = is->second;                   
		while (fp->FPointer != NULL){  //if there are some filters that have the same src prefix & dest prefix in tuple[i][j]
                  fp = fp->FPointer;
                  p = tp;
//link++;
                  //lookupTable(fp, p);
                  exactCompare(fp, p);
                  p = tp;
                  while (p->FPointer != NULL){ //if there are some filters that have the same src prefix & dest prefix in target tuple
                    p = p->FPointer;
//link++;
                    //lookupTable(fp, p);
                    exactCompare(fp, p);     
                  }
                }

             } //align line 189 if 
             } //align line 185 while loop

}  //align line 157 if  
//key+0 end 
//key+1 start    
		// 32-bit version
		mask = 0x00000001 << (31-j);					
		// 64-bit version					
		// mask = 0x0000000000000001LL << (63-j);
		tmpFilter.destIP_ = TraceFilter_dstIP | mask;                  

          if (filter_[k][j+1].count(tmpFilter)){      
             fp = is->second; //back to original place, check marker pointer	             
             p = filter_[k][j+1][tmpFilter];
             mp = p;
             //lookupTable(p);
             exactCompare(p);

             while (p->FPointer != NULL){
               p = p->FPointer;
//link++;
              //lookupTable(p); 
              exactCompare(p);
             }

	       while (fp->FPointer != NULL){  //if there are some filters that have the same src prefix & dest prefix in tuple[i][j]
                 fp = fp->FPointer;
                 p = mp;
//link++;
                 //lookupTable(fp, p);
                 exactCompare(fp, p);
                                 
                 while (p->FPointer != NULL){ //if there are some filters that have the same src prefix & dest prefix in target tuple
                   p = p->FPointer;
//link++;
                   //lookupTable(fp, p);
                   exactCompare(fp, p);
                 }
               }    
               tp = mp;	// back to original place, check marker pointer	
               fp = is->second;
	       while (tp->Pointer != NULL){
                 tp = tp->Pointer;
                 p = tp;   
//link++;   
                 if (genPrefix(p->destIP_, j+1) == tmpFilter.destIP_){  //if two dest prefix equal, continue check other field
                    //lookupTable(p);
                    exactCompare(p);                                                                                           
                                                                                                 
                    while (p->FPointer != NULL){
                      p = p->FPointer;
//link++;
                      //lookupTable(p);
                      exactCompare(p);
                    } 

                    fp = is->second;                     
		    while (fp->FPointer != NULL){  //if there are some filters that have the same src prefix & dest prefix in tuple[i][j]
                      fp = fp->FPointer;
                      p = tp;
//link++;
                      //lookupTable(fp, p);
                      exactCompare(fp, p);
                      // p = tp;
                      while (p->FPointer != NULL){ //if there are some filters that have the same src prefix & dest prefix in target tuple
                        p = p->FPointer;
//link++;
                         //lookupTable(fp, p);
                        exactCompare(fp, p);
                      }
                    }

                 }  // align line 255 if
               }  // align line 251 while loop

} // align line 225 if

//key+1 end
//==============================


//============================== check upper left of tuple[i][j] 

tmpFilter.destIP_  = genPrefix(TraceFilter_dstIP, 0);  //set tuple[k][0] key

if (filter_[k][0].count(tmpFilter)){ 
   fp = is->second;
   p = filter_[k][0][tmpFilter];
   mp = p;
   if (p->destIPLen_ <= j){
      if ( (p->destIP_ == genPrefix(TraceFilter_dstIP, p->destIPLen_)) ){  
          //lookupTable(p);
          exactCompare(p); 
          while (p->FPointer != NULL){
            p = p->FPointer;
//link++;
            //lookupTable(p);
            exactCompare(p);
          }

	  while (fp->FPointer != NULL){  //if there are some filters that have the same src prefix & dest prefix in tuple[i][j]
            fp = fp->FPointer;
            p = mp;
//link++;
             //lookupTable(fp, p);
            exactCompare(fp, p);
            //p = mp;    
            while (p->FPointer != NULL){ //if there are some filters that have the same src prefix & dest prefix in target tuple
              p = p->FPointer;
//link++;
               //lookupTable(fp, p);
              exactCompare(fp, p); 
            }
          }
   
}  //align line 315 if loop      

          tp = mp;	  // back to original tuple, check marker pointer	
	  while (tp->Pointer != NULL){
            tp = tp->Pointer;
            p = tp;   
//link++;
            if (p->destIPLen_ > j) goto TheEND;
               if ( (p->destIP_ == genPrefix(TraceFilter_dstIP, p->destIPLen_)) ){  //if two dest prefix equal, continue check other field
                  //lookupTable(p);
                  exactCompare(p);
                  while (p->FPointer != NULL){
                    p = p->FPointer;
//link++;
                    //lookupTable(p);
                    exactCompare(p);
                  } 

                  fp = is->second;                  
		  while (fp->FPointer != NULL){  //if there are some filters that have the same src prefix & dest prefix in tuple[i][j]
                    fp = fp->FPointer;
                    p = tp;
//link++;
                     //lookupTable(fp, p);
                    exactCompare(fp, p);

                    while (p->FPointer != NULL){ //if there are some filters that have the same src prefix & dest prefix in target tuple
                      p = p->FPointer;
//link++;
                      //lookupTable(fp, p);
                      exactCompare(fp, p);
                    }
                  }

               } 
               
          }  //align line 318 while loop 

   }                
                                          
}  //align line 289 if loop 
TheEND:    ;
//==============================
} //loop k

} //loop filter_[i][j]  
} //loop j
} //loop i
}

void CD::SetResloveFilter(UINT64 add_srcPrefix, int i, UINT64 add_dstPrefix, int j)
{
 
}

void CD::showStat(void)
{
//printf("偵測次數:%d\n",link);
//printf("比較次數：%d\n",compare);
printf("%d\n",exact);
//printf("衝突數：%d\n\n",Conflictnum);

}
void CD::exactCompare(filter *p)
{
int check = 0;

exact++;

 if(   //check match 5-field
       ((!protocol || !p->pro_num_ ) || (protocol == p->pro_num_))						      
    && ( ((dpl <= p->destPortright_) && (dpl >= p->destPortleft_)) || 
       ((dpr >= p->destPortleft_) && ( dpr <= p->destPortright_)) || 
       ((dpr >= p->destPortright_) && (dpl <= p->destPortleft_)) )
    && ( ((spl <= p->srcPortright_) && (spl >= p->srcPortleft_)) || 
       ((spr >= p->srcPortleft_) && (spr <= p->srcPortright_))  || 
       ((spr >= p->srcPortright_) && (spl <= p->srcPortleft_)) )
      )

       Conflictnum++;

/*
//compare++;
if ((!protocol || !p->pro_num_ ) || (protocol == p->pro_num_)) {
   check++;
//compare++;
if ( ( (dpl <= p->destPortright_) && (dpl >= p->destPortleft_) ) || 
     ( (dpr >= p->destPortleft_) && ( dpr <= p->destPortright_) ) || 
     ( (dpr >= p->destPortright_) && (dpl <= p->destPortleft_) ) ) {
   check++;
//compare++;
if ( ( (spl <= p->srcPortright_) && (spl >= p->srcPortleft_) ) || 
     ( (spr >= p->srcPortleft_) && (spr <= p->srcPortright_) )  || 
     ( (spr >= p->srcPortright_) && (spl <= p->srcPortleft_) ) ) {
    check++;

}
}
}
if (check == 3)
   Conflictnum++;
*/
}
void CD::exactCompare(filter *fp, filter *p)
{
int check =0;
exact++;
 
 if( 
     ((!fp->pro_num_ || !p->pro_num_ ) || (fp->pro_num_ == p->pro_num_))
    &&( ((fp->destPortleft_ <= p->destPortright_) && ( fp->destPortleft_>= p->destPortleft_)) || 
       ((fp->destPortright_ >= p->destPortleft_) && (fp->destPortright_ <= p->destPortright_)) ||
       ((fp->destPortright_ >= p->destPortright_) && (fp->destPortleft_ <= p->destPortleft_)) )
    && ( ((fp->srcPortleft_ <= p->srcPortright_) && (fp->srcPortleft_ >= p->srcPortleft_)) || 
       ((fp->srcPortright_ >= p->srcPortleft_) && (fp->srcPortright_ <= p->srcPortright_)) ||
       ((fp->srcPortright_ >= p->srcPortright_) && (fp->srcPortleft_ <= p->srcPortleft_)))
      )      
       
       Conflictnum++;

/*
//compare++;
if ((!fp->pro_num_ || !p->pro_num_ ) || (fp->pro_num_ == p->pro_num_)) {
   check++;
//compare++;
if ( ( (fp->destPortleft_ <= p->destPortright_) && ( fp->destPortleft_>= p->destPortleft_) ) || 
     ( (fp->destPortright_ >= p->destPortleft_) && (fp->destPortright_ <= p->destPortright_) ) ||
     ( (fp->destPortright_ >= p->destPortright_) && (fp->destPortleft_ <= p->destPortleft_) ) ) {
   check++;
//compare++;
if ( ( (fp->srcPortleft_ <= p->srcPortright_) && (fp->srcPortleft_ >= p->srcPortleft_) ) || 
     ( (fp->srcPortright_ >= p->srcPortleft_) && (fp->srcPortright_ <= p->srcPortright_) ) ||
     ( (fp->srcPortright_ >= p->srcPortright_) && (fp->srcPortleft_ <= p->srcPortleft_) ) ) {

    check++;
}
}
}
if (check == 3)
   Conflictnum++;
*/
}
void CD::lookupTable(filter *p)
{
compare++;

 switch (match[bits][p->bitstream])
 {
 //  case 0:
 //    break;
   case 1:
     Conflictnum++;
     break;
   case 2:
     exactCompare(p);
     break;

 }

}
void CD::lookupTable(filter *fp, filter *p)
{
compare++;

 switch (match[fp->bitstream][p->bitstream])
 {
 //  case 0:
 //    break;
   case 1:
     Conflictnum++;
     break;
   case 2:
     exactCompare(fp, p);
     break;
 }


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
