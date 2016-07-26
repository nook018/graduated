#ifndef FILTER_H
#define	FILTER_H

#include	"util.h"

#define N 100000

//add for store gpu result, AoS
class dev_var{
public:
    int result;
    int set;
};


//add for store gpu result, SoA
class dev_soa{
public:
    int result[N];
    int set[N];
};


class filter	{
public:
	UINT64 	  srcIP_; // int 4 byte
	unsigned char srcIPLen_; // 1 byte
	unsigned char srcIPPref_[4]; // 4 byte

	UINT64	  destIP_; // int 4 byte
    	unsigned char destIPLen_; // 1 byte
	unsigned char destIPPref_[4]; // 4 byte
// 2011/07/11 update
    	int srcPortleft_; // 4 byte
    	int srcPortright_; // 4 byte
    	int destPortleft_; // 4 byte
    	int destPortright_; // 4 byte
    	int pro_num_; // 4 byte
//
// 2012/07/09 update
    	int bitstream; //4 byte
//
	unsigned int	cost_; // 4 byte
	bool	Traceflag; // 4 byte
    	bool  add_marker; // 0
    	bool  marker; // 0 
    	filter *Pointer;
	filter *FPointer;
	filter();
	void dump(void);
};
/*
class filter_CUDA{
public:
	UINT64 	  srcIP_[N];
	unsigned char srcIPLen_[N];
	unsigned char srcIPPref_[N][4];

	UINT64	  destIP_[N];
    	unsigned char destIPLen_[N];
	unsigned char destIPPref_[N][4];
// 2011/07/11 update
	int srcPortleft_[N];
    	int srcPortright_[N];
    	int destPortleft_[N];
    	int destPortright_[N];
    	int pro_num_[N];

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
*/
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
