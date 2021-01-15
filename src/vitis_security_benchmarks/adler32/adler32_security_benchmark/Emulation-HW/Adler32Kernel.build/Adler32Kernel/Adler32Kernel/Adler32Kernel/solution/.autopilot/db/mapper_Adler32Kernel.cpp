#include <systemc>
#include <vector>
#include <iostream>
#include "hls_stream.h"
#include "ap_int.h"
#include "ap_fixed.h"
using namespace std;
using namespace sc_dt;
class AESL_RUNTIME_BC {
  public:
    AESL_RUNTIME_BC(const char* name) {
      file_token.open( name);
      if (!file_token.good()) {
        cout << "Failed to open tv file " << name << endl;
        exit (1);
      }
      file_token >> mName;//[[[runtime]]]
    }
    ~AESL_RUNTIME_BC() {
      file_token.close();
    }
    int read_size () {
      int size = 0;
      file_token >> mName;//[[transaction]]
      file_token >> mName;//transaction number
      file_token >> mName;//pop_size
      size = atoi(mName.c_str());
      file_token >> mName;//[[/transaction]]
      return size;
    }
  public:
    fstream file_token;
    string mName;
};
struct __cosim_s40__ { char data[64]; };
extern "C" void Adler32Kernel(int*, int*, __cosim_s40__*, int*, int, int, int, int, int, int);
extern "C" void apatb_Adler32Kernel_hw(int __xlx_apatb_param_num, int __xlx_apatb_param_size, volatile void * __xlx_apatb_param_len, volatile void * __xlx_apatb_param_adler, volatile void * __xlx_apatb_param_inData, volatile void * __xlx_apatb_param_adler32Result) {
  // Collect __xlx_len__tmp_vec
  vector<sc_bv<32> >__xlx_len__tmp_vec;
  for (int j = 0, e = 1; j != e; ++j) {
    __xlx_len__tmp_vec.push_back(((int*)__xlx_apatb_param_len)[j]);
  }
  int __xlx_size_param_len = 1;
  int __xlx_offset_param_len = 0;
  int __xlx_offset_byte_param_len = 0*4;
  int* __xlx_len__input_buffer= new int[__xlx_len__tmp_vec.size()];
  for (int i = 0; i < __xlx_len__tmp_vec.size(); ++i) {
    __xlx_len__input_buffer[i] = __xlx_len__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_adler__tmp_vec
  vector<sc_bv<32> >__xlx_adler__tmp_vec;
  for (int j = 0, e = 1; j != e; ++j) {
    __xlx_adler__tmp_vec.push_back(((int*)__xlx_apatb_param_adler)[j]);
  }
  int __xlx_size_param_adler = 1;
  int __xlx_offset_param_adler = 0;
  int __xlx_offset_byte_param_adler = 0*4;
  int* __xlx_adler__input_buffer= new int[__xlx_adler__tmp_vec.size()];
  for (int i = 0; i < __xlx_adler__tmp_vec.size(); ++i) {
    __xlx_adler__input_buffer[i] = __xlx_adler__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_inData__tmp_vec
  vector<sc_bv<512> >__xlx_inData__tmp_vec;
  for (int j = 0, e = 1; j != e; ++j) {
    sc_bv<512> _xlx_tmp_sc;
    _xlx_tmp_sc.range(63, 0) = ((long long*)__xlx_apatb_param_inData)[j*8+0];
    _xlx_tmp_sc.range(127, 64) = ((long long*)__xlx_apatb_param_inData)[j*8+1];
    _xlx_tmp_sc.range(191, 128) = ((long long*)__xlx_apatb_param_inData)[j*8+2];
    _xlx_tmp_sc.range(255, 192) = ((long long*)__xlx_apatb_param_inData)[j*8+3];
    _xlx_tmp_sc.range(319, 256) = ((long long*)__xlx_apatb_param_inData)[j*8+4];
    _xlx_tmp_sc.range(383, 320) = ((long long*)__xlx_apatb_param_inData)[j*8+5];
    _xlx_tmp_sc.range(447, 384) = ((long long*)__xlx_apatb_param_inData)[j*8+6];
    _xlx_tmp_sc.range(511, 448) = ((long long*)__xlx_apatb_param_inData)[j*8+7];
    __xlx_inData__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_inData = 1;
  int __xlx_offset_param_inData = 0;
  int __xlx_offset_byte_param_inData = 0*64;
  __cosim_s40__* __xlx_inData__input_buffer= new __cosim_s40__[__xlx_inData__tmp_vec.size()];
  for (int i = 0; i < __xlx_inData__tmp_vec.size(); ++i) {
    ((long long*)__xlx_inData__input_buffer)[i*8+0] = __xlx_inData__tmp_vec[i].range(63, 0).to_uint64();
    ((long long*)__xlx_inData__input_buffer)[i*8+1] = __xlx_inData__tmp_vec[i].range(127, 64).to_uint64();
    ((long long*)__xlx_inData__input_buffer)[i*8+2] = __xlx_inData__tmp_vec[i].range(191, 128).to_uint64();
    ((long long*)__xlx_inData__input_buffer)[i*8+3] = __xlx_inData__tmp_vec[i].range(255, 192).to_uint64();
    ((long long*)__xlx_inData__input_buffer)[i*8+4] = __xlx_inData__tmp_vec[i].range(319, 256).to_uint64();
    ((long long*)__xlx_inData__input_buffer)[i*8+5] = __xlx_inData__tmp_vec[i].range(383, 320).to_uint64();
    ((long long*)__xlx_inData__input_buffer)[i*8+6] = __xlx_inData__tmp_vec[i].range(447, 384).to_uint64();
    ((long long*)__xlx_inData__input_buffer)[i*8+7] = __xlx_inData__tmp_vec[i].range(511, 448).to_uint64();
  }
  // Collect __xlx_adler32Result__tmp_vec
  vector<sc_bv<32> >__xlx_adler32Result__tmp_vec;
  for (int j = 0, e = 1; j != e; ++j) {
    __xlx_adler32Result__tmp_vec.push_back(((int*)__xlx_apatb_param_adler32Result)[j]);
  }
  int __xlx_size_param_adler32Result = 1;
  int __xlx_offset_param_adler32Result = 0;
  int __xlx_offset_byte_param_adler32Result = 0*4;
  int* __xlx_adler32Result__input_buffer= new int[__xlx_adler32Result__tmp_vec.size()];
  for (int i = 0; i < __xlx_adler32Result__tmp_vec.size(); ++i) {
    __xlx_adler32Result__input_buffer[i] = __xlx_adler32Result__tmp_vec[i].range(31, 0).to_uint64();
  }
  // DUT call
  Adler32Kernel(__xlx_len__input_buffer, __xlx_adler__input_buffer, __xlx_inData__input_buffer, __xlx_adler32Result__input_buffer, __xlx_apatb_param_num, __xlx_apatb_param_size, __xlx_offset_byte_param_len, __xlx_offset_byte_param_adler, __xlx_offset_byte_param_inData, __xlx_offset_byte_param_adler32Result);
// print __xlx_apatb_param_len
  sc_bv<32>*__xlx_len_output_buffer = new sc_bv<32>[__xlx_size_param_len];
  for (int i = 0; i < __xlx_size_param_len; ++i) {
    __xlx_len_output_buffer[i] = __xlx_len__input_buffer[i+__xlx_offset_param_len];
  }
  for (int i = 0; i < __xlx_size_param_len; ++i) {
    ((int*)__xlx_apatb_param_len)[i] = __xlx_len_output_buffer[i].to_uint64();
  }
// print __xlx_apatb_param_adler
  sc_bv<32>*__xlx_adler_output_buffer = new sc_bv<32>[__xlx_size_param_adler];
  for (int i = 0; i < __xlx_size_param_adler; ++i) {
    __xlx_adler_output_buffer[i] = __xlx_adler__input_buffer[i+__xlx_offset_param_adler];
  }
  for (int i = 0; i < __xlx_size_param_adler; ++i) {
    ((int*)__xlx_apatb_param_adler)[i] = __xlx_adler_output_buffer[i].to_uint64();
  }
// print __xlx_apatb_param_inData
  sc_bv<512>*__xlx_inData_output_buffer = new sc_bv<512>[__xlx_size_param_inData];
  for (int i = 0; i < __xlx_size_param_inData; ++i) {
    char* start = (char*)(&(__xlx_inData__input_buffer[__xlx_offset_param_inData]));
    __xlx_inData_output_buffer[i].range(63, 0) = ((long long*)start)[i*8+0];
    __xlx_inData_output_buffer[i].range(127, 64) = ((long long*)start)[i*8+1];
    __xlx_inData_output_buffer[i].range(191, 128) = ((long long*)start)[i*8+2];
    __xlx_inData_output_buffer[i].range(255, 192) = ((long long*)start)[i*8+3];
    __xlx_inData_output_buffer[i].range(319, 256) = ((long long*)start)[i*8+4];
    __xlx_inData_output_buffer[i].range(383, 320) = ((long long*)start)[i*8+5];
    __xlx_inData_output_buffer[i].range(447, 384) = ((long long*)start)[i*8+6];
    __xlx_inData_output_buffer[i].range(511, 448) = ((long long*)start)[i*8+7];
  }
  for (int i = 0; i < __xlx_size_param_inData; ++i) {
    ((long long*)__xlx_apatb_param_inData)[i*8+0] = __xlx_inData_output_buffer[i].range(63, 0).to_uint64();
    ((long long*)__xlx_apatb_param_inData)[i*8+1] = __xlx_inData_output_buffer[i].range(127, 64).to_uint64();
    ((long long*)__xlx_apatb_param_inData)[i*8+2] = __xlx_inData_output_buffer[i].range(191, 128).to_uint64();
    ((long long*)__xlx_apatb_param_inData)[i*8+3] = __xlx_inData_output_buffer[i].range(255, 192).to_uint64();
    ((long long*)__xlx_apatb_param_inData)[i*8+4] = __xlx_inData_output_buffer[i].range(319, 256).to_uint64();
    ((long long*)__xlx_apatb_param_inData)[i*8+5] = __xlx_inData_output_buffer[i].range(383, 320).to_uint64();
    ((long long*)__xlx_apatb_param_inData)[i*8+6] = __xlx_inData_output_buffer[i].range(447, 384).to_uint64();
    ((long long*)__xlx_apatb_param_inData)[i*8+7] = __xlx_inData_output_buffer[i].range(511, 448).to_uint64();
  }
// print __xlx_apatb_param_adler32Result
  sc_bv<32>*__xlx_adler32Result_output_buffer = new sc_bv<32>[__xlx_size_param_adler32Result];
  for (int i = 0; i < __xlx_size_param_adler32Result; ++i) {
    __xlx_adler32Result_output_buffer[i] = __xlx_adler32Result__input_buffer[i+__xlx_offset_param_adler32Result];
  }
  for (int i = 0; i < __xlx_size_param_adler32Result; ++i) {
    ((int*)__xlx_apatb_param_adler32Result)[i] = __xlx_adler32Result_output_buffer[i].to_uint64();
  }
}
