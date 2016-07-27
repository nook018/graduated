#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wunused-function"
#pragma GCC diagnostic ignored "-Wcast-qual"
#define __NV_CUBIN_HANDLE_STORAGE__ static
#include "crt/host_runtime.h"
#include "main.fatbin.c"
extern void __device_stub__Z21gpu_conflict_detect_0P6filteriPi(struct filter *const __restrict__, int, int *);
extern void __device_stub__Z21gpu_conflict_detect_1P6filteriPi(struct filter *const __restrict__, int, int *);
extern void __device_stub__Z21gpu_conflict_detect_2P6filteriPi(struct filter *const __restrict__, int, int *);
static void __nv_cudaEntityRegisterCallback(void **);
static void __sti____cudaRegisterAll_12_main_cpp1_ii_db(void) __attribute__((__constructor__));
void __device_stub__Z21gpu_conflict_detect_0P6filteriPi(struct filter *const __restrict__ __par0, int __par1, int *__par2){ struct filter *__T20;
__T20 = __par0;__cudaSetupArgSimple(__T20, 0UL);__cudaSetupArgSimple(__par1, 8UL);__cudaSetupArgSimple(__par2, 16UL);__cudaLaunch(((char *)((void ( *)(struct filter *const __restrict__, int, int *))gpu_conflict_detect_0)));}
# 108 "main.cu"
void gpu_conflict_detect_0( struct filter *const __restrict__ __cuda_0,int __cuda_1,int *__cuda_2)
# 109 "main.cu"
{__device_stub__Z21gpu_conflict_detect_0P6filteriPi( __cuda_0,__cuda_1,__cuda_2);
# 207 "main.cu"
}
# 1 "main.cudafe1.stub.c"
void __device_stub__Z21gpu_conflict_detect_1P6filteriPi( struct filter *const __restrict__ __par0,  int __par1,  int *__par2) {  struct filter *__T21;
__T21 = __par0; __cudaSetupArgSimple(__T21, 0UL); __cudaSetupArgSimple(__par1, 8UL); __cudaSetupArgSimple(__par2, 16UL); __cudaLaunch(((char *)((void ( *)(struct filter *const __restrict__, int, int *))gpu_conflict_detect_1))); }
# 210 "main.cu"
void gpu_conflict_detect_1( struct filter *const __restrict__ __cuda_0,int __cuda_1,int *__cuda_2)
# 211 "main.cu"
{__device_stub__Z21gpu_conflict_detect_1P6filteriPi( __cuda_0,__cuda_1,__cuda_2);
# 306 "main.cu"
}
# 1 "main.cudafe1.stub.c"
void __device_stub__Z21gpu_conflict_detect_2P6filteriPi( struct filter *const __restrict__ __par0,  int __par1,  int *__par2) {  struct filter *__T22;
__T22 = __par0; __cudaSetupArgSimple(__T22, 0UL); __cudaSetupArgSimple(__par1, 8UL); __cudaSetupArgSimple(__par2, 16UL); __cudaLaunch(((char *)((void ( *)(struct filter *const __restrict__, int, int *))gpu_conflict_detect_2))); }
# 309 "main.cu"
void gpu_conflict_detect_2( struct filter *const __restrict__ __cuda_0,int __cuda_1,int *__cuda_2)
# 310 "main.cu"
{__device_stub__Z21gpu_conflict_detect_2P6filteriPi( __cuda_0,__cuda_1,__cuda_2);
# 409 "main.cu"
}
# 1 "main.cudafe1.stub.c"
static void __nv_cudaEntityRegisterCallback( void **__T228) {  __nv_dummy_param_ref(__T228); __nv_save_fatbinhandle_for_managed_rt(__T228); __cudaRegisterEntry(__T228, ((void ( *)(struct filter *const __restrict__, int, int *))gpu_conflict_detect_2), _Z21gpu_conflict_detect_2P6filteriPi, (-1)); __cudaRegisterEntry(__T228, ((void ( *)(struct filter *const __restrict__, int, int *))gpu_conflict_detect_1), _Z21gpu_conflict_detect_1P6filteriPi, (-1)); __cudaRegisterEntry(__T228, ((void ( *)(struct filter *const __restrict__, int, int *))gpu_conflict_detect_0), _Z21gpu_conflict_detect_0P6filteriPi, (-1)); }
static void __sti____cudaRegisterAll_12_main_cpp1_ii_db(void) {  __cudaRegisterBinary(__nv_cudaEntityRegisterCallback);  }

#pragma GCC diagnostic pop
