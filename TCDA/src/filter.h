#ifndef FILTER_H
#define	FILTER_H

#include	"util.h"

//add for store gpu result
class dev_var{
public:
    int result;
    int set;
};


class filter	{
public:
	UINT64 	  srcIP_;
	unsigned char srcIPLen_;
	unsigned char srcIPPref_[4];

	UINT64	  destIP_;
    unsigned char destIPLen_;
	unsigned char destIPPref_[4];
// 2011/07/11 update
    int srcPortleft_;
    int srcPortright_;
    int destPortleft_;
    int destPortright_;
    int pro_num_;
//
// 2012/07/09 update
    int bitstream;
//
	unsigned int	cost_;
	bool	Traceflag;
    bool  add_marker;
    bool  marker;
    filter *Pointer;
	filter *FPointer;
	filter();
	void dump(void);
};

struct ltFilter	
{
    bool operator()(filter f1, filter f2) const
    {
        if (f1.srcIP_ == f2.srcIP_)
            return(f1.destIP_ < f2.destIP_);
        else
            return(f1.srcIP_ < f2.srcIP_);
  }	
};

#endif