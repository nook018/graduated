#include	"util.h"

#include	<stdio.h>

char* binary2string(UINT prefix, int len)
{
  static char rvalue[33];
  unsigned int mask;
  int idx;
  
  mask = 0x80000000;
  rvalue[0] = '\0';
  
  if ( (len > 32) || (len < 0) ) {
    printf("Error: binary2string(): the prefix length (%d) is out of range (0 <= length <= 32).\n", len);
    return(rvalue);
  }

  for (idx=0; idx<len; idx++)
  {
    if (prefix & mask)
      rvalue[idx] = '1';
    else
      rvalue[idx] = '0';
    mask = mask / 2;
  }  
  rvalue[idx] = '\0';
  
  return(rvalue);
}

//
//  The function clears the least significant one bit of the parameter
//  and return it.
//
int clearLSB1(int value)
{
  UINT mask;
  
  mask = 1;
  while (value != 0)  {
    if (value & mask) {
      value = value & (~mask);
      break;
    }
    mask = mask << 1;  
  }
  
  return(value);
}

UINT extractBits(UINT ip, UCHAR lb, UCHAR ub)
{
  UINT result, mask, pulse;

  if ( (lb < 1) || (lb > 32) || (ub < 1) || (ub > 32) ) {
    printf("Error: invalid bit range (1 .. 32) in extractBits()\n");
    return(0);
  }

  pulse = 0x80000000;
  mask  = 0;
  for (int i=1; i<=32; i++) {
    if ( (i >= lb) && (i <= ub) ) {
      mask = mask | pulse;
      // printf("i = %d: ", i);
      // printIPPrefix(mask, 32);
      // printf("\n");
    }
    pulse = pulse >> 1;
  }
  result = (ip & mask) >> (32 - ub);

  return(result);
}
/*
UINT64 genPrefix(UINT64 prefix, unsigned char len)
{
  UINT64 result, mask;
  
  if (len == 0)
		return(0);
	else	{
		mask    = 0xFFFFFFFFFFFFFFFFLL << (64-len);
  	result  = prefix & mask;
	  return(result);  
	}
}
*/
int myLogFunc(UINT x)
{
  UINT mask;

	mask = 0x80000000;
  for (int i=32; i>=1; i--) {
    if ((x & mask) != 0)
      return(i);
    mask = mask >> 1;
  }
  return(0);
}

int myLogFunc2(UINT x)
{
  UINT mask;

  if (x == 0)
		return(0);
	else if (x > 1)
		x--;

	mask = 0x80000000;
  for (int i=32; i>=1; i--) {
    if ((x & mask) != 0)
      return(i);
    mask = mask >> 1;
  }
  return(0);
}

int MSBBitX(UINT ip, UCHAR no)
{
  UINT mask;

  if ((no>32) || (no<1))  {
    printf("Error: invalid bit index (%d) to extract a bit from an IP address.\n", no);
    return(0);
  }

  mask = 0x80000000;
  if ((ip & (mask >> (no-1))) != 0)
    return(1);
  else
    return(0);
}
