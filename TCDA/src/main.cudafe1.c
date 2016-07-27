# 1 "main.cu"
# 56 "/usr/local/cuda-7.5/bin/..//include/cuda_runtime.h"
#pragma GCC diagnostic push


#pragma GCC diagnostic ignored "-Wunused-function"
# 35 "/usr/include/c++/4.8/exception" 3
#pragma GCC visibility push ( default )
# 149 "/usr/include/c++/4.8/exception" 3
#pragma GCC visibility pop
# 42 "/usr/include/c++/4.8/new" 3
#pragma GCC visibility push ( default )
# 120 "/usr/include/c++/4.8/new" 3
#pragma GCC visibility pop
# 1888 "/usr/local/cuda-7.5/bin/..//include/cuda_runtime.h"
#pragma GCC diagnostic pop
# 30 "/usr/include/x86_64-linux-gnu/c++/4.8/bits/gthr.h" 3
#pragma GCC visibility push ( default )
# 151 "/usr/include/x86_64-linux-gnu/c++/4.8/bits/gthr.h" 3
#pragma GCC visibility pop
# 36 "/usr/include/c++/4.8/bits/cxxabi_forced.h" 3
#pragma GCC visibility push ( default )
# 58 "/usr/include/c++/4.8/bits/cxxabi_forced.h" 3
#pragma GCC visibility pop
# 1425 "/usr/local/cuda-7.5/bin/..//include/driver_types.h"
struct CUstream_st;
# 27 "/usr/include/xlocale.h" 3
struct __locale_struct;
# 30 "/usr/include/x86_64-linux-gnu/bits/time.h" 3
struct timeval;
# 86 "/usr/include/wchar.h" 3
union _ZN11__mbstate_tUt_E;
# 83 "/usr/include/wchar.h" 3
struct __mbstate_t;
# 180 "/usr/include/libio.h" 3
enum __codecvt_result {

__codecvt_ok,
__codecvt_partial,
__codecvt_error,
__codecvt_noconv};
# 245 "/usr/include/libio.h" 3
struct _IO_FILE;
# 51 "/usr/include/x86_64-linux-gnu/bits/waitflags.h" 3
enum idtype_t {
P_ALL,
P_PID,
P_PGID};
# 75 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h" 3
struct __pthread_internal_list;
# 92 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h" 3
struct _ZN15pthread_mutex_t17__pthread_mutex_sE;
# 91 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h" 3
union pthread_mutex_t;
# 190 "/usr/include/math.h" 3
enum _ZUt_ {
FP_NAN,


FP_INFINITE,


FP_ZERO,


FP_SUBNORMAL,


FP_NORMAL};
# 302 "/usr/include/math.h" 3
enum _LIB_VERSION_TYPE {
_IEEE_ = (-1),
_SVID_,
_XOPEN_,
_POSIX_,
_ISOC_};
# 4 "util.h"
enum Status { SUCCESS, ERROR};
# 24 "filter.h"
struct filter;
# 10 "filter_db.h"
struct clsFilterDB;
# 55 "/usr/include/x86_64-linux-gnu/sys/time.h" 3
struct timezone;
# 91 "/usr/include/x86_64-linux-gnu/sys/time.h" 3
enum __itimer_which {


ITIMER_REAL,


ITIMER_VIRTUAL,



ITIMER_PROF};
# 47 "/usr/include/ctype.h" 3
enum _ZUt0_ {
_ISupper = 256,
_ISlower = 512,
_ISalpha = 1024,
_ISdigit = 2048,
_ISxdigit = 4096,
_ISspace = 8192,
_ISprint = 16384,
_ISgraph = 32768,
_ISblank = 1,
_IScntrl,
_ISpunct = 4,
_ISalnum = 8};
# 33 "/usr/include/pthread.h" 3
enum _ZUt1_ {
PTHREAD_CREATE_JOINABLE,

PTHREAD_CREATE_DETACHED};
# 43 "/usr/include/pthread.h" 3
enum _ZUt2_ {
PTHREAD_MUTEX_TIMED_NP,
PTHREAD_MUTEX_RECURSIVE_NP,
PTHREAD_MUTEX_ERRORCHECK_NP,
PTHREAD_MUTEX_ADAPTIVE_NP,


PTHREAD_MUTEX_NORMAL = 0,
PTHREAD_MUTEX_RECURSIVE,
PTHREAD_MUTEX_ERRORCHECK,
PTHREAD_MUTEX_DEFAULT = 0,



PTHREAD_MUTEX_FAST_NP = 0};
# 65 "/usr/include/pthread.h" 3
enum _ZUt3_ {
PTHREAD_MUTEX_STALLED,
PTHREAD_MUTEX_STALLED_NP = 0,
PTHREAD_MUTEX_ROBUST,
PTHREAD_MUTEX_ROBUST_NP = 1};
# 77 "/usr/include/pthread.h" 3
enum _ZUt4_ {
PTHREAD_PRIO_NONE,
PTHREAD_PRIO_INHERIT,
PTHREAD_PRIO_PROTECT};
# 126 "/usr/include/pthread.h" 3
enum _ZUt5_ {
PTHREAD_RWLOCK_PREFER_READER_NP,
PTHREAD_RWLOCK_PREFER_WRITER_NP,
PTHREAD_RWLOCK_PREFER_WRITER_NONRECURSIVE_NP,
PTHREAD_RWLOCK_DEFAULT_NP = 0};
# 167 "/usr/include/pthread.h" 3
enum _ZUt6_ {
PTHREAD_INHERIT_SCHED,

PTHREAD_EXPLICIT_SCHED};
# 177 "/usr/include/pthread.h" 3
enum _ZUt7_ {
PTHREAD_SCOPE_SYSTEM,

PTHREAD_SCOPE_PROCESS};
# 187 "/usr/include/pthread.h" 3
enum _ZUt8_ {
PTHREAD_PROCESS_PRIVATE,

PTHREAD_PROCESS_SHARED};
# 211 "/usr/include/pthread.h" 3
enum _ZUt9_ {
PTHREAD_CANCEL_ENABLE,

PTHREAD_CANCEL_DISABLE};



enum _ZUt10_ {
PTHREAD_CANCEL_DEFERRED,

PTHREAD_CANCEL_ASYNCHRONOUS};
# 72 "/usr/include/wctype.h" 3
enum _ZUt11_ {
__ISwupper,
__ISwlower,
__ISwalpha,
__ISwdigit,
__ISwxdigit,
__ISwspace,
__ISwprint,
__ISwgraph,
__ISwblank,
__ISwcntrl,
__ISwpunct,
__ISwalnum,

_ISwupper = 16777216,
_ISwlower = 33554432,
_ISwalpha = 67108864,
_ISwdigit = 134217728,
_ISwxdigit = 268435456,
_ISwspace = 536870912,
_ISwprint = 1073741824,
_ISwgraph = (-2147483647-1),
_ISwblank = 65536,
_ISwcntrl = 131072,
_ISwpunct = 262144,
_ISwalnum = 524288};
# 128 "/usr/include/c++/4.8/bits/cpp_type_traits.h" 3
enum _ZNSt9__is_voidIvEUt_E { _ZNSt9__is_voidIvE7__valueE = 1};
# 148 "/usr/include/c++/4.8/bits/cpp_type_traits.h" 3
enum _ZNSt12__is_integerIbEUt_E { _ZNSt12__is_integerIbE7__valueE = 1};
# 155 "/usr/include/c++/4.8/bits/cpp_type_traits.h" 3
enum _ZNSt12__is_integerIcEUt_E { _ZNSt12__is_integerIcE7__valueE = 1};
# 162 "/usr/include/c++/4.8/bits/cpp_type_traits.h" 3
enum _ZNSt12__is_integerIaEUt_E { _ZNSt12__is_integerIaE7__valueE = 1};
# 169 "/usr/include/c++/4.8/bits/cpp_type_traits.h" 3
enum _ZNSt12__is_integerIhEUt_E { _ZNSt12__is_integerIhE7__valueE = 1};
# 177 "/usr/include/c++/4.8/bits/cpp_type_traits.h" 3
enum _ZNSt12__is_integerIwEUt_E { _ZNSt12__is_integerIwE7__valueE = 1};
# 201 "/usr/include/c++/4.8/bits/cpp_type_traits.h" 3
enum _ZNSt12__is_integerIsEUt_E { _ZNSt12__is_integerIsE7__valueE = 1};
# 208 "/usr/include/c++/4.8/bits/cpp_type_traits.h" 3
enum _ZNSt12__is_integerItEUt_E { _ZNSt12__is_integerItE7__valueE = 1};
# 215 "/usr/include/c++/4.8/bits/cpp_type_traits.h" 3
enum _ZNSt12__is_integerIiEUt_E { _ZNSt12__is_integerIiE7__valueE = 1};
# 222 "/usr/include/c++/4.8/bits/cpp_type_traits.h" 3
enum _ZNSt12__is_integerIjEUt_E { _ZNSt12__is_integerIjE7__valueE = 1};
# 229 "/usr/include/c++/4.8/bits/cpp_type_traits.h" 3
enum _ZNSt12__is_integerIlEUt_E { _ZNSt12__is_integerIlE7__valueE = 1};
# 236 "/usr/include/c++/4.8/bits/cpp_type_traits.h" 3
enum _ZNSt12__is_integerImEUt_E { _ZNSt12__is_integerImE7__valueE = 1};
# 243 "/usr/include/c++/4.8/bits/cpp_type_traits.h" 3
enum _ZNSt12__is_integerIxEUt_E { _ZNSt12__is_integerIxE7__valueE = 1};
# 250 "/usr/include/c++/4.8/bits/cpp_type_traits.h" 3
enum _ZNSt12__is_integerIyEUt_E { _ZNSt12__is_integerIyE7__valueE = 1};
# 268 "/usr/include/c++/4.8/bits/cpp_type_traits.h" 3
enum _ZNSt13__is_floatingIfEUt_E { _ZNSt13__is_floatingIfE7__valueE = 1};
# 275 "/usr/include/c++/4.8/bits/cpp_type_traits.h" 3
enum _ZNSt13__is_floatingIdEUt_E { _ZNSt13__is_floatingIdE7__valueE = 1};
# 282 "/usr/include/c++/4.8/bits/cpp_type_traits.h" 3
enum _ZNSt13__is_floatingIeEUt_E { _ZNSt13__is_floatingIeE7__valueE = 1};
# 358 "/usr/include/c++/4.8/bits/cpp_type_traits.h" 3
enum _ZNSt9__is_charIcEUt_E { _ZNSt9__is_charIcE7__valueE = 1};
# 366 "/usr/include/c++/4.8/bits/cpp_type_traits.h" 3
enum _ZNSt9__is_charIwEUt_E { _ZNSt9__is_charIwE7__valueE = 1};
# 381 "/usr/include/c++/4.8/bits/cpp_type_traits.h" 3
enum _ZNSt9__is_byteIcEUt_E { _ZNSt9__is_byteIcE7__valueE = 1};
# 388 "/usr/include/c++/4.8/bits/cpp_type_traits.h" 3
enum _ZNSt9__is_byteIaEUt_E { _ZNSt9__is_byteIaE7__valueE = 1};
# 395 "/usr/include/c++/4.8/bits/cpp_type_traits.h" 3
enum _ZNSt9__is_byteIhEUt_E { _ZNSt9__is_byteIhE7__valueE = 1};
# 138 "/usr/include/c++/4.8/bits/cpp_type_traits.h" 3
enum _ZNSt12__is_integerIeEUt_E { _ZNSt12__is_integerIeE7__valueE}; enum _ZNSt12__is_integerIdEUt_E { _ZNSt12__is_integerIdE7__valueE}; enum _ZNSt12__is_integerIfEUt_E { _ZNSt12__is_integerIfE7__valueE};
# 233 "/usr/include/c++/4.8/bits/char_traits.h" 3
struct _ZSt11char_traitsIcE;
# 338 "/usr/include/c++/4.8/bits/locale_classes.h" 3
struct _ZNSt6locale5facetE; struct __SO__NSt6locale5facetE;
# 475 "/usr/include/c++/4.8/bits/locale_classes.h" 3
struct _ZNSt6locale5_ImplE;
# 304 "/usr/include/c++/4.8/bits/locale_classes.h" 3
enum _ZNSt6localeUt_E { _ZNSt6locale18_S_categories_sizeE = 12};
# 62 "/usr/include/c++/4.8/bits/locale_classes.h" 3
struct _ZSt6locale;
# 51 "/usr/include/c++/4.8/bits/ios_base.h" 3
enum _ZSt13_Ios_Fmtflags {

_ZSt12_S_boolalpha = 1,
_ZSt6_S_dec,
_ZSt8_S_fixed = 4,
_ZSt6_S_hex = 8,
_ZSt11_S_internal = 16,
_ZSt7_S_left = 32,
_ZSt6_S_oct = 64,
_ZSt8_S_right = 128,
_ZSt13_S_scientific = 256,
_ZSt11_S_showbase = 512,
_ZSt12_S_showpoint = 1024,
_ZSt10_S_showpos = 2048,
_ZSt9_S_skipws = 4096,
_ZSt10_S_unitbuf = 8192,
_ZSt12_S_uppercase = 16384,
_ZSt14_S_adjustfield = 176,
_ZSt12_S_basefield = 74,
_ZSt13_S_floatfield = 260,
_ZSt19_S_ios_fmtflags_end = 65536,
_ZSt19_S_ios_fmtflags_max = 2147483647,
_ZSt19_S_ios_fmtflags_min = (-2147483647-1)};
# 105 "/usr/include/c++/4.8/bits/ios_base.h" 3
enum _ZSt13_Ios_Openmode {

_ZSt6_S_app = 1,
_ZSt6_S_ate,
_ZSt6_S_bin = 4,
_ZSt5_S_in = 8,
_ZSt6_S_out = 16,
_ZSt8_S_trunc = 32,
_ZSt19_S_ios_openmode_end = 65536,
_ZSt19_S_ios_openmode_max = 2147483647,
_ZSt19_S_ios_openmode_min = (-2147483647-1)};
# 147 "/usr/include/c++/4.8/bits/ios_base.h" 3
enum _ZSt12_Ios_Iostate {

_ZSt10_S_goodbit,
_ZSt9_S_badbit,
_ZSt9_S_eofbit,
_ZSt10_S_failbit = 4,
_ZSt18_S_ios_iostate_end = 65536,
_ZSt18_S_ios_iostate_max = 2147483647,
_ZSt18_S_ios_iostate_min = (-2147483647-1)};
# 187 "/usr/include/c++/4.8/bits/ios_base.h" 3
enum _ZSt12_Ios_Seekdir {

_ZSt6_S_beg,
_ZSt6_S_cur,
_ZSt6_S_end,
_ZSt18_S_ios_seekdir_end = 65536};
# 425 "/usr/include/c++/4.8/bits/ios_base.h" 3
enum _ZNSt8ios_base5eventE {

_ZNSt8ios_base11erase_eventE,
_ZNSt8ios_base11imbue_eventE,
_ZNSt8ios_base13copyfmt_eventE};
# 466 "/usr/include/c++/4.8/bits/ios_base.h" 3
struct _ZNSt8ios_base14_Callback_listE;
# 505 "/usr/include/c++/4.8/bits/ios_base.h" 3
struct _ZNSt8ios_base6_WordsE;
# 517 "/usr/include/c++/4.8/bits/ios_base.h" 3
enum _ZNSt8ios_baseUt_E { _ZNSt8ios_base18_S_local_word_sizeE = 8};
# 539 "/usr/include/c++/4.8/bits/ios_base.h" 3
struct _ZNSt8ios_base4InitE;
# 205 "/usr/include/c++/4.8/bits/ios_base.h" 3
struct _ZSt8ios_base;
# 120 "/usr/include/c++/4.8/iosfwd" 3
struct _ZSt19istreambuf_iteratorIcSt11char_traitsIcEE;


struct _ZSt19ostreambuf_iteratorIcSt11char_traitsIcEE;
# 80 "/usr/include/c++/4.8/iosfwd" 3
struct _ZSt15basic_streambufIcSt11char_traitsIcEE;
# 41 "/usr/include/x86_64-linux-gnu/c++/4.8/bits/ctype_base.h" 3
struct _ZSt10ctype_base;
# 674 "/usr/include/c++/4.8/bits/locale_facets.h" 3
struct _ZSt5ctypeIcE;
# 1524 "/usr/include/c++/4.8/bits/locale_facets.h" 3
enum _ZNSt10__num_baseUt_E {
_ZNSt10__num_base9_S_ominusE,
_ZNSt10__num_base8_S_oplusE,
_ZNSt10__num_base5_S_oxE,
_ZNSt10__num_base5_S_oXE,
_ZNSt10__num_base10_S_odigitsE,
_ZNSt10__num_base14_S_odigits_endE = 20,
_ZNSt10__num_base11_S_oudigitsE = 20,
_ZNSt10__num_base15_S_oudigits_endE = 36,
_ZNSt10__num_base5_S_oeE = 18,
_ZNSt10__num_base5_S_oEE = 34,
_ZNSt10__num_base7_S_oendE = 36};
# 1550 "/usr/include/c++/4.8/bits/locale_facets.h" 3
enum _ZNSt10__num_baseUt0_E {
_ZNSt10__num_base9_S_iminusE,
_ZNSt10__num_base8_S_iplusE,
_ZNSt10__num_base5_S_ixE,
_ZNSt10__num_base5_S_iXE,
_ZNSt10__num_base8_S_izeroE,
_ZNSt10__num_base5_S_ieE = 18,
_ZNSt10__num_base5_S_iEE = 24,
_ZNSt10__num_base7_S_iendE = 26};
# 1915 "/usr/include/c++/4.8/bits/locale_facets.h" 3
struct _ZSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE;
# 2254 "/usr/include/c++/4.8/bits/locale_facets.h" 3
struct _ZSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE;
# 77 "/usr/include/c++/4.8/iosfwd" 3
struct _ZSt9basic_iosIcSt11char_traitsIcEE;
# 86 "/usr/include/c++/4.8/iosfwd" 3
struct _ZSo; struct __SO__So;
# 49 "/usr/include/c++/4.8/bits/codecvt.h" 3
enum _ZNSt12codecvt_base6resultE {

_ZNSt12codecvt_base2okE,
_ZNSt12codecvt_base7partialE,
_ZNSt12codecvt_base5errorE,
_ZNSt12codecvt_base6noconvE};
# 340 "/usr/include/c++/4.8/bits/codecvt.h" 3
struct _ZSt7codecvtIcc11__mbstate_tE;
# 53 "/usr/include/x86_64-linux-gnu/c++/4.8/bits/basic_file.h" 3
struct _ZSt12__basic_fileIcE;
# 108 "/usr/include/c++/4.8/iosfwd" 3
struct _ZSt13basic_filebufIcSt11char_traitsIcEE;
# 114 "/usr/include/c++/4.8/iosfwd" 3
struct _ZSt14basic_ofstreamIcSt11char_traitsIcEE;
# 153 "/usr/include/x86_64-linux-gnu/bits/mathinline.h" 3
union _ZZ10__signbitlEUt_;
# 212 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h" 3
typedef unsigned long size_t;
#include "crt/host_runtime.h"
# 39 "/usr/include/xlocale.h" 3
typedef struct __locale_struct *__locale_t;
# 139 "/usr/include/x86_64-linux-gnu/bits/types.h" 3
typedef long __time_t;

typedef long __suseconds_t;
# 30 "/usr/include/x86_64-linux-gnu/bits/time.h" 3
struct timeval {

__time_t tv_sec;
__suseconds_t tv_usec;};
# 48 "/usr/include/stdio.h" 3
typedef struct _IO_FILE FILE;
# 86 "/usr/include/wchar.h" 3
union _ZN11__mbstate_tUt_E {

unsigned __wch;



char __wchb[4];};
# 83 "/usr/include/wchar.h" 3
struct __mbstate_t {
int __count;
# 93 "/usr/include/wchar.h" 3
union _ZN11__mbstate_tUt_E __value;};
typedef struct __mbstate_t __mbstate_t;
# 75 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h" 3
struct __pthread_internal_list {

struct __pthread_internal_list *__prev;
struct __pthread_internal_list *__next;};
typedef struct __pthread_internal_list __pthread_list_t;
# 92 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h" 3
struct _ZN15pthread_mutex_t17__pthread_mutex_sE {

int __lock;
unsigned __count;
int __owner;

unsigned __nusers;



int __kind;

short __spins;
short __elision;
__pthread_list_t __list;};
# 91 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h" 3
union pthread_mutex_t {
# 124 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h" 3
struct _ZN15pthread_mutex_t17__pthread_mutex_sE __data;
char __size[40];
long __align;};
typedef union pthread_mutex_t pthread_mutex_t;
# 7 "util.h"
typedef unsigned UINT;

typedef unsigned UINT64;
# 24 "filter.h"
struct filter {

UINT64 srcIP_;
unsigned char srcIPLen_;
unsigned char srcIPPref_[4];

UINT64 destIP_;
unsigned char destIPLen_;
unsigned char destIPPref_[4];

int srcPortleft_;
int srcPortright_;
int destPortleft_;
int destPortright_;
int pro_num_;


int bitstream;

unsigned cost_;
char Traceflag;
char add_marker;
char marker;
struct filter *Pointer;
struct filter *FPointer;};
# 10 "filter_db.h"
struct clsFilterDB {
# 19 "filter_db.h"
struct filter *filterSet_;
struct filter *addfilterSet_;
# 30 "filter_db.h"
int cntr_;char __nv_no_debug_dummy_end_padding_0[4];};
# 61 "/usr/include/x86_64-linux-gnu/sys/time.h" 3
typedef struct timezone *__restrict__ __timezone_ptr_t;
# 106 "/usr/include/wchar.h" 3
typedef __mbstate_t mbstate_t;
# 50 "/usr/include/x86_64-linux-gnu/c++/4.8/bits/gthr-default.h" 3
typedef pthread_mutex_t __gthread_mutex_t;
# 32 "/usr/include/x86_64-linux-gnu/c++/4.8/bits/atomic_word.h" 3
typedef int _Atomic_word;
# 186 "/usr/include/x86_64-linux-gnu/c++/4.8/bits/c++config.h" 3
typedef unsigned long _ZSt6size_t;
typedef long _ZSt9ptrdiff_t;
# 98 "/usr/include/c++/4.8/bits/postypes.h" 3
typedef _ZSt9ptrdiff_t _ZSt10streamsize;
# 136 "/usr/include/c++/4.8/iosfwd" 3
typedef struct _ZSo _ZSt7ostream;
# 160 "/usr/include/c++/4.8/iosfwd" 3
typedef struct _ZSt14basic_ofstreamIcSt11char_traitsIcEE _ZSt8ofstream;
# 239 "/usr/include/c++/4.8/bits/char_traits.h" 3
typedef mbstate_t _ZNSt11char_traitsIcE10state_typeE;
# 233 "/usr/include/c++/4.8/bits/char_traits.h" 3
struct _ZSt11char_traitsIcE {char __nv_no_debug_dummy_end_padding_0;};
# 62 "/usr/include/x86_64-linux-gnu/c++/4.8/bits/c++locale.h" 3
typedef __locale_t _ZSt10__c_locale;
# 338 "/usr/include/c++/4.8/bits/locale_classes.h" 3
struct _ZNSt6locale5facetE { const long *__vptr;
# 344 "/usr/include/c++/4.8/bits/locale_classes.h" 3
_Atomic_word _M_refcount;char __nv_no_debug_dummy_end_padding_0[4];};
# 338 "/usr/include/c++/4.8/bits/locale_classes.h" 3
struct __SO__NSt6locale5facetE { const long *__vptr;
# 344 "/usr/include/c++/4.8/bits/locale_classes.h" 3
_Atomic_word _M_refcount;};
# 62 "/usr/include/c++/4.8/bits/locale_classes.h" 3
struct _ZSt6locale {
# 280 "/usr/include/c++/4.8/bits/locale_classes.h" 3
struct _ZNSt6locale5_ImplE *_M_impl;};
# 261 "/usr/include/c++/4.8/bits/ios_base.h" 3
typedef enum _ZSt13_Ios_Fmtflags _ZNSt8ios_base8fmtflagsE;
# 336 "/usr/include/c++/4.8/bits/ios_base.h" 3
typedef enum _ZSt12_Ios_Iostate _ZNSt8ios_base7iostateE;
# 367 "/usr/include/c++/4.8/bits/ios_base.h" 3
typedef enum _ZSt13_Ios_Openmode _ZNSt8ios_base8openmodeE;
# 505 "/usr/include/c++/4.8/bits/ios_base.h" 3
struct _ZNSt8ios_base6_WordsE {

void *_M_pword;
long _M_iword;};
# 539 "/usr/include/c++/4.8/bits/ios_base.h" 3
struct _ZNSt8ios_base4InitE {char __nv_no_debug_dummy_end_padding_0;};
# 205 "/usr/include/c++/4.8/bits/ios_base.h" 3
struct _ZSt8ios_base { const long *__vptr;
# 458 "/usr/include/c++/4.8/bits/ios_base.h" 3
_ZSt10streamsize _M_precision;
_ZSt10streamsize _M_width;
_ZNSt8ios_base8fmtflagsE _M_flags;
_ZNSt8ios_base7iostateE _M_exception;
_ZNSt8ios_base7iostateE _M_streambuf_state;
# 496 "/usr/include/c++/4.8/bits/ios_base.h" 3
struct _ZNSt8ios_base14_Callback_listE *_M_callbacks;
# 513 "/usr/include/c++/4.8/bits/ios_base.h" 3
struct _ZNSt8ios_base6_WordsE _M_word_zero;




struct _ZNSt8ios_base6_WordsE _M_local_word[8];


int _M_word_size;
struct _ZNSt8ios_base6_WordsE *_M_word;
# 528 "/usr/include/c++/4.8/bits/ios_base.h" 3
struct _ZSt6locale _M_ios_locale;};
# 129 "/usr/include/c++/4.8/streambuf" 3
typedef char _ZNSt15basic_streambufIcSt11char_traitsIcEE9char_typeE;
typedef struct _ZSt11char_traitsIcE _ZNSt15basic_streambufIcSt11char_traitsIcEE11traits_typeE;
# 80 "/usr/include/c++/4.8/iosfwd" 3
struct _ZSt15basic_streambufIcSt11char_traitsIcEE { const long *__vptr;
# 184 "/usr/include/c++/4.8/streambuf" 3
_ZNSt15basic_streambufIcSt11char_traitsIcEE9char_typeE *_M_in_beg;
_ZNSt15basic_streambufIcSt11char_traitsIcEE9char_typeE *_M_in_cur;
_ZNSt15basic_streambufIcSt11char_traitsIcEE9char_typeE *_M_in_end;
_ZNSt15basic_streambufIcSt11char_traitsIcEE9char_typeE *_M_out_beg;
_ZNSt15basic_streambufIcSt11char_traitsIcEE9char_typeE *_M_out_cur;
_ZNSt15basic_streambufIcSt11char_traitsIcEE9char_typeE *_M_out_end;


struct _ZSt6locale _M_buf_locale;};
# 44 "/usr/include/x86_64-linux-gnu/c++/4.8/bits/ctype_base.h" 3
typedef const int *_ZNSt10ctype_base9__to_typeE;



typedef unsigned short _ZNSt10ctype_base4maskE;
# 41 "/usr/include/x86_64-linux-gnu/c++/4.8/bits/ctype_base.h" 3
struct _ZSt10ctype_base {char __nv_no_debug_dummy_end_padding_0;};
# 679 "/usr/include/c++/4.8/bits/locale_facets.h" 3
typedef char _ZNSt5ctypeIcE9char_typeE;
# 674 "/usr/include/c++/4.8/bits/locale_facets.h" 3
struct _ZSt5ctypeIcE {  const long *__b_NSt6locale5facetE___vptr;
# 344 "/usr/include/c++/4.8/bits/locale_classes.h" 3
_Atomic_word __b_NSt6locale5facetE__M_refcount;
# 683 "/usr/include/c++/4.8/bits/locale_facets.h" 3
_ZSt10__c_locale _M_c_locale_ctype;
char _M_del;
_ZNSt10ctype_base9__to_typeE _M_toupper;
_ZNSt10ctype_base9__to_typeE _M_tolower;
const _ZNSt10ctype_base4maskE *_M_table;
char _M_widen_ok;
char _M_widen[256];
char _M_narrow[256];
char _M_narrow_ok;char __nv_no_debug_dummy_end_padding_0[6];};
# 75 "/usr/include/c++/4.8/bits/basic_ios.h" 3
typedef char _ZNSt9basic_iosIcSt11char_traitsIcEE9char_typeE;
# 86 "/usr/include/c++/4.8/bits/basic_ios.h" 3
typedef struct _ZSt5ctypeIcE _ZNSt9basic_iosIcSt11char_traitsIcEE12__ctype_typeE;

typedef struct _ZSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE _ZNSt9basic_iosIcSt11char_traitsIcEE14__num_put_typeE;

typedef struct _ZSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE _ZNSt9basic_iosIcSt11char_traitsIcEE14__num_get_typeE;
# 77 "/usr/include/c++/4.8/iosfwd" 3
struct _ZSt9basic_iosIcSt11char_traitsIcEE { struct _ZSt8ios_base __b_St8ios_base;
# 95 "/usr/include/c++/4.8/bits/basic_ios.h" 3
struct _ZSo *_M_tie;
_ZNSt9basic_iosIcSt11char_traitsIcEE9char_typeE _M_fill;
char _M_fill_init;
struct _ZSt15basic_streambufIcSt11char_traitsIcEE *_M_streambuf;


const _ZNSt9basic_iosIcSt11char_traitsIcEE12__ctype_typeE *_M_ctype;

const _ZNSt9basic_iosIcSt11char_traitsIcEE14__num_put_typeE *_M_num_put;

const _ZNSt9basic_iosIcSt11char_traitsIcEE14__num_get_typeE *_M_num_get;};
# 62 "/usr/include/c++/4.8/ostream" 3
typedef char _ZNSo9char_typeE;
# 71 "/usr/include/c++/4.8/ostream" 3
typedef struct _ZSo _ZNSo14__ostream_typeE;
# 86 "/usr/include/c++/4.8/iosfwd" 3
struct _ZSo { const long *__vptr; struct _ZSt9basic_iosIcSt11char_traitsIcEE __v_St9basic_iosIcSt11char_traitsIcEE;}; struct __SO__So { const long *__vptr;};
# 42 "/usr/include/x86_64-linux-gnu/c++/4.8/bits/c++io.h" 3
typedef __gthread_mutex_t _ZSt8__c_lock;


typedef FILE _ZSt8__c_file;
# 53 "/usr/include/x86_64-linux-gnu/c++/4.8/bits/basic_file.h" 3
struct _ZSt12__basic_fileIcE {


_ZSt8__c_file *_M_cfile;


char _M_cfile_created;char __nv_no_debug_dummy_end_padding_0[7];};
# 76 "/usr/include/c++/4.8/fstream" 3
typedef char _ZNSt13basic_filebufIcSt11char_traitsIcEE9char_typeE;
# 83 "/usr/include/c++/4.8/fstream" 3
typedef struct _ZSt13basic_filebufIcSt11char_traitsIcEE _ZNSt13basic_filebufIcSt11char_traitsIcEE14__filebuf_typeE;
typedef struct _ZSt12__basic_fileIcE _ZNSt13basic_filebufIcSt11char_traitsIcEE11__file_typeE;
typedef _ZNSt11char_traitsIcE10state_typeE _ZNSt13basic_filebufIcSt11char_traitsIcEE12__state_typeE;
typedef struct _ZSt7codecvtIcc11__mbstate_tE _ZNSt13basic_filebufIcSt11char_traitsIcEE14__codecvt_typeE;
# 108 "/usr/include/c++/4.8/iosfwd" 3
struct _ZSt13basic_filebufIcSt11char_traitsIcEE { struct _ZSt15basic_streambufIcSt11char_traitsIcEE __b_St15basic_streambufIcSt11char_traitsIcEE;
# 93 "/usr/include/c++/4.8/fstream" 3
_ZSt8__c_lock _M_lock;


_ZNSt13basic_filebufIcSt11char_traitsIcEE11__file_typeE _M_file;


_ZNSt8ios_base8openmodeE _M_mode;


_ZNSt13basic_filebufIcSt11char_traitsIcEE12__state_typeE _M_state_beg;




_ZNSt13basic_filebufIcSt11char_traitsIcEE12__state_typeE _M_state_cur;



_ZNSt13basic_filebufIcSt11char_traitsIcEE12__state_typeE _M_state_last;


_ZNSt13basic_filebufIcSt11char_traitsIcEE9char_typeE *_M_buf;
# 121 "/usr/include/c++/4.8/fstream" 3
_ZSt6size_t _M_buf_size;


char _M_buf_allocated;
# 133 "/usr/include/c++/4.8/fstream" 3
char _M_reading;
char _M_writing;
# 142 "/usr/include/c++/4.8/fstream" 3
_ZNSt13basic_filebufIcSt11char_traitsIcEE9char_typeE _M_pback;
_ZNSt13basic_filebufIcSt11char_traitsIcEE9char_typeE *_M_pback_cur_save;
_ZNSt13basic_filebufIcSt11char_traitsIcEE9char_typeE *_M_pback_end_save;
char _M_pback_init;



const _ZNSt13basic_filebufIcSt11char_traitsIcEE14__codecvt_typeE *_M_codecvt;
# 156 "/usr/include/c++/4.8/fstream" 3
char *_M_ext_buf;




_ZSt10streamsize _M_ext_buf_size;
# 168 "/usr/include/c++/4.8/fstream" 3
const char *_M_ext_next;
char *_M_ext_end;};
# 610 "/usr/include/c++/4.8/fstream" 3
typedef struct _ZSt13basic_filebufIcSt11char_traitsIcEE _ZNSt14basic_ofstreamIcSt11char_traitsIcEE14__filebuf_typeE;
# 114 "/usr/include/c++/4.8/iosfwd" 3
struct _ZSt14basic_ofstreamIcSt11char_traitsIcEE { struct __SO__So __b_So;
# 614 "/usr/include/c++/4.8/fstream" 3
_ZNSt14basic_ofstreamIcSt11char_traitsIcEE14__filebuf_typeE _M_filebuf; struct _ZSt9basic_iosIcSt11char_traitsIcEE __v_St9basic_iosIcSt11char_traitsIcEE;};
# 153 "/usr/include/x86_64-linux-gnu/bits/mathinline.h" 3
union _ZZ10__signbitlEUt_ { long double __l; int __i[3];};
void *memcpy(void*, const void*, size_t); void *memset(void*, int, size_t);
# 251 "/usr/local/cuda-7.5/bin/..//include/cuda_runtime_api.h"
extern enum cudaError cudaDeviceReset(void);
# 2782 "/usr/local/cuda-7.5/bin/..//include/cuda_runtime_api.h"
extern enum cudaError cudaConfigureCall(struct dim3, struct dim3, size_t, struct CUstream_st *);
# 3999 "/usr/local/cuda-7.5/bin/..//include/cuda_runtime_api.h"
extern enum cudaError cudaMemcpy(void *, const void *, size_t, enum cudaMemcpyKind);
# 4800 "/usr/local/cuda-7.5/bin/..//include/cuda_runtime_api.h"
extern enum cudaError cudaMemset(void *, int, size_t);
# 85 "/usr/include/x86_64-linux-gnu/bits/stdio2.h" 3
extern int __fprintf_chk(FILE *__restrict__, int, const char *__restrict__, ...);

extern int __printf_chk(int, const char *__restrict__, ...);
# 543 "/usr/include/stdlib.h" 3
extern __attribute__((__nothrow__)) __attribute__((__noreturn__)) void exit(int);
# 4 "err_handler.h"
extern void _Z8err_quitPKc(const char *);
# 71 "/usr/include/x86_64-linux-gnu/sys/time.h" 3
extern __attribute__((__nothrow__)) int gettimeofday(struct timeval *__restrict__, struct timezone *__restrict__);
# 71 "main.cu"
extern double _Z9cpuSecondv(void);
# 78 "main.cu"
extern void _Z11bubble_sort11clsFilterDBi(struct clsFilterDB *, int);
# 517 "main.cu"
extern void _Z20host_conflict_detectP6filteriRi(struct filter *, int, int *);
# 594 "main.cu"
extern int main(int, char **);
extern int __cudaSetupArgSimple();
extern int __cudaLaunch();
# 49 "filter.h"
extern void _ZN6filterC1Ev(struct filter *const);
# 12 "filter_db.h"
extern void _ZN11clsFilterDBC1Ev(struct clsFilterDB *const);
extern void _ZN11clsFilterDBD1Ev(struct clsFilterDB *const);


extern int _ZN11clsFilterDB11loadFiltersEPc(struct clsFilterDB *const, char *);
extern int _ZN11clsFilterDB4sizeEv(struct clsFilterDB *const);
# 181 "/usr/include/c++/4.8/bits/locale_classes.h" 3
extern __attribute__((__nothrow__)) __attribute__((visibility("default"))) void _ZNSt6localeD1Ev(struct _ZSt6locale *const);
# 784 "/usr/include/c++/4.8/bits/ios_base.h" 3
extern __attribute__((visibility("default"))) void _ZNSt8ios_baseD1Ev(struct _ZSt8ios_base *const);
extern __attribute__((visibility("default"))) void _ZNSt8ios_baseD2Ev(struct _ZSt8ios_base *const);

extern __attribute__((__nothrow__)) __attribute__((visibility("default"))) void _ZNSt8ios_baseC1Ev(struct _ZSt8ios_base *const);
extern __attribute__((visibility("default"))) void _ZNSt8ios_baseC2Ev(struct _ZSt8ios_base *const);
# 543 "/usr/include/c++/4.8/bits/ios_base.h" 3
extern __attribute__((visibility("default"))) void _ZNSt8ios_base4InitC1Ev(struct _ZNSt8ios_base4InitE *const);
extern __attribute__((visibility("default"))) void _ZNSt8ios_base4InitD1Ev(struct _ZNSt8ios_base4InitE *const);
# 197 "/usr/include/c++/4.8/streambuf" 3
extern __inline__ __attribute__((visibility("default"))) void _ZNSt15basic_streambufIcSt11char_traitsIcEED1Ev(struct _ZSt15basic_streambufIcSt11char_traitsIcEE *const);
extern __inline__ __attribute__((visibility("default"))) void _ZNSt15basic_streambufIcSt11char_traitsIcEED0Ev(struct _ZSt15basic_streambufIcSt11char_traitsIcEE *const);
extern __inline__ __attribute__((visibility("default"))) void _ZNSt15basic_streambufIcSt11char_traitsIcEED2Ev(struct _ZSt15basic_streambufIcSt11char_traitsIcEE *const);
# 865 "/usr/include/c++/4.8/bits/locale_facets.h" 3
extern  __attribute__((__weak__)) /* COMDAT group: _ZNKSt5ctypeIcE5widenEc */ __inline__ __attribute__((visibility("default"))) _ZNSt5ctypeIcE9char_typeE _ZNKSt5ctypeIcE5widenEc(const struct _ZSt5ctypeIcE *const, char);
# 1159 "/usr/include/c++/4.8/bits/locale_facets.h" 3
extern __attribute__((visibility("default"))) void _ZNKSt5ctypeIcE13_M_widen_initEv(const struct _ZSt5ctypeIcE *const);
# 142 "/usr/include/c++/4.8/bits/basic_ios.h" 3
extern __attribute__((visibility("default"))) void _ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(struct _ZSt9basic_iosIcSt11char_traitsIcEE *const, _ZNSt8ios_base7iostateE);
# 276 "/usr/include/c++/4.8/bits/basic_ios.h" 3
extern __inline__ __attribute__((visibility("default"))) void _ZNSt9basic_iosIcSt11char_traitsIcEED1Ev(struct _ZSt9basic_iosIcSt11char_traitsIcEE *const);
extern __inline__ __attribute__((visibility("default"))) void _ZNSt9basic_iosIcSt11char_traitsIcEED0Ev(struct _ZSt9basic_iosIcSt11char_traitsIcEE *const);
extern __inline__ __attribute__((visibility("default"))) void _ZNSt9basic_iosIcSt11char_traitsIcEED2Ev(struct _ZSt9basic_iosIcSt11char_traitsIcEE *const);
# 454 "/usr/include/c++/4.8/bits/basic_ios.h" 3
extern __inline__ __attribute__((visibility("default"))) void _ZNSt9basic_iosIcSt11char_traitsIcEEC1Ev(struct _ZSt9basic_iosIcSt11char_traitsIcEE *const);
extern __inline__ __attribute__((visibility("default"))) void _ZNSt9basic_iosIcSt11char_traitsIcEEC2Ev(struct _ZSt9basic_iosIcSt11char_traitsIcEE *const);
# 466 "/usr/include/c++/4.8/bits/basic_ios.h" 3
extern __attribute__((visibility("default"))) void _ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(struct _ZSt9basic_iosIcSt11char_traitsIcEE *const, struct _ZSt15basic_streambufIcSt11char_traitsIcEE *);
# 93 "/usr/include/c++/4.8/ostream" 3
extern __inline__ __attribute__((visibility("default"))) void _ZNSoD2Ev(struct _ZSo *const, const long *const *);
extern __inline__ __attribute__((visibility("default"))) void _ZNSoD0Ev(struct _ZSo *const);
extern __inline__ __attribute__((visibility("default"))) void _ZTv0_n24_NSoD0Ev(struct _ZSo *const);
extern __inline__ __attribute__((visibility("default"))) void _ZNSoD1Ev(struct _ZSo *const);
extern __inline__ __attribute__((visibility("default"))) void _ZTv0_n24_NSoD1Ev(struct _ZSo *const);
# 108 "/usr/include/c++/4.8/ostream" 3
extern __inline__ __attribute__((visibility("default"))) _ZNSo14__ostream_typeE *_ZNSolsEPFRSoS_E(struct _ZSo *const, _ZNSo14__ostream_typeE *(*)(_ZNSo14__ostream_typeE *));
# 220 "/usr/include/c++/4.8/ostream" 3
extern __inline__ __attribute__((visibility("default"))) _ZNSo14__ostream_typeE *_ZNSolsEd(struct _ZSo *const, double);
# 303 "/usr/include/c++/4.8/ostream" 3
extern __attribute__((visibility("default"))) _ZNSo14__ostream_typeE *_ZNSo3putEc(struct _ZSo *const, _ZNSo9char_typeE);
# 348 "/usr/include/c++/4.8/ostream" 3
extern __attribute__((visibility("default"))) _ZNSo14__ostream_typeE *_ZNSo5flushEv(struct _ZSo *const);
# 389 "/usr/include/c++/4.8/ostream" 3
extern __attribute__((visibility("default"))) _ZNSo14__ostream_typeE *_ZNSo9_M_insertIdEERSoT_(struct _ZSo *const, double);
# 85 "/usr/include/x86_64-linux-gnu/c++/4.8/bits/basic_file.h" 3
extern __attribute__((visibility("default"))) void _ZNSt12__basic_fileIcED1Ev(struct _ZSt12__basic_fileIcE *const);
# 213 "/usr/include/c++/4.8/fstream" 3
extern __attribute__((visibility("default"))) void _ZNSt13basic_filebufIcSt11char_traitsIcEEC1Ev(struct _ZSt13basic_filebufIcSt11char_traitsIcEE *const);





extern __inline__ __attribute__((visibility("default"))) void _ZNSt13basic_filebufIcSt11char_traitsIcEED1Ev(struct _ZSt13basic_filebufIcSt11char_traitsIcEE *const);
extern __inline__ __attribute__((visibility("default"))) void _ZNSt13basic_filebufIcSt11char_traitsIcEED0Ev(struct _ZSt13basic_filebufIcSt11char_traitsIcEE *const);
extern __inline__ __attribute__((visibility("default"))) void _ZNSt13basic_filebufIcSt11char_traitsIcEED2Ev(struct _ZSt13basic_filebufIcSt11char_traitsIcEE *const);
# 297 "/usr/include/c++/4.8/fstream" 3
extern __attribute__((visibility("default"))) _ZNSt13basic_filebufIcSt11char_traitsIcEE14__filebuf_typeE *_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv(struct _ZSt13basic_filebufIcSt11char_traitsIcEE *const);
# 625 "/usr/include/c++/4.8/fstream" 3
extern __inline__ __attribute__((visibility("default"))) void _ZNSt14basic_ofstreamIcSt11char_traitsIcEEC2Ev(struct _ZSt14basic_ofstreamIcSt11char_traitsIcEE *const, const long *const *);
extern __inline__ __attribute__((visibility("default"))) void _ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1Ev(struct _ZSt14basic_ofstreamIcSt11char_traitsIcEE *const);
# 673 "/usr/include/c++/4.8/fstream" 3
extern __inline__ __attribute__((visibility("default"))) void _ZNSt14basic_ofstreamIcSt11char_traitsIcEED2Ev(struct _ZSt14basic_ofstreamIcSt11char_traitsIcEE *const, const long *const *);
extern __inline__ __attribute__((visibility("default"))) void _ZNSt14basic_ofstreamIcSt11char_traitsIcEED0Ev(struct _ZSt14basic_ofstreamIcSt11char_traitsIcEE *const);
extern __inline__ __attribute__((visibility("default"))) void _ZTv0_n24_NSt14basic_ofstreamIcSt11char_traitsIcEED0Ev(struct _ZSt14basic_ofstreamIcSt11char_traitsIcEE *const);
extern __inline__ __attribute__((visibility("default"))) void _ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(struct _ZSt14basic_ofstreamIcSt11char_traitsIcEE *const);
extern __attribute__((visibility("default"))) void _ZTv0_n24_NSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(struct _ZSt14basic_ofstreamIcSt11char_traitsIcEE *const);
# 56 "/usr/include/c++/4.8/bits/functexcept.h" 3
extern __attribute__((__noreturn__)) __attribute__((visibility("default"))) void _ZSt16__throw_bad_castv(void);
# 76 "/usr/include/c++/4.8/bits/ostream_insert.h" 3
extern struct _ZSo *_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(struct _ZSo *, const char *, _ZSt10streamsize);
# 564 "/usr/include/c++/4.8/ostream" 3
extern __inline__ struct _ZSo *_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(struct _ZSo *);
# 530 "/usr/include/c++/4.8/ostream" 3
extern __inline__ struct _ZSo *_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(struct _ZSo *, const char *);
extern void __nv_dummy_param_ref();
extern void __nv_save_fatbinhandle_for_managed_rt();
extern int __cudaRegisterEntry();
extern int __cudaRegisterBinary();
static void __sti___12_main_cpp1_ii_db(void) __attribute__((__constructor__));
extern int __cxa_atexit();
# 170 "/usr/include/stdio.h" 3
extern struct _IO_FILE *stderr;
# 14 "main.cu"
struct clsFilterDB db = {0};
# 61 "/usr/include/c++/4.8/iostream" 3
extern _ZSt7ostream _ZSt4cout __attribute__((visibility("default")));
# 74 "/usr/include/c++/4.8/iostream" 3
static struct _ZNSt8ios_base4InitE _ZSt8__ioinit __attribute__((visibility("default"))) = {0};
extern void *__dso_handle __attribute__((visibility("hidden")));
# 71 "main.cu"
double _Z9cpuSecondv(void) {
 struct timeval __cuda_local_var_62537_20_non_const_tp;
gettimeofday((&__cuda_local_var_62537_20_non_const_tp), ((struct timezone *)0LL));
return (((double)(__cuda_local_var_62537_20_non_const_tp.tv_sec)) * (1000000.0)) + ((double)(__cuda_local_var_62537_20_non_const_tp.tv_usec));
}


void _Z11bubble_sort11clsFilterDBi( struct clsFilterDB *item,  int len)
{
 int __cuda_local_var_62545_9_non_const_i;
# 80 "main.cu"
 int __cuda_local_var_62545_12_non_const_j;
 struct filter __cuda_local_var_62546_12_non_const_temp;
# 81 "main.cu"
_ZN6filterC1Ev((&__cuda_local_var_62546_12_non_const_temp));
for (__cuda_local_var_62545_9_non_const_i = 0; (__cuda_local_var_62545_9_non_const_i < (len - 1)); __cuda_local_var_62545_9_non_const_i++) {
for (__cuda_local_var_62545_12_non_const_j = 0; (__cuda_local_var_62545_12_non_const_j < ((len - __cuda_local_var_62545_9_non_const_i) - 1)); __cuda_local_var_62545_12_non_const_j++)
{
if (((int)(((item->filterSet_)[__cuda_local_var_62545_12_non_const_j]).destIPLen_)) > ((int)(((item->filterSet_)[(__cuda_local_var_62545_12_non_const_j + 1)]).destIPLen_)))
{


__cuda_local_var_62546_12_non_const_temp = ((item->filterSet_)[__cuda_local_var_62545_12_non_const_j]);
((item->filterSet_)[__cuda_local_var_62545_12_non_const_j]) = ((item->filterSet_)[(__cuda_local_var_62545_12_non_const_j + 1)]);
((item->filterSet_)[(__cuda_local_var_62545_12_non_const_j + 1)]) = __cuda_local_var_62546_12_non_const_temp;

}
if (((int)(((item->filterSet_)[__cuda_local_var_62545_12_non_const_j]).srcIPLen_)) > ((int)(((item->filterSet_)[(__cuda_local_var_62545_12_non_const_j + 1)]).srcIPLen_)))
{

__cuda_local_var_62546_12_non_const_temp = ((item->filterSet_)[__cuda_local_var_62545_12_non_const_j]);
((item->filterSet_)[__cuda_local_var_62545_12_non_const_j]) = ((item->filterSet_)[(__cuda_local_var_62545_12_non_const_j + 1)]);
((item->filterSet_)[(__cuda_local_var_62545_12_non_const_j + 1)]) = __cuda_local_var_62546_12_non_const_temp;

}

} } 

}
# 517 "main.cu"
void _Z20host_conflict_detectP6filteriRi( struct filter *filterSet,  int rule_size,  int *total)
{  {
 int i;
# 519 "main.cu"
i = 0; for (; (i < rule_size); i++) { {
 int j;
# 520 "main.cu"
j = 0; for (; (j < i); j++) {
if ((((int)((filterSet[i]).srcIPLen_)) > ((int)((filterSet[j]).srcIPLen_))) && ((_Z9genPrefixjh(((filterSet[i]).srcIP_), ((filterSet[j]).srcIPLen_))) == ((filterSet[j]).srcIP_))) {
if (((!((filterSet[i]).pro_num_)) || (!((filterSet[j]).pro_num_))) || (((filterSet[i]).pro_num_) == ((filterSet[j]).pro_num_))) {
if (((((((filterSet[i]).destPortleft_) <= ((filterSet[j]).destPortright_)) && (((filterSet[i]).destPortleft_) >= ((filterSet[j]).destPortleft_))) || ((((filterSet[i]).destPortright_) >= ((filterSet[j]).destPortleft_)) && (((filterSet[i]).destPortright_) <= ((filterSet[j]).destPortright_)))) || ((((filterSet[i]).destPortright_) >= ((filterSet[j]).destPortright_)) && (((filterSet[i]).destPortleft_) <= ((filterSet[j]).destPortleft_)))) && ((((((filterSet[i]).srcPortleft_) <= ((filterSet[j]).srcPortright_)) && (((filterSet[i]).srcPortleft_) >= ((filterSet[j]).srcPortleft_))) || ((((filterSet[i]).srcPortright_) >= ((filterSet[j]).srcPortleft_)) && (((filterSet[i]).srcPortright_) <= ((filterSet[j]).srcPortright_)))) || ((((filterSet[i]).srcPortright_) >= ((filterSet[j]).srcPortright_)) && (((filterSet[i]).srcPortleft_) <= ((filterSet[j]).srcPortleft_)))))
# 539 "main.cu"
{


if (((int)((filterSet[i]).destIPLen_)) > ((int)((filterSet[j]).destIPLen_))) {
if ((_Z9genPrefixjh(((filterSet[i]).destIP_), ((filterSet[j]).destIPLen_))) == ((filterSet[j]).destIP_)) {


if ((((((filterSet[i]).destPortleft_) <= ((filterSet[j]).destPortleft_)) && (((filterSet[i]).destPortright_) >= ((filterSet[j]).destPortright_))) && ((((filterSet[i]).srcPortleft_) <= ((filterSet[j]).srcPortleft_)) && (((filterSet[i]).srcPortright_) >= ((filterSet[j]).srcPortright_)))) && ((((filterSet[i]).pro_num_) == ((filterSet[j]).pro_num_)) || (((filterSet[i]).pro_num_) == 0)))



{ } else  {

(*total)++; }
}
}

if (((int)((filterSet[i]).destIPLen_)) < ((int)((filterSet[j]).destIPLen_))) {
if ((_Z9genPrefixjh(((filterSet[j]).destIP_), ((filterSet[i]).destIPLen_))) == ((filterSet[i]).destIP_)) {
# 567 "main.cu"
(*total)++;
}
}

if (((int)((filterSet[i]).destIPLen_)) == ((int)((filterSet[j]).destIPLen_))) {
if (((filterSet[i]).destIP_) == ((filterSet[j]).destIP_)) {


if ((((((filterSet[i]).destPortleft_) <= ((filterSet[j]).destPortleft_)) && (((filterSet[i]).destPortright_) >= ((filterSet[j]).destPortright_))) && ((((filterSet[i]).srcPortleft_) <= ((filterSet[j]).srcPortleft_)) && (((filterSet[i]).srcPortright_) >= ((filterSet[j]).srcPortright_)))) && ((((filterSet[i]).pro_num_) == ((filterSet[j]).pro_num_)) || (((filterSet[i]).pro_num_) == 0)))



{ } else  {

(*total)++; }
}
}

}
}
}
} }
} } 

}


int main( int argc,  char **argv)
{  struct dim3 __T23;
 unsigned __T24;
 struct dim3 __T25;
 unsigned __T26;
 struct clsFilterDB __T27;
 struct dim3 __T28;
 unsigned __T29;
 struct dim3 __T210;
 unsigned __T211;
 struct dim3 __T212;
 unsigned __T213;
 struct dim3 __T214;
 unsigned __T215;
# 597 "main.cu"
 _ZSt8ofstream __cuda_local_var_62918_14_non_const_fout;

 double __cuda_local_var_62920_12_non_const_sort_start;
# 599 "main.cu"
 double __cuda_local_var_62920_41_non_const_g1conflict_start;
# 599 "main.cu"
 double __cuda_local_var_62920_59_non_const_g2conflict_start;
# 599 "main.cu"
 double __cuda_local_var_62920_77_non_const_g0conflict_start;
 double __cuda_local_var_62921_12_non_const_sort_time;
# 600 "main.cu"
 double __cuda_local_var_62921_39_non_const_g1conflict_time;
# 600 "main.cu"
 double __cuda_local_var_62921_56_non_const_g2conflict_time;
# 600 "main.cu"
 double __cuda_local_var_62921_73_non_const_g0conflict_time;
 int __cuda_local_var_62922_9_non_const_db_size;
 int __cuda_local_var_62923_9_non_const_total;
 int *__cuda_local_var_62924_10_non_const_d_total;
 int *__cuda_local_var_62925_10_non_const_h_total;
 int __cuda_local_var_62926_9_non_const_sum;


 struct filter *__cuda_local_var_62929_13_non_const_dev_filterSet;
# 616 "main.cu"
 int __cuda_local_var_62937_9_non_const_block;
 int __cuda_local_var_62938_9_non_const_grid;
# 597 "main.cu"
_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1Ev((&__cuda_local_var_62918_14_non_const_fout));




__cuda_local_var_62923_9_non_const_total = 0;


__cuda_local_var_62926_9_non_const_sum = 0;
# 611 "main.cu"
if ((_ZN11clsFilterDB11loadFiltersEPc((&db), (argv[1]))) == (-1)) {
_Z8err_quitPKc(((const char *)"Error: unable to open the filter database.")); }

__cuda_local_var_62922_9_non_const_db_size = (_ZN11clsFilterDB4sizeEv((&db)));
printf(((const char *)"number of rules: %d\n"), __cuda_local_var_62922_9_non_const_db_size);
__cuda_local_var_62937_9_non_const_block = 128;
__cuda_local_var_62938_9_non_const_grid = 8;
# 628 "main.cu"
cudaMalloc(((void **)(&__cuda_local_var_62929_13_non_const_dev_filterSet)), (((unsigned long)__cuda_local_var_62922_9_non_const_db_size) * 72UL));
do {  enum cudaError __cuda_local_var_62941_22_non_const___err;
# 629 "main.cu"
__cuda_local_var_62941_22_non_const___err = (cudaGetLastError()); if (((int)__cuda_local_var_62941_22_non_const___err) != 0) { fprintf(stderr, ((const char *)"Fatal error: %s (%s at %s:%d)\n"), ((const char *)("cudaMalloc1 fail")), (cudaGetErrorString(__cuda_local_var_62941_22_non_const___err)), ((const char *)("main.cu")), 629); fprintf(stderr, ((const char *)"*** FAILED - ABORTING\n")); exit(1); } } while (0);
cudaMalloc(((void **)(&__cuda_local_var_62924_10_non_const_d_total)), (((unsigned long)__cuda_local_var_62938_9_non_const_grid) * 4UL));
do {  enum cudaError __cuda_local_var_62943_22_non_const___err;
# 631 "main.cu"
__cuda_local_var_62943_22_non_const___err = (cudaGetLastError()); if (((int)__cuda_local_var_62943_22_non_const___err) != 0) { fprintf(stderr, ((const char *)"Fatal error: %s (%s at %s:%d)\n"), ((const char *)("cudaMalloc2 fail")), (cudaGetErrorString(__cuda_local_var_62943_22_non_const___err)), ((const char *)("main.cu")), 631); fprintf(stderr, ((const char *)"*** FAILED - ABORTING\n")); exit(1); } } while (0);
cudaMemset(((void *)__cuda_local_var_62924_10_non_const_d_total), 0, (((unsigned long)__cuda_local_var_62938_9_non_const_grid) * 4UL));

__cuda_local_var_62925_10_non_const_h_total = ((int *)(malloc((((unsigned long)__cuda_local_var_62938_9_non_const_grid) * 4UL))));

__cuda_local_var_62920_77_non_const_g0conflict_start = (_Z9cpuSecondv());

cudaMemcpy(((void *)__cuda_local_var_62929_13_non_const_dev_filterSet), ((const void *)(db.filterSet_)), (((unsigned long)__cuda_local_var_62922_9_non_const_db_size) * 72UL), cudaMemcpyHostToDevice);
do {  enum cudaError __cuda_local_var_62951_22_non_const___err;
# 639 "main.cu"
__cuda_local_var_62951_22_non_const___err = (cudaGetLastError()); if (((int)__cuda_local_var_62951_22_non_const___err) != 0) { fprintf(stderr, ((const char *)"Fatal error: %s (%s at %s:%d)\n"), ((const char *)("cudaMemcpy1 fail")), (cudaGetErrorString(__cuda_local_var_62951_22_non_const___err)), ((const char *)("main.cu")), 639); fprintf(stderr, ((const char *)"*** FAILED - ABORTING\n")); exit(1); } } while (0);
(cudaConfigureCall((((void)((__T24 = ((unsigned)__cuda_local_var_62938_9_non_const_grid)) , (void)((((__T23.x) = __T24) , (void)((__T23.y) = 1U)) , ((__T23.z) = 1U)))) , __T23), (((void)((__T26 = ((unsigned)__cuda_local_var_62937_9_non_const_block)) , (void)((((__T25.x) = __T26) , (void)((__T25.y) = 1U)) , ((__T25.z) = 1U)))) , __T25), 0UL, ((struct CUstream_st *)0LL))) ? ((void)0) : (__device_stub__Z21gpu_conflict_detect_0P6filteriPi(__cuda_local_var_62929_13_non_const_dev_filterSet, __cuda_local_var_62922_9_non_const_db_size, __cuda_local_var_62924_10_non_const_d_total));




cudaMemcpy(((void *)__cuda_local_var_62925_10_non_const_h_total), ((const void *)__cuda_local_var_62924_10_non_const_d_total), (((unsigned long)__cuda_local_var_62938_9_non_const_grid) * 4UL), cudaMemcpyDeviceToHost);
__cuda_local_var_62926_9_non_const_sum = 0; {
 int tmp;
# 647 "main.cu"
tmp = 0; for (; (tmp < __cuda_local_var_62938_9_non_const_grid); tmp++) {
__cuda_local_var_62926_9_non_const_sum += (__cuda_local_var_62925_10_non_const_h_total[tmp]); } }

__cuda_local_var_62921_73_non_const_g0conflict_time = ((_Z9cpuSecondv()) - __cuda_local_var_62920_77_non_const_g0conflict_start);
_ZNSolsEPFRSoS_E((_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc((_ZNSolsEd((_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc((&_ZSt4cout), ((const char *)"m0_detection_time: "))), __cuda_local_var_62921_73_non_const_g0conflict_time)), ((const char *)" usec"))), _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_);
printf(((const char *)"m0 conflict detection: %d\t"), __cuda_local_var_62926_9_non_const_sum);


_ZNSolsEPFRSoS_E((&_ZSt4cout), _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_);




free(((void *)__cuda_local_var_62925_10_non_const_h_total));
cudaFree(((void *)__cuda_local_var_62929_13_non_const_dev_filterSet));
cudaFree(((void *)__cuda_local_var_62924_10_non_const_d_total));
cudaDeviceReset();


__cuda_local_var_62920_12_non_const_sort_start = (_Z9cpuSecondv());
(_Z11bubble_sort11clsFilterDBi(((__T27 = db) , (&__T27)), __cuda_local_var_62922_9_non_const_db_size)) , (void)(_ZN11clsFilterDBD1Ev((&__T27)));
__cuda_local_var_62921_12_non_const_sort_time = ((_Z9cpuSecondv()) - __cuda_local_var_62920_12_non_const_sort_start);
# 674 "main.cu"
cudaMalloc(((void **)(&__cuda_local_var_62929_13_non_const_dev_filterSet)), (((unsigned long)__cuda_local_var_62922_9_non_const_db_size) * 72UL));
do {  enum cudaError __cuda_local_var_62987_22_non_const___err;
# 675 "main.cu"
__cuda_local_var_62987_22_non_const___err = (cudaGetLastError()); if (((int)__cuda_local_var_62987_22_non_const___err) != 0) { fprintf(stderr, ((const char *)"Fatal error: %s (%s at %s:%d)\n"), ((const char *)("cudaMalloc1 fail")), (cudaGetErrorString(__cuda_local_var_62987_22_non_const___err)), ((const char *)("main.cu")), 675); fprintf(stderr, ((const char *)"*** FAILED - ABORTING\n")); exit(1); } } while (0);
cudaMalloc(((void **)(&__cuda_local_var_62924_10_non_const_d_total)), (((unsigned long)__cuda_local_var_62938_9_non_const_grid) * 4UL));
do {  enum cudaError __cuda_local_var_62989_22_non_const___err;
# 677 "main.cu"
__cuda_local_var_62989_22_non_const___err = (cudaGetLastError()); if (((int)__cuda_local_var_62989_22_non_const___err) != 0) { fprintf(stderr, ((const char *)"Fatal error: %s (%s at %s:%d)\n"), ((const char *)("cudaMalloc2 fail")), (cudaGetErrorString(__cuda_local_var_62989_22_non_const___err)), ((const char *)("main.cu")), 677); fprintf(stderr, ((const char *)"*** FAILED - ABORTING\n")); exit(1); } } while (0);
cudaMemset(((void *)__cuda_local_var_62924_10_non_const_d_total), 0, (((unsigned long)__cuda_local_var_62938_9_non_const_grid) * 4UL));
__cuda_local_var_62925_10_non_const_h_total = ((int *)(malloc((((unsigned long)__cuda_local_var_62938_9_non_const_grid) * 4UL))));

__cuda_local_var_62920_41_non_const_g1conflict_start = (_Z9cpuSecondv());

cudaMemcpy(((void *)__cuda_local_var_62929_13_non_const_dev_filterSet), ((const void *)(db.filterSet_)), (((unsigned long)__cuda_local_var_62922_9_non_const_db_size) * 72UL), cudaMemcpyHostToDevice);
do {  enum cudaError __cuda_local_var_62996_22_non_const___err;
# 684 "main.cu"
__cuda_local_var_62996_22_non_const___err = (cudaGetLastError()); if (((int)__cuda_local_var_62996_22_non_const___err) != 0) { fprintf(stderr, ((const char *)"Fatal error: %s (%s at %s:%d)\n"), ((const char *)("cudaMemcpy1 fail")), (cudaGetErrorString(__cuda_local_var_62996_22_non_const___err)), ((const char *)("main.cu")), 684); fprintf(stderr, ((const char *)"*** FAILED - ABORTING\n")); exit(1); } } while (0);
(cudaConfigureCall((((void)((__T29 = ((unsigned)__cuda_local_var_62938_9_non_const_grid)) , (void)((((__T28.x) = __T29) , (void)((__T28.y) = 1U)) , ((__T28.z) = 1U)))) , __T28), (((void)((__T211 = ((unsigned)__cuda_local_var_62937_9_non_const_block)) , (void)((((__T210.x) = __T211) , (void)((__T210.y) = 1U)) , ((__T210.z) = 1U)))) , __T210), 0UL, ((struct CUstream_st *)0LL))) ? ((void)0) : (__device_stub__Z21gpu_conflict_detect_1P6filteriPi(__cuda_local_var_62929_13_non_const_dev_filterSet, __cuda_local_var_62922_9_non_const_db_size, __cuda_local_var_62924_10_non_const_d_total));




cudaMemcpy(((void *)__cuda_local_var_62925_10_non_const_h_total), ((const void *)__cuda_local_var_62924_10_non_const_d_total), (((unsigned long)__cuda_local_var_62938_9_non_const_grid) * 4UL), cudaMemcpyDeviceToHost);
__cuda_local_var_62926_9_non_const_sum = 0; {
 int tmp;
# 692 "main.cu"
tmp = 0; for (; (tmp < __cuda_local_var_62938_9_non_const_grid); tmp++) {
__cuda_local_var_62926_9_non_const_sum += (__cuda_local_var_62925_10_non_const_h_total[tmp]); } }

__cuda_local_var_62921_39_non_const_g1conflict_time = ((_Z9cpuSecondv()) - __cuda_local_var_62920_41_non_const_g1conflict_start);
_ZNSolsEPFRSoS_E((_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc((_ZNSolsEd((_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc((&_ZSt4cout), ((const char *)"m1_detection_time: "))), __cuda_local_var_62921_39_non_const_g1conflict_time)), ((const char *)" usec"))), _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_);
printf(((const char *)"m1 conflict detection: %d\t"), __cuda_local_var_62926_9_non_const_sum);


_ZNSolsEPFRSoS_E((&_ZSt4cout), _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_);




free(((void *)__cuda_local_var_62925_10_non_const_h_total));
cudaFree(((void *)__cuda_local_var_62929_13_non_const_dev_filterSet));
cudaFree(((void *)__cuda_local_var_62924_10_non_const_d_total));
cudaDeviceReset();




cudaMalloc(((void **)(&__cuda_local_var_62929_13_non_const_dev_filterSet)), (((unsigned long)__cuda_local_var_62922_9_non_const_db_size) * 72UL));
do {  enum cudaError __cuda_local_var_63026_22_non_const___err;
# 714 "main.cu"
__cuda_local_var_63026_22_non_const___err = (cudaGetLastError()); if (((int)__cuda_local_var_63026_22_non_const___err) != 0) { fprintf(stderr, ((const char *)"Fatal error: %s (%s at %s:%d)\n"), ((const char *)("cudaMalloc1 fail")), (cudaGetErrorString(__cuda_local_var_63026_22_non_const___err)), ((const char *)("main.cu")), 714); fprintf(stderr, ((const char *)"*** FAILED - ABORTING\n")); exit(1); } } while (0);
cudaMalloc(((void **)(&__cuda_local_var_62924_10_non_const_d_total)), (((unsigned long)__cuda_local_var_62938_9_non_const_grid) * 4UL));
do {  enum cudaError __cuda_local_var_63028_22_non_const___err;
# 716 "main.cu"
__cuda_local_var_63028_22_non_const___err = (cudaGetLastError()); if (((int)__cuda_local_var_63028_22_non_const___err) != 0) { fprintf(stderr, ((const char *)"Fatal error: %s (%s at %s:%d)\n"), ((const char *)("cudaMalloc2 fail")), (cudaGetErrorString(__cuda_local_var_63028_22_non_const___err)), ((const char *)("main.cu")), 716); fprintf(stderr, ((const char *)"*** FAILED - ABORTING\n")); exit(1); } } while (0);
cudaMemset(((void *)__cuda_local_var_62924_10_non_const_d_total), 0, (((unsigned long)__cuda_local_var_62938_9_non_const_grid) * 4UL));
__cuda_local_var_62925_10_non_const_h_total = ((int *)(malloc((((unsigned long)__cuda_local_var_62938_9_non_const_grid) * 4UL))));


__cuda_local_var_62920_59_non_const_g2conflict_start = (_Z9cpuSecondv());

cudaMemcpy(((void *)__cuda_local_var_62929_13_non_const_dev_filterSet), ((const void *)(db.filterSet_)), (((unsigned long)__cuda_local_var_62922_9_non_const_db_size) * 72UL), cudaMemcpyHostToDevice);
do {  enum cudaError __cuda_local_var_63036_22_non_const___err;
# 724 "main.cu"
__cuda_local_var_63036_22_non_const___err = (cudaGetLastError()); if (((int)__cuda_local_var_63036_22_non_const___err) != 0) { fprintf(stderr, ((const char *)"Fatal error: %s (%s at %s:%d)\n"), ((const char *)("cudaMemcpy1 fail")), (cudaGetErrorString(__cuda_local_var_63036_22_non_const___err)), ((const char *)("main.cu")), 724); fprintf(stderr, ((const char *)"*** FAILED - ABORTING\n")); exit(1); } } while (0);
(cudaConfigureCall((((void)((__T213 = ((unsigned)__cuda_local_var_62938_9_non_const_grid)) , (void)((((__T212.x) = __T213) , (void)((__T212.y) = 1U)) , ((__T212.z) = 1U)))) , __T212), (((void)((__T215 = ((unsigned)__cuda_local_var_62937_9_non_const_block)) , (void)((((__T214.x) = __T215) , (void)((__T214.y) = 1U)) , ((__T214.z) = 1U)))) , __T214), 0UL, ((struct CUstream_st *)0LL))) ? ((void)0) : (__device_stub__Z21gpu_conflict_detect_2P6filteriPi(__cuda_local_var_62929_13_non_const_dev_filterSet, __cuda_local_var_62922_9_non_const_db_size, __cuda_local_var_62924_10_non_const_d_total));




cudaMemcpy(((void *)__cuda_local_var_62925_10_non_const_h_total), ((const void *)__cuda_local_var_62924_10_non_const_d_total), (((unsigned long)__cuda_local_var_62938_9_non_const_grid) * 4UL), cudaMemcpyDeviceToHost);
__cuda_local_var_62926_9_non_const_sum = 0; {
 int tmp;
# 732 "main.cu"
tmp = 0; for (; (tmp < __cuda_local_var_62938_9_non_const_grid); tmp++) {
__cuda_local_var_62926_9_non_const_sum += (__cuda_local_var_62925_10_non_const_h_total[tmp]); } }

__cuda_local_var_62921_56_non_const_g2conflict_time = ((_Z9cpuSecondv()) - __cuda_local_var_62920_59_non_const_g2conflict_start);
_ZNSolsEPFRSoS_E((_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc((_ZNSolsEd((_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc((&_ZSt4cout), ((const char *)"m2_detection_time: "))), __cuda_local_var_62921_56_non_const_g2conflict_time)), ((const char *)" usec"))), _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_);
printf(((const char *)"m2 conflict detection: %d\t"), __cuda_local_var_62926_9_non_const_sum);


_ZNSolsEPFRSoS_E((&_ZSt4cout), _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_);
_ZNSolsEPFRSoS_E((&_ZSt4cout), _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_);




free(((void *)__cuda_local_var_62925_10_non_const_h_total));
cudaFree(((void *)__cuda_local_var_62929_13_non_const_dev_filterSet));
cudaFree(((void *)__cuda_local_var_62924_10_non_const_d_total));
cudaDeviceReset(); { _ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev((&__cuda_local_var_62918_14_non_const_fout)); return 0; }
# 771 "main.cu"
}
__asm__(".align 2");
# 197 "/usr/include/c++/4.8/streambuf" 3
extern __inline__ __attribute__((visibility("default"))) void _ZNSt15basic_streambufIcSt11char_traitsIcEED1Ev( struct _ZSt15basic_streambufIcSt11char_traitsIcEE *const this)
{  (this->__vptr) = (_ZTVSt15basic_streambufIcSt11char_traitsIcEE + 2); { _ZNSt6localeD1Ev((&(this->_M_buf_locale))); }  }
__asm__(".align 2");
extern __inline__ __attribute__((visibility("default"))) void _ZNSt15basic_streambufIcSt11char_traitsIcEED0Ev( struct _ZSt15basic_streambufIcSt11char_traitsIcEE *const this) {  _ZNSt15basic_streambufIcSt11char_traitsIcEED1Ev(this); _ZdlPv(((void *)this));  }
__asm__(".align 2");
extern __inline__ __attribute__((visibility("default"))) void _ZNSt15basic_streambufIcSt11char_traitsIcEED2Ev( struct _ZSt15basic_streambufIcSt11char_traitsIcEE *const this) {  _ZNSt15basic_streambufIcSt11char_traitsIcEED1Ev(this);  }
__asm__(".align 2");
# 865 "/usr/include/c++/4.8/bits/locale_facets.h" 3
 __attribute__((__weak__)) /* COMDAT group: _ZNKSt5ctypeIcE5widenEc */ __inline__ __attribute__((visibility("default"))) _ZNSt5ctypeIcE9char_typeE _ZNKSt5ctypeIcE5widenEc( const struct _ZSt5ctypeIcE *const this,  char __c)
{
if (((struct _ZSt5ctypeIcE *)this)->_M_widen_ok) {
return ((((struct _ZSt5ctypeIcE *)this)->_M_widen))[((unsigned char)__c)]; }
_ZNKSt5ctypeIcE13_M_widen_initEv(this);
return (*((_ZNSt5ctypeIcE9char_typeE (**)(const struct _ZSt5ctypeIcE *const, char))((((*(struct __SO__NSt6locale5facetE *)&(this->__b_NSt6locale5facetE___vptr))).__vptr) + 6)))(this, __c);
}
__asm__(".align 2");
# 276 "/usr/include/c++/4.8/bits/basic_ios.h" 3
extern __inline__ __attribute__((visibility("default"))) void _ZNSt9basic_iosIcSt11char_traitsIcEED1Ev( struct _ZSt9basic_iosIcSt11char_traitsIcEE *const this) {  ((this->__b_St8ios_base).__vptr) = (_ZTVSt9basic_iosIcSt11char_traitsIcEE + 2); { _ZNSt8ios_baseD2Ev((&(this->__b_St8ios_base))); }  }
__asm__(".align 2");
extern __inline__ __attribute__((visibility("default"))) void _ZNSt9basic_iosIcSt11char_traitsIcEED0Ev( struct _ZSt9basic_iosIcSt11char_traitsIcEE *const this) {  _ZNSt9basic_iosIcSt11char_traitsIcEED1Ev(this); _ZdlPv(((void *)this));  }
__asm__(".align 2");
extern __inline__ __attribute__((visibility("default"))) void _ZNSt9basic_iosIcSt11char_traitsIcEED2Ev( struct _ZSt9basic_iosIcSt11char_traitsIcEE *const this) {  _ZNSt9basic_iosIcSt11char_traitsIcEED1Ev(this);  }
__asm__(".align 2");
# 454 "/usr/include/c++/4.8/bits/basic_ios.h" 3
extern __inline__ __attribute__((visibility("default"))) void _ZNSt9basic_iosIcSt11char_traitsIcEEC1Ev( struct _ZSt9basic_iosIcSt11char_traitsIcEE *const this)


{ _ZNSt8ios_baseC2Ev((&(this->__b_St8ios_base))); ((this->__b_St8ios_base).__vptr) = (_ZTVSt9basic_iosIcSt11char_traitsIcEE + 2); (this->_M_tie) = ((struct _ZSo *)0LL); (this->_M_fill) = ((_ZNSt9basic_iosIcSt11char_traitsIcEE9char_typeE)0); (this->_M_fill_init) = ((char)0); (this->_M_streambuf) = ((struct _ZSt15basic_streambufIcSt11char_traitsIcEE *)0LL); (this->_M_ctype) = ((const _ZNSt9basic_iosIcSt11char_traitsIcEE12__ctype_typeE *)0LL); (this->_M_num_put) = ((const _ZNSt9basic_iosIcSt11char_traitsIcEE14__num_put_typeE *)0LL); (this->_M_num_get) = ((const _ZNSt9basic_iosIcSt11char_traitsIcEE14__num_get_typeE *)0LL);  }
__asm__(".align 2");
extern __inline__ __attribute__((visibility("default"))) void _ZNSt9basic_iosIcSt11char_traitsIcEEC2Ev( struct _ZSt9basic_iosIcSt11char_traitsIcEE *const this) {  _ZNSt9basic_iosIcSt11char_traitsIcEEC1Ev(this);  }
__asm__(".align 2");
# 93 "/usr/include/c++/4.8/ostream" 3
extern __inline__ __attribute__((visibility("default"))) void _ZNSoD2Ev( struct _ZSo *const this,  const long *const *__T216) {  (this->__vptr) = (*__T216); ((((struct _ZSt9basic_iosIcSt11char_traitsIcEE *)(((char *)this) + ((this->__vptr)[(-3L)])))->__b_St8ios_base).__vptr) = (*(__T216 + 1UL));  }
__asm__(".align 2");
extern __inline__ __attribute__((visibility("default"))) void _ZNSoD0Ev( struct _ZSo *const this) {  const long *const *__T217;
((__T217 = (_ZTTSo)) , (void)(_ZNSoD2Ev(this, __T217))) , (void)(_ZNSt9basic_iosIcSt11char_traitsIcEED1Ev((&(this->__v_St9basic_iosIcSt11char_traitsIcEE)))); _ZdlPv(((void *)this));  }
__asm__(".align 2");
extern __inline__ __attribute__((visibility("default"))) void _ZNSoD1Ev( struct _ZSo *const this) {  const long *const *__T218;
__T218 = (_ZTTSo); _ZNSoD2Ev(this, __T218);
# 93 "/usr/include/c++/4.8/ostream" 3
{ _ZNSt9basic_iosIcSt11char_traitsIcEED1Ev((&(this->__v_St9basic_iosIcSt11char_traitsIcEE))); }  }
__asm__(".align 2");
# 108 "/usr/include/c++/4.8/ostream" 3
extern __inline__ __attribute__((visibility("default"))) _ZNSo14__ostream_typeE *_ZNSolsEPFRSoS_E( struct _ZSo *const this,  _ZNSo14__ostream_typeE *(*__pf)(_ZNSo14__ostream_typeE *))
{



return __pf(this);
}
__asm__(".align 2");
# 220 "/usr/include/c++/4.8/ostream" 3
extern __inline__ __attribute__((visibility("default"))) _ZNSo14__ostream_typeE *_ZNSolsEd( struct _ZSo *const this,  double __f)
{ return _ZNSo9_M_insertIdEERSoT_(this, __f); }
__asm__(".align 2");
# 219 "/usr/include/c++/4.8/fstream" 3
extern __inline__ __attribute__((visibility("default"))) void _ZNSt13basic_filebufIcSt11char_traitsIcEED1Ev( struct _ZSt13basic_filebufIcSt11char_traitsIcEE *const this)
{  ((this->__b_St15basic_streambufIcSt11char_traitsIcEE).__vptr) = (_ZTVSt13basic_filebufIcSt11char_traitsIcEE + 2); _ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv(this); { _ZNSt12__basic_fileIcED1Ev((&(this->_M_file))); { _ZNSt15basic_streambufIcSt11char_traitsIcEED1Ev((&(this->__b_St15basic_streambufIcSt11char_traitsIcEE))); } }  }
__asm__(".align 2");
extern __inline__ __attribute__((visibility("default"))) void _ZNSt13basic_filebufIcSt11char_traitsIcEED0Ev( struct _ZSt13basic_filebufIcSt11char_traitsIcEE *const this) {  _ZNSt13basic_filebufIcSt11char_traitsIcEED1Ev(this); _ZdlPv(((void *)this));  }
__asm__(".align 2");
extern __inline__ __attribute__((visibility("default"))) void _ZNSt13basic_filebufIcSt11char_traitsIcEED2Ev( struct _ZSt13basic_filebufIcSt11char_traitsIcEE *const this) {  _ZNSt13basic_filebufIcSt11char_traitsIcEED1Ev(this);  }
__asm__(".align 2");
# 625 "/usr/include/c++/4.8/fstream" 3
extern __inline__ __attribute__((visibility("default"))) void _ZNSt14basic_ofstreamIcSt11char_traitsIcEEC2Ev( struct _ZSt14basic_ofstreamIcSt11char_traitsIcEE *const this,  const long *const *__T219)
{ { (((struct _ZSo *)this)->__vptr) = (*(__T219 + 1UL)); ((((struct _ZSt9basic_iosIcSt11char_traitsIcEE *)(((char *)((struct _ZSo *)this)) + ((((struct _ZSo *)this)->__vptr)[(-3L)])))->__b_St8ios_base).__vptr) = (*((__T219 + 1UL) + 1UL));
# 385 "/usr/include/c++/4.8/ostream" 3
_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(((struct _ZSt9basic_iosIcSt11char_traitsIcEE *)(((char *)((struct _ZSo *)this)) + ((((struct _ZSo *)this)->__vptr)[(-3L)]))), ((struct _ZSt15basic_streambufIcSt11char_traitsIcEE *)0LL));
# 626 "/usr/include/c++/4.8/fstream" 3
} ((this->__b_So).__vptr) = (*__T219); ((((struct _ZSt9basic_iosIcSt11char_traitsIcEE *)(((char *)this) + (((this->__b_So).__vptr)[(-3L)])))->__b_St8ios_base).__vptr) = (*(__T219 + 3UL)); _ZNSt13basic_filebufIcSt11char_traitsIcEEC1Ev((&(this->_M_filebuf))); _ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(((struct _ZSt9basic_iosIcSt11char_traitsIcEE *)(((char *)this) + (((this->__b_So).__vptr)[(-3L)]))), (&((this->_M_filebuf).__b_St15basic_streambufIcSt11char_traitsIcEE)));  }
__asm__(".align 2");
extern __inline__ __attribute__((visibility("default"))) void _ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1Ev( struct _ZSt14basic_ofstreamIcSt11char_traitsIcEE *const this) {  const long *const *__T220;
__T220 = (_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE); ((this->__b_So).__vptr) = (*__T220);
# 626 "/usr/include/c++/4.8/fstream" 3
{ _ZNSt9basic_iosIcSt11char_traitsIcEEC1Ev((&(this->__v_St9basic_iosIcSt11char_traitsIcEE))); } _ZNSt14basic_ofstreamIcSt11char_traitsIcEEC2Ev(this, __T220);  }
__asm__(".align 2");
# 673 "/usr/include/c++/4.8/fstream" 3
extern __inline__ __attribute__((visibility("default"))) void _ZNSt14basic_ofstreamIcSt11char_traitsIcEED2Ev( struct _ZSt14basic_ofstreamIcSt11char_traitsIcEE *const this,  const long *const *__T221)
{  ((this->__b_So).__vptr) = (*__T221); ((((struct _ZSt9basic_iosIcSt11char_traitsIcEE *)(((char *)this) + (((this->__b_So).__vptr)[(-3L)])))->__b_St8ios_base).__vptr) = (*(__T221 + 3UL)); { { (((this->_M_filebuf).__b_St15basic_streambufIcSt11char_traitsIcEE).__vptr) = (_ZTVSt13basic_filebufIcSt11char_traitsIcEE + 2);
# 220 "/usr/include/c++/4.8/fstream" 3
_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv((&(this->_M_filebuf))); { _ZNSt12__basic_fileIcED1Ev((&((this->_M_filebuf)._M_file))); { _ZNSt15basic_streambufIcSt11char_traitsIcEED1Ev((&((this->_M_filebuf).__b_St15basic_streambufIcSt11char_traitsIcEE))); } }
# 674 "/usr/include/c++/4.8/fstream" 3
} { (((struct _ZSo *)this)->__vptr) = (*(__T221 + 1UL)); ((((struct _ZSt9basic_iosIcSt11char_traitsIcEE *)(((char *)((struct _ZSo *)this)) + ((((struct _ZSo *)this)->__vptr)[(-3L)])))->__b_St8ios_base).__vptr) = (*((__T221 + 1UL) + 1UL)); } }  }
__asm__(".align 2");
extern __inline__ __attribute__((visibility("default"))) void _ZNSt14basic_ofstreamIcSt11char_traitsIcEED0Ev( struct _ZSt14basic_ofstreamIcSt11char_traitsIcEE *const this) {  const long *const *__T222;
((__T222 = (_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE)) , (void)(_ZNSt14basic_ofstreamIcSt11char_traitsIcEED2Ev(this, __T222))) , (void)(_ZNSt9basic_iosIcSt11char_traitsIcEED1Ev((&(this->__v_St9basic_iosIcSt11char_traitsIcEE)))); _ZdlPv(((void *)this));  }
__asm__(".align 2");
extern __inline__ __attribute__((visibility("default"))) void _ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev( struct _ZSt14basic_ofstreamIcSt11char_traitsIcEE *const this) {  const long *const *__T223;
__T223 = (_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE); _ZNSt14basic_ofstreamIcSt11char_traitsIcEED2Ev(this, __T223);
# 674 "/usr/include/c++/4.8/fstream" 3
{ _ZNSt9basic_iosIcSt11char_traitsIcEED1Ev((&(this->__v_St9basic_iosIcSt11char_traitsIcEE))); }  }
# 564 "/usr/include/c++/4.8/ostream" 3
extern __inline__ struct _ZSo *_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_( struct _ZSo *__os)
{  const struct _ZSt9basic_iosIcSt11char_traitsIcEE *__T224;
 const _ZNSt9basic_iosIcSt11char_traitsIcEE12__ctype_typeE *__T225;
 struct _ZSo *__T226;
# 565 "/usr/include/c++/4.8/ostream" 3
return (__T226 = (_ZNSo3putEc(__os, ((__T224 = ((const struct _ZSt9basic_iosIcSt11char_traitsIcEE *)((__os) ? ((struct _ZSt9basic_iosIcSt11char_traitsIcEE *)(((char *)__os) + ((__os->__vptr)[(-3L)]))) : ((struct _ZSt9basic_iosIcSt11char_traitsIcEE *)0LL)))) , (_ZNKSt5ctypeIcE5widenEc(((__T225 = (__T224->_M_ctype)) , (((!(__T225)) ? (_ZSt16__throw_bad_castv()) : ((void)0)) , __T225)), ((char)10))))))) , (_ZNSo5flushEv(__T226)); }
# 530 "/usr/include/c++/4.8/ostream" 3
extern __inline__ struct _ZSo *_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc( struct _ZSo *__out,  const char *__s)
{  struct _ZSt9basic_iosIcSt11char_traitsIcEE *__T227;
if (!(__s)) {
{ __T227 = ((__out) ? ((struct _ZSt9basic_iosIcSt11char_traitsIcEE *)(((char *)__out) + ((__out->__vptr)[(-3L)]))) : ((struct _ZSt9basic_iosIcSt11char_traitsIcEE *)0LL));
# 152 "/usr/include/c++/4.8/bits/basic_ios.h" 3
{ _ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(__T227, ((enum _ZSt12_Ios_Iostate)(((int)((((const struct _ZSt9basic_iosIcSt11char_traitsIcEE *)__T227)->__b_St8ios_base)._M_streambuf_state)) | ((int)((_ZNSt8ios_base7iostateE)1))))); }
# 533 "/usr/include/c++/4.8/ostream" 3
} } else  {

_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(__out, __s, ((_ZSt10streamsize)(__builtin_strlen(__s)))); }

return __out;
}
static void __sti___12_main_cpp1_ii_db(void) {
# 74 "/usr/include/c++/4.8/iostream" 3
_ZNSt8ios_base4InitC1Ev((&_ZSt8__ioinit)); __cxa_atexit(_ZNSt8ios_base4InitD1Ev, ((void *)(&_ZSt8__ioinit)), (&__dso_handle));
# 14 "main.cu"
_ZN11clsFilterDBC1Ev((&db)); __cxa_atexit(_ZN11clsFilterDBD1Ev, ((void *)(&db)), (&__dso_handle));  }

#include "main.cudafe1.stub.c"
