#include	"filter.h"

#include	<stdio.h>

void filter::dump(void)
{
	// 64-bit version
	// printf("%016LX/%d\t", srcIP_,  srcIPLen_);
	// printf("%016LX/%d",   destIP_, destIPLen_);

	// 32-bit version
	printf("%08X/%d\t", srcIP_,  srcIPLen_);
	printf("%08X/%d",   destIP_, destIPLen_);
}

filter::filter(void)
{
  Traceflag = true; 
  Pointer  = NULL;
  add_marker = true;
  FPointer = NULL;
}
