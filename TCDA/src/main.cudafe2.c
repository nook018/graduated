# 1 "main.cudafe1.gpu"
# 24 "filter.h"
struct filter;
# 1 "main.cudafe1.gpu"
typedef char __nv_bool;
# 212 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h" 3
typedef unsigned long size_t;
#include "crt/host_runtime.h"
# 7 "util.h"
typedef unsigned UINT;
# 9 "util.h"
typedef unsigned UINT64;
# 24 "filter.h"
struct filter {
# 26 "filter.h"
UINT64 srcIP_;
# 27 "filter.h"
unsigned char srcIPLen_;
# 28 "filter.h"
unsigned char srcIPPref_[4];
# 30 "filter.h"
UINT64 destIP_;
# 31 "filter.h"
unsigned char destIPLen_;
# 32 "filter.h"
unsigned char destIPPref_[4];
# 34 "filter.h"
int srcPortleft_;
# 35 "filter.h"
int srcPortright_;
# 36 "filter.h"
int destPortleft_;
# 37 "filter.h"
int destPortright_;
# 38 "filter.h"
int pro_num_;
# 41 "filter.h"
int bitstream;
# 43 "filter.h"
unsigned cost_;
# 44 "filter.h"
__nv_bool Traceflag;
# 45 "filter.h"
__nv_bool add_marker;
# 46 "filter.h"
__nv_bool marker;
# 47 "filter.h"
struct filter *Pointer;
# 48 "filter.h"
struct filter *FPointer;};
void *memcpy(void*, const void*, size_t); void *memset(void*, int, size_t);

#include "main.cudafe2.stub.c"
