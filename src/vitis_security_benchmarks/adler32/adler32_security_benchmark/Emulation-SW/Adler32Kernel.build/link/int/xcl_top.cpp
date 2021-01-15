#include "libspir_types.h"
#include "hls_stream.h"
#include "xcl_top_defines.h"
#include "ap_axi_sdata.h"
#define EXPORT_PIPE_SYMBOLS 1
#include "cpu_pipes.h"
#undef EXPORT_PIPE_SYMBOLS
#include "xcl_half.h"
#include <cstddef>
#include <vector>
#include <complex>
#include <pthread.h>
using namespace std;

extern "C" {

void Adler32Kernel(unsigned int num, unsigned int size, size_t len, size_t adler, size_t inData, size_t adler32Result);

static pthread_mutex_t __xlnx_cl_Adler32Kernel_mutex = PTHREAD_MUTEX_INITIALIZER;
void __stub____xlnx_cl_Adler32Kernel(char **argv) {
  void **args = (void **)argv;
  unsigned int num = *((unsigned int*)args[0+1]);
  unsigned int size = *((unsigned int*)args[1+1]);
  size_t len = *((size_t*)args[2+1]);
  size_t adler = *((size_t*)args[3+1]);
  size_t inData = *((size_t*)args[4+1]);
  size_t adler32Result = *((size_t*)args[5+1]);
 pthread_mutex_lock(&__xlnx_cl_Adler32Kernel_mutex);
  Adler32Kernel(num, size, len, adler, inData, adler32Result);
  pthread_mutex_unlock(&__xlnx_cl_Adler32Kernel_mutex);
}
}
