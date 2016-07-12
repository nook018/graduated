#include	"filter_db.h"

#include	<stdlib.h>

clsFilterDB::clsFilterDB(void)
{
	cntr_ = 0;
	
	// allocate memory
	filterSet_ = new filter[MAX_FILTERS];
    addfilterSet_ = new filter[ADD_FILTERS];
	if (filterSet_ == NULL)	{
		printf("Error: clsFilterDB::clsFilterDB(): unable to allocate memory.\n");
		exit(1);
	}
	if (addfilterSet_ == NULL)	{
		printf("Error: clsFilterDB::clsFilterDB(): unable to allocate memory.\n");
		exit(1);
	}
}

clsFilterDB::~clsFilterDB()
{
	if (!filterSet_)
		delete [] filterSet_;  
	if (!addfilterSet_)
		delete [] addfilterSet_; 
}

void clsFilterDB::dump(void)
{
	printf("No of filters: %d\n", cntr_);
  for (int i=0; i<cntr_; i++)	{
		filterSet_[i].dump();
		printf("\n");
	}
}

void clsFilterDB::readPrefix(FILE *fp, unsigned char *pref, UINT64 *ip_hex, unsigned char *len)
{
	/*assumes IPv4 prefixes*/
	unsigned int tpref[4], templen;
	int dummy;

  dummy = fscanf(fp,"%d.%d.%d.%d/%d",&tpref[0],&tpref[1],&tpref[2],&tpref[3], &templen);
	pref[0] = (unsigned char)tpref[0];
	pref[1] = (unsigned char)tpref[1];
	pref[2] = (unsigned char)tpref[2];
	pref[3] = (unsigned char)tpref[3];

  *ip_hex = (pref[0] << 24)^(pref[1] << 16)^(pref[2] << 8)^(pref[3]); 
	// 32-bit version 	
	// *ip_hex = *ip_hex << 32;
	*len = (unsigned char)templen;
}
// 2011/07/11 update
void clsFilterDB::readRange(FILE *fp, int *l_range, int *r_range)
{
      int trange[2];
      int dummy;

   dummy = fscanf(fp, "%d : %d",&trange[0],&trange[1]);
      *l_range = trange[0];
      *r_range = trange[1];
      //printf("%d , %d\n", *l_range,*r_range);
}
void clsFilterDB::readProtocol(FILE *fp, int *pro)
{
   int protocol,protocol2, protocol3, protocol4;   
   int dummy;

   dummy = fscanf(fp, "%dx%d/%dx%d",&protocol, &protocol2, &protocol3, &protocol4);
   *pro = protocol2;
   //printf("%d\n", *pro);
}
//

//
//	Return Value: 
//  	The number of filters in the filter database or 
//		-1 if the database cannot be opened.
//

// 2012/07/09 update	
void clsFilterDB::readStream(int sl, int sr, int dl, int dr, int pr, int *bs)
{
 // 0x00:*, 0x06:TCP, 0x11:UDP
 unsigned int bit[3];
 if (sl == 0 && sr == 65535)
   bit[0] = 0;
 else if (sl > 1023)
   bit[0] = 1;
 else if (sr < 1024)
   bit[0] = 2;
 else 
   bit[0] = 3;

 if (dl == 0 && dr == 65535)
   bit[1] = 0;
 else if (dl > 1023)
   bit[1] = 1;
 else if (dr < 1024)
   bit[1] = 2;
 else 
   bit[1] = 3;

 if (pr == 0)
   bit[2] = 0;
 else if (pr == 6)
   bit[2] = 1;
 else if (pr == 11)
   bit[2] = 2;
 else 
   bit[2] = 3;
 *bs = (bit[0] << 4)^(bit[1] << 2)^(bit[2]);
 //printf("%d\n", *bs);
}
//
int clsFilterDB::loadFilters(char *fname)
{
	FILE *fp;
	char status, validfilter;

	if ((fp = fopen(fname, "r")) == NULL)	
    return(-1);

	
	cntr_ = 0;
	while (!feof(fp) && (cntr_ < MAX_FILTERS))	{
		status = fscanf(fp, "%c", &validfilter); 				
	  if (status == EOF) break;
	  if (validfilter != '@') continue;			

	  readPrefix(fp, (unsigned char*)filterSet_[cntr_].srcIPPref_,  &filterSet_[cntr_].srcIP_,  &filterSet_[cntr_].srcIPLen_);
	  readPrefix(fp, (unsigned char*)filterSet_[cntr_].destIPPref_, &filterSet_[cntr_].destIP_, &filterSet_[cntr_].destIPLen_);
// 2011/07/11 update
          readRange(fp, &filterSet_[cntr_].srcPortleft_, &filterSet_[cntr_].srcPortright_);
	  readRange(fp, &filterSet_[cntr_].destPortleft_, &filterSet_[cntr_].destPortright_);
          readProtocol(fp, &filterSet_[cntr_].pro_num_);
//
// 2012/07/09 update
          readStream(filterSet_[cntr_].srcPortleft_, filterSet_[cntr_].srcPortright_, 
                     filterSet_[cntr_].destPortleft_, filterSet_[cntr_].destPortright_, 
                     filterSet_[cntr_].pro_num_, &filterSet_[cntr_].bitstream);
//
	  cntr_++;
	}
	fclose(fp);

	return(cntr_);
}

void clsFilterDB::clear(void)
{
	if (!filterSet_)
		delete [] filterSet_;
	filterSet_ = NULL;
	if (!addfilterSet_)
		delete [] addfilterSet_;
	addfilterSet_ = NULL;
}

int clsFilterDB::size(void)
{
	return(cntr_);
}
