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

void __stub____xlnx_cl_single_thread_matmul_partition(char **argv);
static pthread_mutex_t __xlnx_cl_matmul_partition_mutex = PTHREAD_MUTEX_INITIALIZER;
void __stub____xlnx_cl_matmul_partition(char **argv) {
  //pthread_mutex_lock(&__xlnx_cl_matmul_partition_mutex);
  __stub____xlnx_cl_single_thread_matmul_partition(argv);
  //pthread_mutex_unlock(&__xlnx_cl_matmul_partition_mutex);
}
void __stub____xlnx_cl_single_thread_matmul_naive(char **argv);
static pthread_mutex_t __xlnx_cl_matmul_naive_mutex = PTHREAD_MUTEX_INITIALIZER;
void __stub____xlnx_cl_matmul_naive(char **argv) {
  //pthread_mutex_lock(&__xlnx_cl_matmul_naive_mutex);
  __stub____xlnx_cl_single_thread_matmul_naive(argv);
  //pthread_mutex_unlock(&__xlnx_cl_matmul_naive_mutex);
}
}
