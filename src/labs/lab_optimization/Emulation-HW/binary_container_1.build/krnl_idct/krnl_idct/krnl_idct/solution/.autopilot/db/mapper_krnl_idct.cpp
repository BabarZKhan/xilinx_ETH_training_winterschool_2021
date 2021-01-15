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
extern "C" void krnl_idct(__cosim_s40__*, __cosim_s40__*, __cosim_s40__*, int, int, int, int, int);
extern "C" void apatb_krnl_idct_hw(volatile void * __xlx_apatb_param_block, volatile void * __xlx_apatb_param_q, volatile void * __xlx_apatb_param_voutp, int __xlx_apatb_param_ignore_dc, int __xlx_apatb_param_blocks) {
  // Collect __xlx_block__tmp_vec
  vector<sc_bv<512> >__xlx_block__tmp_vec;
  for (int j = 0, e = 1; j != e; ++j) {
    sc_bv<512> _xlx_tmp_sc;
    _xlx_tmp_sc.range(63, 0) = ((long long*)__xlx_apatb_param_block)[j*8+0];
    _xlx_tmp_sc.range(127, 64) = ((long long*)__xlx_apatb_param_block)[j*8+1];
    _xlx_tmp_sc.range(191, 128) = ((long long*)__xlx_apatb_param_block)[j*8+2];
    _xlx_tmp_sc.range(255, 192) = ((long long*)__xlx_apatb_param_block)[j*8+3];
    _xlx_tmp_sc.range(319, 256) = ((long long*)__xlx_apatb_param_block)[j*8+4];
    _xlx_tmp_sc.range(383, 320) = ((long long*)__xlx_apatb_param_block)[j*8+5];
    _xlx_tmp_sc.range(447, 384) = ((long long*)__xlx_apatb_param_block)[j*8+6];
    _xlx_tmp_sc.range(511, 448) = ((long long*)__xlx_apatb_param_block)[j*8+7];
    __xlx_block__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_block = 1;
  int __xlx_offset_param_block = 0;
  int __xlx_offset_byte_param_block = 0*64;
  __cosim_s40__* __xlx_block__input_buffer= new __cosim_s40__[__xlx_block__tmp_vec.size()];
  for (int i = 0; i < __xlx_block__tmp_vec.size(); ++i) {
    ((long long*)__xlx_block__input_buffer)[i*8+0] = __xlx_block__tmp_vec[i].range(63, 0).to_uint64();
    ((long long*)__xlx_block__input_buffer)[i*8+1] = __xlx_block__tmp_vec[i].range(127, 64).to_uint64();
    ((long long*)__xlx_block__input_buffer)[i*8+2] = __xlx_block__tmp_vec[i].range(191, 128).to_uint64();
    ((long long*)__xlx_block__input_buffer)[i*8+3] = __xlx_block__tmp_vec[i].range(255, 192).to_uint64();
    ((long long*)__xlx_block__input_buffer)[i*8+4] = __xlx_block__tmp_vec[i].range(319, 256).to_uint64();
    ((long long*)__xlx_block__input_buffer)[i*8+5] = __xlx_block__tmp_vec[i].range(383, 320).to_uint64();
    ((long long*)__xlx_block__input_buffer)[i*8+6] = __xlx_block__tmp_vec[i].range(447, 384).to_uint64();
    ((long long*)__xlx_block__input_buffer)[i*8+7] = __xlx_block__tmp_vec[i].range(511, 448).to_uint64();
  }
  // Collect __xlx_q__tmp_vec
  vector<sc_bv<512> >__xlx_q__tmp_vec;
  for (int j = 0, e = 1; j != e; ++j) {
    sc_bv<512> _xlx_tmp_sc;
    _xlx_tmp_sc.range(63, 0) = ((long long*)__xlx_apatb_param_q)[j*8+0];
    _xlx_tmp_sc.range(127, 64) = ((long long*)__xlx_apatb_param_q)[j*8+1];
    _xlx_tmp_sc.range(191, 128) = ((long long*)__xlx_apatb_param_q)[j*8+2];
    _xlx_tmp_sc.range(255, 192) = ((long long*)__xlx_apatb_param_q)[j*8+3];
    _xlx_tmp_sc.range(319, 256) = ((long long*)__xlx_apatb_param_q)[j*8+4];
    _xlx_tmp_sc.range(383, 320) = ((long long*)__xlx_apatb_param_q)[j*8+5];
    _xlx_tmp_sc.range(447, 384) = ((long long*)__xlx_apatb_param_q)[j*8+6];
    _xlx_tmp_sc.range(511, 448) = ((long long*)__xlx_apatb_param_q)[j*8+7];
    __xlx_q__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_q = 1;
  int __xlx_offset_param_q = 0;
  int __xlx_offset_byte_param_q = 0*64;
  __cosim_s40__* __xlx_q__input_buffer= new __cosim_s40__[__xlx_q__tmp_vec.size()];
  for (int i = 0; i < __xlx_q__tmp_vec.size(); ++i) {
    ((long long*)__xlx_q__input_buffer)[i*8+0] = __xlx_q__tmp_vec[i].range(63, 0).to_uint64();
    ((long long*)__xlx_q__input_buffer)[i*8+1] = __xlx_q__tmp_vec[i].range(127, 64).to_uint64();
    ((long long*)__xlx_q__input_buffer)[i*8+2] = __xlx_q__tmp_vec[i].range(191, 128).to_uint64();
    ((long long*)__xlx_q__input_buffer)[i*8+3] = __xlx_q__tmp_vec[i].range(255, 192).to_uint64();
    ((long long*)__xlx_q__input_buffer)[i*8+4] = __xlx_q__tmp_vec[i].range(319, 256).to_uint64();
    ((long long*)__xlx_q__input_buffer)[i*8+5] = __xlx_q__tmp_vec[i].range(383, 320).to_uint64();
    ((long long*)__xlx_q__input_buffer)[i*8+6] = __xlx_q__tmp_vec[i].range(447, 384).to_uint64();
    ((long long*)__xlx_q__input_buffer)[i*8+7] = __xlx_q__tmp_vec[i].range(511, 448).to_uint64();
  }
  // Collect __xlx_voutp__tmp_vec
  vector<sc_bv<512> >__xlx_voutp__tmp_vec;
  for (int j = 0, e = 1; j != e; ++j) {
    sc_bv<512> _xlx_tmp_sc;
    _xlx_tmp_sc.range(63, 0) = ((long long*)__xlx_apatb_param_voutp)[j*8+0];
    _xlx_tmp_sc.range(127, 64) = ((long long*)__xlx_apatb_param_voutp)[j*8+1];
    _xlx_tmp_sc.range(191, 128) = ((long long*)__xlx_apatb_param_voutp)[j*8+2];
    _xlx_tmp_sc.range(255, 192) = ((long long*)__xlx_apatb_param_voutp)[j*8+3];
    _xlx_tmp_sc.range(319, 256) = ((long long*)__xlx_apatb_param_voutp)[j*8+4];
    _xlx_tmp_sc.range(383, 320) = ((long long*)__xlx_apatb_param_voutp)[j*8+5];
    _xlx_tmp_sc.range(447, 384) = ((long long*)__xlx_apatb_param_voutp)[j*8+6];
    _xlx_tmp_sc.range(511, 448) = ((long long*)__xlx_apatb_param_voutp)[j*8+7];
    __xlx_voutp__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_voutp = 1;
  int __xlx_offset_param_voutp = 0;
  int __xlx_offset_byte_param_voutp = 0*64;
  __cosim_s40__* __xlx_voutp__input_buffer= new __cosim_s40__[__xlx_voutp__tmp_vec.size()];
  for (int i = 0; i < __xlx_voutp__tmp_vec.size(); ++i) {
    ((long long*)__xlx_voutp__input_buffer)[i*8+0] = __xlx_voutp__tmp_vec[i].range(63, 0).to_uint64();
    ((long long*)__xlx_voutp__input_buffer)[i*8+1] = __xlx_voutp__tmp_vec[i].range(127, 64).to_uint64();
    ((long long*)__xlx_voutp__input_buffer)[i*8+2] = __xlx_voutp__tmp_vec[i].range(191, 128).to_uint64();
    ((long long*)__xlx_voutp__input_buffer)[i*8+3] = __xlx_voutp__tmp_vec[i].range(255, 192).to_uint64();
    ((long long*)__xlx_voutp__input_buffer)[i*8+4] = __xlx_voutp__tmp_vec[i].range(319, 256).to_uint64();
    ((long long*)__xlx_voutp__input_buffer)[i*8+5] = __xlx_voutp__tmp_vec[i].range(383, 320).to_uint64();
    ((long long*)__xlx_voutp__input_buffer)[i*8+6] = __xlx_voutp__tmp_vec[i].range(447, 384).to_uint64();
    ((long long*)__xlx_voutp__input_buffer)[i*8+7] = __xlx_voutp__tmp_vec[i].range(511, 448).to_uint64();
  }
  // DUT call
  krnl_idct(__xlx_block__input_buffer, __xlx_q__input_buffer, __xlx_voutp__input_buffer, __xlx_offset_byte_param_block, __xlx_offset_byte_param_q, __xlx_offset_byte_param_voutp, __xlx_apatb_param_ignore_dc, __xlx_apatb_param_blocks);
// print __xlx_apatb_param_block
  sc_bv<512>*__xlx_block_output_buffer = new sc_bv<512>[__xlx_size_param_block];
  for (int i = 0; i < __xlx_size_param_block; ++i) {
    char* start = (char*)(&(__xlx_block__input_buffer[__xlx_offset_param_block]));
    __xlx_block_output_buffer[i].range(63, 0) = ((long long*)start)[i*8+0];
    __xlx_block_output_buffer[i].range(127, 64) = ((long long*)start)[i*8+1];
    __xlx_block_output_buffer[i].range(191, 128) = ((long long*)start)[i*8+2];
    __xlx_block_output_buffer[i].range(255, 192) = ((long long*)start)[i*8+3];
    __xlx_block_output_buffer[i].range(319, 256) = ((long long*)start)[i*8+4];
    __xlx_block_output_buffer[i].range(383, 320) = ((long long*)start)[i*8+5];
    __xlx_block_output_buffer[i].range(447, 384) = ((long long*)start)[i*8+6];
    __xlx_block_output_buffer[i].range(511, 448) = ((long long*)start)[i*8+7];
  }
  for (int i = 0; i < __xlx_size_param_block; ++i) {
    ((long long*)__xlx_apatb_param_block)[i*8+0] = __xlx_block_output_buffer[i].range(63, 0).to_uint64();
    ((long long*)__xlx_apatb_param_block)[i*8+1] = __xlx_block_output_buffer[i].range(127, 64).to_uint64();
    ((long long*)__xlx_apatb_param_block)[i*8+2] = __xlx_block_output_buffer[i].range(191, 128).to_uint64();
    ((long long*)__xlx_apatb_param_block)[i*8+3] = __xlx_block_output_buffer[i].range(255, 192).to_uint64();
    ((long long*)__xlx_apatb_param_block)[i*8+4] = __xlx_block_output_buffer[i].range(319, 256).to_uint64();
    ((long long*)__xlx_apatb_param_block)[i*8+5] = __xlx_block_output_buffer[i].range(383, 320).to_uint64();
    ((long long*)__xlx_apatb_param_block)[i*8+6] = __xlx_block_output_buffer[i].range(447, 384).to_uint64();
    ((long long*)__xlx_apatb_param_block)[i*8+7] = __xlx_block_output_buffer[i].range(511, 448).to_uint64();
  }
// print __xlx_apatb_param_q
  sc_bv<512>*__xlx_q_output_buffer = new sc_bv<512>[__xlx_size_param_q];
  for (int i = 0; i < __xlx_size_param_q; ++i) {
    char* start = (char*)(&(__xlx_q__input_buffer[__xlx_offset_param_q]));
    __xlx_q_output_buffer[i].range(63, 0) = ((long long*)start)[i*8+0];
    __xlx_q_output_buffer[i].range(127, 64) = ((long long*)start)[i*8+1];
    __xlx_q_output_buffer[i].range(191, 128) = ((long long*)start)[i*8+2];
    __xlx_q_output_buffer[i].range(255, 192) = ((long long*)start)[i*8+3];
    __xlx_q_output_buffer[i].range(319, 256) = ((long long*)start)[i*8+4];
    __xlx_q_output_buffer[i].range(383, 320) = ((long long*)start)[i*8+5];
    __xlx_q_output_buffer[i].range(447, 384) = ((long long*)start)[i*8+6];
    __xlx_q_output_buffer[i].range(511, 448) = ((long long*)start)[i*8+7];
  }
  for (int i = 0; i < __xlx_size_param_q; ++i) {
    ((long long*)__xlx_apatb_param_q)[i*8+0] = __xlx_q_output_buffer[i].range(63, 0).to_uint64();
    ((long long*)__xlx_apatb_param_q)[i*8+1] = __xlx_q_output_buffer[i].range(127, 64).to_uint64();
    ((long long*)__xlx_apatb_param_q)[i*8+2] = __xlx_q_output_buffer[i].range(191, 128).to_uint64();
    ((long long*)__xlx_apatb_param_q)[i*8+3] = __xlx_q_output_buffer[i].range(255, 192).to_uint64();
    ((long long*)__xlx_apatb_param_q)[i*8+4] = __xlx_q_output_buffer[i].range(319, 256).to_uint64();
    ((long long*)__xlx_apatb_param_q)[i*8+5] = __xlx_q_output_buffer[i].range(383, 320).to_uint64();
    ((long long*)__xlx_apatb_param_q)[i*8+6] = __xlx_q_output_buffer[i].range(447, 384).to_uint64();
    ((long long*)__xlx_apatb_param_q)[i*8+7] = __xlx_q_output_buffer[i].range(511, 448).to_uint64();
  }
// print __xlx_apatb_param_voutp
  sc_bv<512>*__xlx_voutp_output_buffer = new sc_bv<512>[__xlx_size_param_voutp];
  for (int i = 0; i < __xlx_size_param_voutp; ++i) {
    char* start = (char*)(&(__xlx_voutp__input_buffer[__xlx_offset_param_voutp]));
    __xlx_voutp_output_buffer[i].range(63, 0) = ((long long*)start)[i*8+0];
    __xlx_voutp_output_buffer[i].range(127, 64) = ((long long*)start)[i*8+1];
    __xlx_voutp_output_buffer[i].range(191, 128) = ((long long*)start)[i*8+2];
    __xlx_voutp_output_buffer[i].range(255, 192) = ((long long*)start)[i*8+3];
    __xlx_voutp_output_buffer[i].range(319, 256) = ((long long*)start)[i*8+4];
    __xlx_voutp_output_buffer[i].range(383, 320) = ((long long*)start)[i*8+5];
    __xlx_voutp_output_buffer[i].range(447, 384) = ((long long*)start)[i*8+6];
    __xlx_voutp_output_buffer[i].range(511, 448) = ((long long*)start)[i*8+7];
  }
  for (int i = 0; i < __xlx_size_param_voutp; ++i) {
    ((long long*)__xlx_apatb_param_voutp)[i*8+0] = __xlx_voutp_output_buffer[i].range(63, 0).to_uint64();
    ((long long*)__xlx_apatb_param_voutp)[i*8+1] = __xlx_voutp_output_buffer[i].range(127, 64).to_uint64();
    ((long long*)__xlx_apatb_param_voutp)[i*8+2] = __xlx_voutp_output_buffer[i].range(191, 128).to_uint64();
    ((long long*)__xlx_apatb_param_voutp)[i*8+3] = __xlx_voutp_output_buffer[i].range(255, 192).to_uint64();
    ((long long*)__xlx_apatb_param_voutp)[i*8+4] = __xlx_voutp_output_buffer[i].range(319, 256).to_uint64();
    ((long long*)__xlx_apatb_param_voutp)[i*8+5] = __xlx_voutp_output_buffer[i].range(383, 320).to_uint64();
    ((long long*)__xlx_apatb_param_voutp)[i*8+6] = __xlx_voutp_output_buffer[i].range(447, 384).to_uint64();
    ((long long*)__xlx_apatb_param_voutp)[i*8+7] = __xlx_voutp_output_buffer[i].range(511, 448).to_uint64();
  }
}
