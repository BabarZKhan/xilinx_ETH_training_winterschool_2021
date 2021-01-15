#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;

// wrapc file define:
#define AUTOTB_TVIN_gmem0_0 "../tv/cdatafile/c.aes256CbcDecryptKernel.autotvin_gmem0_0.dat"
#define AUTOTB_TVOUT_gmem0_0 "../tv/cdatafile/c.aes256CbcDecryptKernel.autotvout_gmem0_0.dat"
// wrapc file define:
#define AUTOTB_TVIN_gmem0_1 "../tv/cdatafile/c.aes256CbcDecryptKernel.autotvin_gmem0_1.dat"
#define AUTOTB_TVOUT_gmem0_1 "../tv/cdatafile/c.aes256CbcDecryptKernel.autotvout_gmem0_1.dat"
// wrapc file define:
#define AUTOTB_TVIN_inputData "../tv/cdatafile/c.aes256CbcDecryptKernel.autotvin_inputData.dat"
#define AUTOTB_TVOUT_inputData "../tv/cdatafile/c.aes256CbcDecryptKernel.autotvout_inputData.dat"
// wrapc file define:
#define AUTOTB_TVIN_outputData "../tv/cdatafile/c.aes256CbcDecryptKernel.autotvin_outputData.dat"
#define AUTOTB_TVOUT_outputData "../tv/cdatafile/c.aes256CbcDecryptKernel.autotvout_outputData.dat"

#define INTER_TCL "../tv/cdatafile/ref.tcl"

// tvout file define:
#define AUTOTB_TVOUT_PC_gmem0_0 "../tv/rtldatafile/rtl.aes256CbcDecryptKernel.autotvout_gmem0_0.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_gmem0_1 "../tv/rtldatafile/rtl.aes256CbcDecryptKernel.autotvout_gmem0_1.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_inputData "../tv/rtldatafile/rtl.aes256CbcDecryptKernel.autotvout_inputData.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_outputData "../tv/rtldatafile/rtl.aes256CbcDecryptKernel.autotvout_outputData.dat"

class INTER_TCL_FILE {
  public:
INTER_TCL_FILE(const char* name) {
  mName = name; 
  gmem0_0_depth = 0;
  gmem0_1_depth = 0;
  inputData_depth = 0;
  outputData_depth = 0;
  trans_num =0;
}
~INTER_TCL_FILE() {
  mFile.open(mName);
  if (!mFile.good()) {
    cout << "Failed to open file ref.tcl" << endl;
    exit (1); 
  }
  string total_list = get_depth_list();
  mFile << "set depth_list {\n";
  mFile << total_list;
  mFile << "}\n";
  mFile << "set trans_num "<<trans_num<<endl;
  mFile.close();
}
string get_depth_list () {
  stringstream total_list;
  total_list << "{gmem0_0 " << gmem0_0_depth << "}\n";
  total_list << "{gmem0_1 " << gmem0_1_depth << "}\n";
  total_list << "{inputData " << inputData_depth << "}\n";
  total_list << "{outputData " << outputData_depth << "}\n";
  return total_list.str();
}
void set_num (int num , int* class_num) {
  (*class_num) = (*class_num) > num ? (*class_num) : num;
}
  public:
    int gmem0_0_depth;
    int gmem0_1_depth;
    int inputData_depth;
    int outputData_depth;
    int trans_num;
  private:
    ofstream mFile;
    const char* mName;
};

static void RTLOutputCheckAndReplacement(std::string &AESL_token, std::string PortName) {
  bool no_x = false;
  bool err = false;

  no_x = false;
  // search and replace 'X' with '0' from the 3rd char of token
  while (!no_x) {
    size_t x_found = AESL_token.find('X', 0);
    if (x_found != string::npos) {
      if (!err) { 
        cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port" 
             << PortName << ", possible cause: There are uninitialized variables in the C design."
             << endl; 
        err = true;
      }
      AESL_token.replace(x_found, 1, "0");
    } else
      no_x = true;
  }
  no_x = false;
  // search and replace 'x' with '0' from the 3rd char of token
  while (!no_x) {
    size_t x_found = AESL_token.find('x', 2);
    if (x_found != string::npos) {
      if (!err) { 
        cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' on port" 
             << PortName << ", possible cause: There are uninitialized variables in the C design."
             << endl; 
        err = true;
      }
      AESL_token.replace(x_found, 1, "0");
    } else
      no_x = true;
  }
}
struct __cosim_s40__ { char data[64]; };
extern "C" void aes256CbcDecryptKernel_hw_stub(volatile void *, volatile void *);

extern "C" void apatb_aes256CbcDecryptKernel_hw(volatile void * __xlx_apatb_param_inputData, volatile void * __xlx_apatb_param_outputData) {
  refine_signal_handler();
  fstream wrapc_switch_file_token;
  wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
  int AESL_i;
  if (wrapc_switch_file_token.good())
  {

    CodeState = ENTER_WRAPC_PC;
    static unsigned AESL_transaction_pc = 0;
    string AESL_token;
    string AESL_num;{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_gmem0_1);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<512> > gmem0_1_pc_buffer(1);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "gmem0_1");
  
            // push token into output port buffer
            if (AESL_token != "") {
              gmem0_1_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 0; j < e; j += 1, ++i) {((long long*)__xlx_apatb_param_outputData)[j*8+0] = gmem0_1_pc_buffer[i].range(63,0).to_int64();
((long long*)__xlx_apatb_param_outputData)[j*8+1] = gmem0_1_pc_buffer[i].range(127,64).to_int64();
((long long*)__xlx_apatb_param_outputData)[j*8+2] = gmem0_1_pc_buffer[i].range(191,128).to_int64();
((long long*)__xlx_apatb_param_outputData)[j*8+3] = gmem0_1_pc_buffer[i].range(255,192).to_int64();
((long long*)__xlx_apatb_param_outputData)[j*8+4] = gmem0_1_pc_buffer[i].range(319,256).to_int64();
((long long*)__xlx_apatb_param_outputData)[j*8+5] = gmem0_1_pc_buffer[i].range(383,320).to_int64();
((long long*)__xlx_apatb_param_outputData)[j*8+6] = gmem0_1_pc_buffer[i].range(447,384).to_int64();
((long long*)__xlx_apatb_param_outputData)[j*8+7] = gmem0_1_pc_buffer[i].range(511,448).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
    AESL_transaction_pc++;
    return ;
  }
static unsigned AESL_transaction;
static AESL_FILE_HANDLER aesl_fh;
static INTER_TCL_FILE tcl_file(INTER_TCL);
std::vector<char> __xlx_sprintf_buffer(1024);
CodeState = ENTER_WRAPC;
//gmem0_0
aesl_fh.touch(AUTOTB_TVIN_gmem0_0);
aesl_fh.touch(AUTOTB_TVOUT_gmem0_0);
//gmem0_1
aesl_fh.touch(AUTOTB_TVIN_gmem0_1);
aesl_fh.touch(AUTOTB_TVOUT_gmem0_1);
//inputData
aesl_fh.touch(AUTOTB_TVIN_inputData);
aesl_fh.touch(AUTOTB_TVOUT_inputData);
//outputData
aesl_fh.touch(AUTOTB_TVIN_outputData);
aesl_fh.touch(AUTOTB_TVOUT_outputData);
CodeState = DUMP_INPUTS;
// print gmem0_0 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_gmem0_0, __xlx_sprintf_buffer.data());
  {  if (__xlx_apatb_param_inputData) {
    for (int j = 0, e = 100; j != e; ++j) {
sc_bv<512> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_inputData)[j*8+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_inputData)[j*8+1];
__xlx_tmp_lv.range(191,128) = ((long long*)__xlx_apatb_param_inputData)[j*8+2];
__xlx_tmp_lv.range(255,192) = ((long long*)__xlx_apatb_param_inputData)[j*8+3];
__xlx_tmp_lv.range(319,256) = ((long long*)__xlx_apatb_param_inputData)[j*8+4];
__xlx_tmp_lv.range(383,320) = ((long long*)__xlx_apatb_param_inputData)[j*8+5];
__xlx_tmp_lv.range(447,384) = ((long long*)__xlx_apatb_param_inputData)[j*8+6];
__xlx_tmp_lv.range(511,448) = ((long long*)__xlx_apatb_param_inputData)[j*8+7];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_gmem0_0, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(100, &tcl_file.gmem0_0_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_gmem0_0, __xlx_sprintf_buffer.data());
}
// print gmem0_1 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_gmem0_1, __xlx_sprintf_buffer.data());
  {  if (__xlx_apatb_param_outputData) {
    for (int j = 0, e = 0; j != e; ++j) {
sc_bv<512> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_outputData)[j*8+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_outputData)[j*8+1];
__xlx_tmp_lv.range(191,128) = ((long long*)__xlx_apatb_param_outputData)[j*8+2];
__xlx_tmp_lv.range(255,192) = ((long long*)__xlx_apatb_param_outputData)[j*8+3];
__xlx_tmp_lv.range(319,256) = ((long long*)__xlx_apatb_param_outputData)[j*8+4];
__xlx_tmp_lv.range(383,320) = ((long long*)__xlx_apatb_param_outputData)[j*8+5];
__xlx_tmp_lv.range(447,384) = ((long long*)__xlx_apatb_param_outputData)[j*8+6];
__xlx_tmp_lv.range(511,448) = ((long long*)__xlx_apatb_param_outputData)[j*8+7];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_gmem0_1, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(1, &tcl_file.gmem0_1_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_gmem0_1, __xlx_sprintf_buffer.data());
}
// print inputData Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_inputData, __xlx_sprintf_buffer.data());
  {
    sc_bv<64> __xlx_tmp_lv;
    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_inputData, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.inputData_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_inputData, __xlx_sprintf_buffer.data());
}
// print outputData Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_outputData, __xlx_sprintf_buffer.data());
  {
    sc_bv<64> __xlx_tmp_lv;
    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_outputData, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.outputData_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_outputData, __xlx_sprintf_buffer.data());
}
CodeState = CALL_C_DUT;
aes256CbcDecryptKernel_hw_stub(__xlx_apatb_param_inputData, __xlx_apatb_param_outputData);
CodeState = DUMP_OUTPUTS;
// print gmem0_1 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_gmem0_1, __xlx_sprintf_buffer.data());
  {  if (__xlx_apatb_param_outputData) {
    for (int j = 0, e = 0; j != e; ++j) {
sc_bv<512> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_outputData)[j*8+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_outputData)[j*8+1];
__xlx_tmp_lv.range(191,128) = ((long long*)__xlx_apatb_param_outputData)[j*8+2];
__xlx_tmp_lv.range(255,192) = ((long long*)__xlx_apatb_param_outputData)[j*8+3];
__xlx_tmp_lv.range(319,256) = ((long long*)__xlx_apatb_param_outputData)[j*8+4];
__xlx_tmp_lv.range(383,320) = ((long long*)__xlx_apatb_param_outputData)[j*8+5];
__xlx_tmp_lv.range(447,384) = ((long long*)__xlx_apatb_param_outputData)[j*8+6];
__xlx_tmp_lv.range(511,448) = ((long long*)__xlx_apatb_param_outputData)[j*8+7];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_gmem0_1, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(1, &tcl_file.gmem0_1_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_gmem0_1, __xlx_sprintf_buffer.data());
}
CodeState = DELETE_CHAR_BUFFERS;
AESL_transaction++;
tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
}
