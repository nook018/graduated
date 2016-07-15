#ifndef FILTER_DB_H
#define FILTER_DB_H

#include	<stdio.h>
#include	"filter.h"

#define	MAX_FILTERS	100000
#define	ADD_FILTERS	100000

class clsFilterDB {
public:
    	clsFilterDB(void);
	~clsFilterDB(void);
	void clear(void);
	void dump(void);
	int loadFilters(char*);
	int size(void);

	filter	*filterSet_;
	filter	*addfilterSet_;
private:
// 2011/07/11 update
	void readRange(FILE*, int*, int*);
	void readProtocol(FILE*, int*);
//
// 2012/07/09 update
    	void readStream(int, int, int, int, int, int*);
//
	void readPrefix(FILE*, unsigned char*, UINT64*, unsigned char*);
    	int cntr_;
};

#endif
