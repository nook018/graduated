#ifndef UTIL_H
#define UTIL_H

enum 		Status {SUCCESS, ERROR};

typedef unsigned char      UCHAR;
typedef unsigned int       UINT;
// typedef unsigned long long UINT64; 
typedef unsigned int 			 UINT64; 

char*   binary2string(UINT, int);
int     clearLSB1(int);
UINT    extractBits(UINT, UCHAR, UCHAR);
UINT64 	genPrefix(UINT64, UCHAR);
int     myLogFunc(UINT x);
int     myLogFunc2(UINT x);
int     MSBBitX(UINT, UCHAR);

#endif
