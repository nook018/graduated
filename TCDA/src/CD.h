#ifndef CD_H
#define CD_H

#include	<map>
#include	<string.h>
using namespace std;
#include    "filter_db.h"
#include	"filter.h"
#include	"util.h"

//enum map_mode {MAP_COMPACT, MAP_FULL};

class CD	
{
public:
	//virtual void addFilter(UINT64, UCHAR, UINT64, UCHAR, filter*);
//2011/07/11 update
        virtual void addFilter(UINT64, UCHAR, UINT64, UCHAR, filter*, int, int, int, int, int);
//
	virtual void genNEWMarkers(void);
	virtual void TupleDetect(void);
	virtual void SetResloveFilter(UINT64, int, UINT64, int);
        virtual void showStat(void);
        virtual void exactCompare(filter*);
        virtual void exactCompare(filter*, filter*);
        virtual void genTableC(void);
        virtual void lookupTable(filter*);
        virtual void lookupTable(filter*, filter*);
	
private:
	map<filter, filter *, ltFilter> filter_[33][33];	
	map<filter, filter *, ltFilter> Rfilter_[33][33];
	//map<filter, filter *, ltFilter> marker_[33][33];
	int flagX_[33], flagY_[33];
        int match[64][64];
};

#endif
