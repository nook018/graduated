#include	<stdio.h>
#include	<string.h>
#include    "CD.h"
#include	"err_handler.h"
#include	"filter_db.h"
#include	"util.h"
#include    "MemTrack.h"
#include    <sys/time.h>
#include    <fstream>
#define		BUF_SZ   256
using namespace std;
clsFilterDB   db;

int main(int argc, char *argv[])
{

  FILE          *fp;
  CD		    *test;	
  char          buf[BUF_SZ];
ofstream fout;
struct timeval tv, tv2, tv3;
unsigned long long start_utime, mid_utime, end_utime;

      gettimeofday(&tv, NULL);
      start_utime = tv.tv_sec*1000000 + tv.tv_usec;


	// insert filters
	if (db.loadFilters(argv[2]) == -1)
			err_quit("Error: unable to open the filter database.");

      test = new CD;


	for (int i=0; i<db.size(); i++)	{	
      //     pClassifier->addFilter(db.filterSet_[i].srcIP_,  db.filterSet_[i].srcIPLen_,
      //                     db.filterSet_[i].destIP_, db.filterSet_[i].destIPLen_, i);
      //     test->addFilter(db.filterSet_[i].srcIP_,  db.filterSet_[i].srcIPLen_,
      //                     db.filterSet_[i].destIP_, db.filterSet_[i].destIPLen_, &(db.filterSet_[i]));
//2011/07/11 update
	     test->addFilter(db.filterSet_[i].srcIP_,  db.filterSet_[i].srcIPLen_, 
                             db.filterSet_[i].destIP_, db.filterSet_[i].destIPLen_, &(db.filterSet_[i]),
                             db.filterSet_[i].srcPortleft_, db.filterSet_[i].srcPortright_, 
                             db.filterSet_[i].destPortleft_, db.filterSet_[i].destPortright_, db.filterSet_[i].pro_num_);
	}
      //printf("讀進檔案數%d\n",db.size());

	//衝突偵測相關的function    
      test->genTableC();

      test->genNEWMarkers();	

      gettimeofday(&tv2, NULL);
      mid_utime = tv2.tv_sec*1000000 + tv2.tv_usec;

      test->TupleDetect();

      gettimeofday(&tv3, NULL);
      end_utime = tv3.tv_sec*1000000 + tv3.tv_usec;
      
      test->showStat();

fout.open("TCDA.txt", ios::app);   
//printf("precompution time: %llu us\n", mid_utime-start_utime);
//printf("detection time: %llu us\n", end_utime-mid_utime);
//printf("total time: %llu us\n", end_utime-start_utime);
//fout<< argv[2]<<"\tprecomputation "<< (mid_utime-start_utime)<<"\tdetection "<<(end_utime-mid_utime)<<"\ttotal "<<(end_utime-start_utime)<<"\tus\n";
fout<< mid_utime-start_utime<< "\t";
fout<< end_utime-mid_utime<< "\n";
fout.close();
//MemTrack::TrackListMemoryUsage();  //add MemTrack
}


