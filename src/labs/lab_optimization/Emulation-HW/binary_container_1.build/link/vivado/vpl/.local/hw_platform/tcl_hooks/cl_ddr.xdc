
# Clock Pin assignments

set_property PACKAGE_PIN E38 [get_ports CLK_300M_DIMM1_DP]
set_property PACKAGE_PIN D38 [get_ports CLK_300M_DIMM1_DN]
set_property PACKAGE_PIN BB36 [get_ports CLK_300M_DIMM3_DP]
set_property PACKAGE_PIN BC36 [get_ports CLK_300M_DIMM3_DN]
set_property PACKAGE_PIN K18 [get_ports CLK_300M_DIMM0_DP]
set_property PACKAGE_PIN J18 [get_ports CLK_300M_DIMM0_DN]

#Removing to avoid CRITICAL WARNING# set_clock_groups -asynchronous -group [get_clocks CLK_300M_DIMM0_DP -include_generated_clocks]
#Removing to avoid CRITICAL WARNING# set_clock_groups -asynchronous -group [get_clocks CLK_300M_DIMM1_DP -include_generated_clocks]
#Removing to avoid CRITICAL WARNING# set_clock_groups -asynchronous -group [get_clocks CLK_300M_DIMM3_DP -include_generated_clocks]

# DDR_A_ pins

set_property IOSTANDARD DIFF_SSTL12     [get_ports {CLK_300M_DIMM0_DP}]
set_property IOSTANDARD DIFF_SSTL12     [get_ports {CLK_300M_DIMM0_DN}]
set_property ODT RTT_48 [get_ports CLK_300M_DIMM0_DP]
set_property ODT RTT_48 [get_ports CLK_300M_DIMM0_DN]

set_property IOSTANDARD SSTL12_DCI      [get_ports {M_A_BA[*]}]
set_property IOSTANDARD SSTL12_DCI      [get_ports {M_A_BG[*]}]
set_property IOSTANDARD SSTL12_DCI      [get_ports {M_A_CKE[*]}]
set_property IOSTANDARD SSTL12_DCI      [get_ports {M_A_CS_N[*]}]
set_property IOSTANDARD SSTL12_DCI      [get_ports {M_A_ODT[*]}]
set_property IOSTANDARD SSTL12_DCI      [get_ports {M_A_MA[*]}]
set_property IOSTANDARD SSTL12_DCI      [get_ports {M_A_BG[*]}]
set_property IOSTANDARD SSTL12_DCI      [get_ports {M_A_ACT_N}]
set_property IOSTANDARD SSTL12_DCI      [get_ports {M_A_PAR}]
set_property IOSTANDARD SSTL12_DCI      [get_ports {M_A_CLK_DP[*]}]
set_property IOSTANDARD SSTL12_DCI      [get_ports {M_A_CLK_DN[*]}]
set_property IOSTANDARD POD12_DCI       [get_ports {M_A_DQ[*]}]
set_property IOSTANDARD DIFF_POD12_DCI  [get_ports {M_A_DQS_DP[*]}]
set_property IOSTANDARD DIFF_POD12_DCI  [get_ports {M_A_DQS_DN[*]}]
set_property IOSTANDARD POD12_DCI       [get_ports {M_A_ECC[*]}]

set_property SLEW FAST [get_ports {M_A_BA[*]}]
set_property SLEW FAST [get_ports {M_A_BG[*]}]
set_property SLEW FAST [get_ports {M_A_CKE[*]}]
set_property SLEW FAST [get_ports {M_A_CS_N[*]}]
set_property SLEW FAST [get_ports {M_A_ODT[*]}]
set_property SLEW FAST [get_ports {M_A_MA[*]}]
set_property SLEW FAST [get_ports {M_A_BG[*]}]
set_property SLEW FAST [get_ports {M_A_ACT_N}]
set_property SLEW FAST [get_ports {M_A_PAR}]
set_property SLEW FAST [get_ports {M_A_CLK_DP[*]}]
set_property SLEW FAST [get_ports {M_A_CLK_DN[*]}]
set_property SLEW FAST [get_ports {M_A_DQ[*]}]
set_property SLEW FAST [get_ports {M_A_DQS_DP[*]}]
set_property SLEW FAST [get_ports {M_A_DQS_DN[*]}]
set_property SLEW FAST [get_ports {M_A_ECC[*]}]

set_property OUTPUT_IMPEDANCE RDRV_40_40 [get_ports {M_A_BA[*]}]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [get_ports {M_A_BG[*]}]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [get_ports {M_A_CKE[*]}]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [get_ports {M_A_CS_N[*]}]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [get_ports {M_A_ODT[*]}]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [get_ports {M_A_MA[*]}]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [get_ports {M_A_BG[*]}]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [get_ports {M_A_ACT_N}]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [get_ports {M_A_PAR}]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [get_ports {M_A_CLK_DP[*]}]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [get_ports {M_A_CLK_DN[*]}]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [get_ports {M_A_DQ[*]}]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [get_ports {M_A_DQS_DP[*]}]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [get_ports {M_A_DQS_DN[*]}]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [get_ports {M_A_ECC[*]}]

set_property ODT RTT_60 [get_ports {M_A_DQ[*]}]
set_property ODT RTT_60 [get_ports {M_A_DQS_DP[*]}]
set_property ODT RTT_60 [get_ports {M_A_DQS_DN[*]}]
set_property ODT RTT_60 [get_ports {M_A_ECC[*]}]

# DDR_B_ pins
set_property IOSTANDARD DIFF_SSTL12     [get_ports {CLK_300M_DIMM1_DP}]
set_property IOSTANDARD DIFF_SSTL12     [get_ports {CLK_300M_DIMM1_DN}]
set_property ODT RTT_48 [get_ports CLK_300M_DIMM1_DP]
set_property ODT RTT_48 [get_ports CLK_300M_DIMM1_DN]

set_property IOSTANDARD SSTL12_DCI      [get_ports {M_B_BA[*]}]
set_property IOSTANDARD SSTL12_DCI      [get_ports {M_B_BG[*]}]
set_property IOSTANDARD SSTL12_DCI      [get_ports {M_B_CKE[*]}]
set_property IOSTANDARD SSTL12_DCI      [get_ports {M_B_CS_N[*]}]
set_property IOSTANDARD SSTL12_DCI      [get_ports {M_B_ODT[*]}]
set_property IOSTANDARD SSTL12_DCI      [get_ports {M_B_MA[*]}]
set_property IOSTANDARD SSTL12_DCI      [get_ports {M_B_BG[*]}]
set_property IOSTANDARD SSTL12_DCI      [get_ports {M_B_ACT_N}]
set_property IOSTANDARD SSTL12_DCI      [get_ports {M_B_PAR}]
set_property IOSTANDARD SSTL12_DCI      [get_ports {M_B_CLK_DP[*]}]
set_property IOSTANDARD SSTL12_DCI      [get_ports {M_B_CLK_DN[*]}]
set_property IOSTANDARD POD12_DCI       [get_ports {M_B_DQ[*]}]
set_property IOSTANDARD DIFF_POD12_DCI  [get_ports {M_B_DQS_DP[*]}]
set_property IOSTANDARD DIFF_POD12_DCI  [get_ports {M_B_DQS_DN[*]}]
set_property IOSTANDARD POD12_DCI       [get_ports {M_B_ECC[*]}]

set_property SLEW FAST [get_ports {M_B_BA[*]}]
set_property SLEW FAST [get_ports {M_B_BG[*]}]
set_property SLEW FAST [get_ports {M_B_CKE[*]}]
set_property SLEW FAST [get_ports {M_B_CS_N[*]}]
set_property SLEW FAST [get_ports {M_B_ODT[*]}]
set_property SLEW FAST [get_ports {M_B_MA[*]}]
set_property SLEW FAST [get_ports {M_B_BG[*]}]
set_property SLEW FAST [get_ports {M_B_ACT_N}]
set_property SLEW FAST [get_ports {M_B_PAR}]
set_property SLEW FAST [get_ports {M_B_CLK_DP[*]}]
set_property SLEW FAST [get_ports {M_B_CLK_DN[*]}]
set_property SLEW FAST [get_ports {M_B_DQ[*]}]
set_property SLEW FAST [get_ports {M_B_DQS_DP[*]}]
set_property SLEW FAST [get_ports {M_B_DQS_DN[*]}]
set_property SLEW FAST [get_ports {M_B_ECC[*]}]

set_property OUTPUT_IMPEDANCE RDRV_40_40 [get_ports {M_B_BA[*]}]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [get_ports {M_B_BG[*]}]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [get_ports {M_B_CKE[*]}]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [get_ports {M_B_CS_N[*]}]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [get_ports {M_B_ODT[*]}]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [get_ports {M_B_MA[*]}]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [get_ports {M_B_BG[*]}]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [get_ports {M_B_ACT_N}]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [get_ports {M_B_PAR}]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [get_ports {M_B_CLK_DP[*]}]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [get_ports {M_B_CLK_DN[*]}]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [get_ports {M_B_DQ[*]}]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [get_ports {M_B_DQS_DP[*]}]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [get_ports {M_B_DQS_DN[*]}]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [get_ports {M_B_ECC[*]}]

set_property ODT RTT_60 [get_ports {M_B_DQ[*]}]
set_property ODT RTT_60 [get_ports {M_B_DQS_DP[*]}]
set_property ODT RTT_60 [get_ports {M_B_DQS_DN[*]}]
set_property ODT RTT_60 [get_ports {M_B_ECC[*]}]



# DDR_D_ pins
set_property IOSTANDARD DIFF_SSTL12     [get_ports {CLK_300M_DIMM3_DP}]
set_property IOSTANDARD DIFF_SSTL12     [get_ports {CLK_300M_DIMM3_DN}]
set_property ODT RTT_48 [get_ports CLK_300M_DIMM3_DP]
set_property ODT RTT_48 [get_ports CLK_300M_DIMM3_DN]

set_property IOSTANDARD SSTL12_DCI      [get_ports {M_D_BA[*]}]
set_property IOSTANDARD SSTL12_DCI      [get_ports {M_D_BG[*]}]
set_property IOSTANDARD SSTL12_DCI      [get_ports {M_D_CKE[*]}]
set_property IOSTANDARD SSTL12_DCI      [get_ports {M_D_CS_N[*]}]
set_property IOSTANDARD SSTL12_DCI      [get_ports {M_D_ODT[*]}]
set_property IOSTANDARD SSTL12_DCI      [get_ports {M_D_MA[*]}]
set_property IOSTANDARD SSTL12_DCI      [get_ports {M_D_BG[*]}]
set_property IOSTANDARD SSTL12_DCI      [get_ports {M_D_ACT_N}]
set_property IOSTANDARD SSTL12_DCI      [get_ports {M_D_PAR}]
set_property IOSTANDARD SSTL12_DCI      [get_ports {M_D_CLK_DP[*]}]
set_property IOSTANDARD SSTL12_DCI      [get_ports {M_D_CLK_DN[*]}]
set_property IOSTANDARD POD12_DCI       [get_ports {M_D_DQ[*]}]
set_property IOSTANDARD DIFF_POD12_DCI  [get_ports {M_D_DQS_DP[*]}]
set_property IOSTANDARD DIFF_POD12_DCI  [get_ports {M_D_DQS_DN[*]}]
set_property IOSTANDARD POD12_DCI       [get_ports {M_D_ECC[*]}]

set_property SLEW FAST [get_ports {M_D_BA[*]}]
set_property SLEW FAST [get_ports {M_D_BG[*]}]
set_property SLEW FAST [get_ports {M_D_CKE[*]}]
set_property SLEW FAST [get_ports {M_D_CS_N[*]}]
set_property SLEW FAST [get_ports {M_D_ODT[*]}]
set_property SLEW FAST [get_ports {M_D_MA[*]}]
set_property SLEW FAST [get_ports {M_D_BG[*]}]
set_property SLEW FAST [get_ports {M_D_ACT_N}]
set_property SLEW FAST [get_ports {M_D_PAR}]
set_property SLEW FAST [get_ports {M_D_CLK_DP[*]}]
set_property SLEW FAST [get_ports {M_D_CLK_DN[*]}]
set_property SLEW FAST [get_ports {M_D_DQ[*]}]
set_property SLEW FAST [get_ports {M_D_DQS_DP[*]}]
set_property SLEW FAST [get_ports {M_D_DQS_DN[*]}]
set_property SLEW FAST [get_ports {M_D_ECC[*]}]

set_property OUTPUT_IMPEDANCE RDRV_40_40 [get_ports {M_D_BA[*]}]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [get_ports {M_D_BG[*]}]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [get_ports {M_D_CKE[*]}]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [get_ports {M_D_CS_N[*]}]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [get_ports {M_D_ODT[*]}]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [get_ports {M_D_MA[*]}]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [get_ports {M_D_BG[*]}]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [get_ports {M_D_ACT_N}]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [get_ports {M_D_PAR}]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [get_ports {M_D_CLK_DP[*]}]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [get_ports {M_D_CLK_DN[*]}]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [get_ports {M_D_DQ[*]}]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [get_ports {M_D_DQS_DP[*]}]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [get_ports {M_D_DQS_DN[*]}]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [get_ports {M_D_ECC[*]}]

set_property ODT RTT_60 [get_ports {M_D_DQ[*]}]
set_property ODT RTT_60 [get_ports {M_D_DQS_DP[*]}]
set_property ODT RTT_60 [get_ports {M_D_DQS_DN[*]}]
set_property ODT RTT_60 [get_ports {M_D_ECC[*]}]




set_property PACKAGE_PIN B25 [get_ports {M_A_ECC[2]}]
set_property PACKAGE_PIN A25 [get_ports {M_A_ECC[3]}]
set_property PACKAGE_PIN B24 [get_ports {M_A_ECC[0]}]
set_property PACKAGE_PIN A24 [get_ports {M_A_ECC[1]}]
set_property PACKAGE_PIN A23 [get_ports {M_A_DQS_DP[8]}]
set_property PACKAGE_PIN A22 [get_ports {M_A_DQS_DN[8]}]
set_property PACKAGE_PIN C26 [get_ports {M_A_ECC[6]}]
set_property PACKAGE_PIN B26 [get_ports {M_A_ECC[7]}]
set_property PACKAGE_PIN C24 [get_ports {M_A_ECC[4]}]
set_property PACKAGE_PIN C23 [get_ports {M_A_ECC[5]}]
set_property PACKAGE_PIN C22 [get_ports {M_A_DQS_DP[17]}]
set_property PACKAGE_PIN B22 [get_ports {M_A_DQS_DN[17]}]
set_property PACKAGE_PIN E25 [get_ports {M_A_DQ[58]}]
set_property PACKAGE_PIN D25 [get_ports {M_A_DQ[59]}]
set_property PACKAGE_PIN D24 [get_ports {M_A_DQ[56]}]
set_property PACKAGE_PIN D23 [get_ports {M_A_DQ[57]}]
set_property PACKAGE_PIN E23 [get_ports {M_A_DQS_DP[7]}]
set_property PACKAGE_PIN E22 [get_ports {M_A_DQS_DN[7]}]
set_property PACKAGE_PIN G22 [get_ports {M_A_DQ[62]}]
set_property PACKAGE_PIN F22 [get_ports {M_A_DQ[63]}]
set_property PACKAGE_PIN F24 [get_ports {M_A_DQ[60]}]
set_property PACKAGE_PIN F23 [get_ports {M_A_DQ[61]}]
set_property PACKAGE_PIN G25 [get_ports {M_A_DQS_DP[16]}]
set_property PACKAGE_PIN G24 [get_ports {M_A_DQS_DN[16]}]
set_property PACKAGE_PIN J24 [get_ports {M_A_DQ[50]}]
set_property PACKAGE_PIN H24 [get_ports {M_A_DQ[51]}]
set_property PACKAGE_PIN J23 [get_ports {M_A_DQ[48]}]
set_property PACKAGE_PIN H23 [get_ports {M_A_DQ[49]}]
set_property PACKAGE_PIN K25 [get_ports {M_A_DQS_DP[6]}]
set_property PACKAGE_PIN J25 [get_ports {M_A_DQS_DN[6]}]
set_property PACKAGE_PIN L23 [get_ports {M_A_DQ[54]}]
set_property PACKAGE_PIN K23 [get_ports {M_A_DQ[55]}]
set_property PACKAGE_PIN L22 [get_ports {M_A_DQ[52]}]
set_property PACKAGE_PIN K22 [get_ports {M_A_DQ[53]}]
set_property PACKAGE_PIN L25 [get_ports {M_A_DQS_DP[15]}]
set_property PACKAGE_PIN L24 [get_ports {M_A_DQS_DN[15]}]
set_property PACKAGE_PIN R25 [get_ports {M_A_DQ[42]}]
set_property PACKAGE_PIN P25 [get_ports {M_A_DQ[43]}]
set_property PACKAGE_PIN M25 [get_ports {M_A_DQ[40]}]
set_property PACKAGE_PIN M24 [get_ports {M_A_DQ[41]}]
set_property PACKAGE_PIN P24 [get_ports {M_A_DQS_DP[5]}]
set_property PACKAGE_PIN N24 [get_ports {M_A_DQS_DN[5]}]
set_property PACKAGE_PIN P23 [get_ports {M_A_DQ[46]}]
set_property PACKAGE_PIN N23 [get_ports {M_A_DQ[47]}]
set_property PACKAGE_PIN N22 [get_ports {M_A_DQ[44]}]
set_property PACKAGE_PIN M22 [get_ports {M_A_DQ[45]}]
set_property PACKAGE_PIN R21 [get_ports {M_A_DQS_DP[14]}]
set_property PACKAGE_PIN P21 [get_ports {M_A_DQS_DN[14]}]

set_property PACKAGE_PIN B17 [get_ports {M_A_DQ[26]}]
set_property PACKAGE_PIN A17 [get_ports {M_A_DQ[27]}]
set_property PACKAGE_PIN C16 [get_ports {M_A_DQ[24]}]
set_property PACKAGE_PIN B16 [get_ports {M_A_DQ[25]}]
set_property PACKAGE_PIN B15 [get_ports {M_A_DQS_DP[3]}]
set_property PACKAGE_PIN A15 [get_ports {M_A_DQS_DN[3]}]
set_property PACKAGE_PIN A14 [get_ports {M_A_DQ[30]}]
set_property PACKAGE_PIN A13 [get_ports {M_A_DQ[31]}]
set_property PACKAGE_PIN C14 [get_ports {M_A_DQ[28]}]
set_property PACKAGE_PIN B14 [get_ports {M_A_DQ[29]}]
set_property PACKAGE_PIN D13 [get_ports {M_A_DQS_DP[12]}]
set_property PACKAGE_PIN C13 [get_ports {M_A_DQS_DN[12]}]
set_property PACKAGE_PIN E16 [get_ports {M_A_DQ[18]}]
set_property PACKAGE_PIN D16 [get_ports {M_A_DQ[19]}]
set_property PACKAGE_PIN E15 [get_ports {M_A_DQ[16]}]
set_property PACKAGE_PIN D15 [get_ports {M_A_DQ[17]}]
set_property PACKAGE_PIN G17 [get_ports {M_A_DQS_DP[2]}]
set_property PACKAGE_PIN G16 [get_ports {M_A_DQS_DN[2]}]
set_property PACKAGE_PIN F13 [get_ports {M_A_DQ[22]}]
set_property PACKAGE_PIN E13 [get_ports {M_A_DQ[23]}]
set_property PACKAGE_PIN G15 [get_ports {M_A_DQ[20]}]
set_property PACKAGE_PIN F15 [get_ports {M_A_DQ[21]}]
set_property PACKAGE_PIN G14 [get_ports {M_A_DQS_DP[11]}]
set_property PACKAGE_PIN F14 [get_ports {M_A_DQS_DN[11]}]
set_property PACKAGE_PIN J16 [get_ports {M_A_DQ[10]}]
set_property PACKAGE_PIN J15 [get_ports {M_A_DQ[11]}]
set_property PACKAGE_PIN J14 [get_ports {M_A_DQ[8]}]
set_property PACKAGE_PIN H14 [get_ports {M_A_DQ[9]}]
set_property PACKAGE_PIN H17 [get_ports {M_A_DQS_DP[1]}]
set_property PACKAGE_PIN H16 [get_ports {M_A_DQS_DN[1]}]
set_property PACKAGE_PIN J13 [get_ports {M_A_DQ[14]}]
set_property PACKAGE_PIN H13 [get_ports {M_A_DQ[15]}]
set_property PACKAGE_PIN K16 [get_ports {M_A_DQ[12]}]
set_property PACKAGE_PIN K15 [get_ports {M_A_DQ[13]}]
set_property PACKAGE_PIN L13 [get_ports {M_A_DQS_DP[10]}]
set_property PACKAGE_PIN K13 [get_ports {M_A_DQS_DN[10]}]
set_property PACKAGE_PIN N16 [get_ports {M_A_DQ[2]}]
set_property PACKAGE_PIN M16 [get_ports {M_A_DQ[3]}]
set_property PACKAGE_PIN M14 [get_ports {M_A_DQ[0]}]
set_property PACKAGE_PIN L14 [get_ports {M_A_DQ[1]}]
set_property PACKAGE_PIN R16 [get_ports {M_A_DQS_DP[0]}]
set_property PACKAGE_PIN P16 [get_ports {M_A_DQS_DN[0]}]
set_property PACKAGE_PIN R15 [get_ports {M_A_DQ[6]}]
set_property PACKAGE_PIN P15 [get_ports {M_A_DQ[7]}]
set_property PACKAGE_PIN P14 [get_ports {M_A_DQ[4]}]
set_property PACKAGE_PIN N14 [get_ports {M_A_DQ[5]}]
set_property PACKAGE_PIN P13 [get_ports {M_A_DQS_DP[9]}]
set_property PACKAGE_PIN N13 [get_ports {M_A_DQS_DN[9]}]


set_property PACKAGE_PIN D31 [get_ports {M_B_DQ[34]}]
set_property PACKAGE_PIN C31 [get_ports {M_B_DQ[35]}]
set_property PACKAGE_PIN C32 [get_ports {M_B_DQ[32]}]
set_property PACKAGE_PIN B32 [get_ports {M_B_DQ[33]}]
set_property PACKAGE_PIN A32 [get_ports {M_B_DQS_DP[4]}]
set_property PACKAGE_PIN A33 [get_ports {M_B_DQS_DN[4]}]
set_property PACKAGE_PIN D33 [get_ports {M_B_DQ[38]}]
set_property PACKAGE_PIN C33 [get_ports {M_B_DQ[39]}]
set_property PACKAGE_PIN D34 [get_ports {M_B_DQ[36]}]
set_property PACKAGE_PIN C34 [get_ports {M_B_DQ[37]}]
set_property PACKAGE_PIN B34 [get_ports {M_B_DQS_DP[13]}]
set_property PACKAGE_PIN A34 [get_ports {M_B_DQS_DN[13]}]
set_property PACKAGE_PIN E35 [get_ports {M_B_MA[8]}]
set_property PACKAGE_PIN D35 [get_ports {M_B_MA[6]}]
set_property PACKAGE_PIN A35 [get_ports {M_B_MA[1]}]
set_property PACKAGE_PIN B36 [get_ports {M_B_CLK_DP[0]}]
set_property PACKAGE_PIN B37 [get_ports {M_B_CLK_DN[0]}]
set_property PACKAGE_PIN A37 [get_ports M_B_PAR]
set_property PACKAGE_PIN A38 [get_ports {M_B_BA[0]}]
set_property PACKAGE_PIN E36 [get_ports {M_B_MA[7]}]
set_property PACKAGE_PIN D36 [get_ports {M_B_MA[3]}]
set_property PACKAGE_PIN E37 [get_ports {M_B_BA[1]}]
set_property PACKAGE_PIN C36 [get_ports {M_B_MA[4]}]
set_property PACKAGE_PIN C37 [get_ports {M_B_MA[0]}]
set_property PACKAGE_PIN C38 [get_ports {M_B_MA[16]}]
set_property PACKAGE_PIN C39 [get_ports {M_B_MA[15]}]
set_property PACKAGE_PIN B39 [get_ports {M_B_MA[14]}]
set_property PACKAGE_PIN A39 [get_ports {M_B_CS_N[0]}]
set_property PACKAGE_PIN B40 [get_ports {M_B_MA[13]}]
set_property PACKAGE_PIN A40 [get_ports {M_B_ODT[0]}]
set_property PACKAGE_PIN E39 [get_ports {M_B_MA[10]}]
set_property PACKAGE_PIN F34 [get_ports {M_B_BG[1]}]
set_property PACKAGE_PIN H34 [get_ports {M_B_CKE[0]}]
set_property PACKAGE_PIN G34 [get_ports M_B_ACT_N]
set_property PACKAGE_PIN H36 [get_ports {M_B_MA[9]}]
set_property PACKAGE_PIN G36 [get_ports {M_B_MA[11]}]
set_property PACKAGE_PIN J35 [get_ports {M_B_BG[0]}]
set_property PACKAGE_PIN J36 [get_ports {M_B_MA[12]}]
set_property PACKAGE_PIN G37 [get_ports {M_B_MA[2]}]
set_property PACKAGE_PIN H37 [get_ports {M_B_MA[5]}]

set_property PACKAGE_PIN AL34 [get_ports {M_D_ECC[2]}]
set_property PACKAGE_PIN AM34 [get_ports {M_D_ECC[3]}]
set_property PACKAGE_PIN AL32 [get_ports {M_D_ECC[0]}]
set_property PACKAGE_PIN AM32 [get_ports {M_D_ECC[1]}]
set_property PACKAGE_PIN AN32 [get_ports {M_D_DQS_DP[8]}]
set_property PACKAGE_PIN AN33 [get_ports {M_D_DQS_DN[8]}]
set_property PACKAGE_PIN AN34 [get_ports {M_D_ECC[6]}]
set_property PACKAGE_PIN AP34 [get_ports {M_D_ECC[7]}]
set_property PACKAGE_PIN AP33 [get_ports {M_D_ECC[4]}]
set_property PACKAGE_PIN AR33 [get_ports {M_D_ECC[5]}]
set_property PACKAGE_PIN AT33 [get_ports {M_D_DQS_DP[17]}]
set_property PACKAGE_PIN AT34 [get_ports {M_D_DQS_DN[17]}]
set_property PACKAGE_PIN AW35 [get_ports {M_D_ODT[0]}]
set_property PACKAGE_PIN AY33 [get_ports {M_D_CKE[0]}]
set_property PACKAGE_PIN AY35 [get_ports M_D_ACT_N]
set_property PACKAGE_PIN BA34 [get_ports {M_D_BG[0]}]
set_property PACKAGE_PIN BB34 [get_ports {M_D_BG[1]}]
set_property PACKAGE_PIN BA35 [get_ports {M_D_CLK_DP[0]}]
set_property PACKAGE_PIN BB35 [get_ports {M_D_CLK_DN[0]}]
set_property PACKAGE_PIN BF35 [get_ports {M_D_MA[11]}]
set_property PACKAGE_PIN BB37 [get_ports {M_D_BA[1]}]
set_property PACKAGE_PIN BC37 [get_ports {M_D_MA[0]}]
set_property PACKAGE_PIN BD36 [get_ports {M_D_MA[4]}]
set_property PACKAGE_PIN BE36 [get_ports {M_D_MA[5]}]
set_property PACKAGE_PIN BD35 [get_ports {M_D_MA[8]}]
set_property PACKAGE_PIN BE35 [get_ports {M_D_MA[7]}]
set_property PACKAGE_PIN BC34 [get_ports {M_D_MA[9]}]
set_property PACKAGE_PIN BD34 [get_ports {M_D_MA[12]}]
set_property PACKAGE_PIN BB38 [get_ports {M_D_MA[15]}]
set_property PACKAGE_PIN BC38 [get_ports {M_D_CS_N[0]}]
set_property PACKAGE_PIN BC39 [get_ports {M_D_MA[13]}]
set_property PACKAGE_PIN BD39 [get_ports {M_D_MA[16]}]
set_property PACKAGE_PIN BD40 [get_ports {M_D_MA[14]}]
set_property PACKAGE_PIN BE40 [get_ports {M_D_BA[0]}]
set_property PACKAGE_PIN BE37 [get_ports {M_D_MA[2]}]
set_property PACKAGE_PIN BF37 [get_ports {M_D_MA[6]}]
set_property PACKAGE_PIN BE38 [get_ports {M_D_MA[1]}]
set_property PACKAGE_PIN BF38 [get_ports {M_D_MA[3]}]
set_property PACKAGE_PIN BF39 [get_ports M_D_PAR]
set_property PACKAGE_PIN BF40 [get_ports {M_D_MA[10]}]

set_property PACKAGE_PIN B20 [get_ports {M_A_DQ[34]}]
set_property PACKAGE_PIN A20 [get_ports {M_A_DQ[35]}]
set_property PACKAGE_PIN B19 [get_ports {M_A_DQ[32]}]
set_property PACKAGE_PIN A19 [get_ports {M_A_DQ[33]}]
set_property PACKAGE_PIN D18 [get_ports {M_A_DQS_DP[4]}]
set_property PACKAGE_PIN C18 [get_ports {M_A_DQS_DN[4]}]
set_property PACKAGE_PIN C21 [get_ports {M_A_DQ[38]}]
set_property PACKAGE_PIN B21 [get_ports {M_A_DQ[39]}]
set_property PACKAGE_PIN D21 [get_ports {M_A_DQ[36]}]
set_property PACKAGE_PIN D20 [get_ports {M_A_DQ[37]}]
set_property PACKAGE_PIN D19 [get_ports {M_A_DQS_DP[13]}]
set_property PACKAGE_PIN C19 [get_ports {M_A_DQS_DN[13]}]
set_property PACKAGE_PIN F18 [get_ports {M_A_MA[4]}]
set_property PACKAGE_PIN F17 [get_ports {M_A_MA[5]}]
set_property PACKAGE_PIN E21 [get_ports {M_A_BA[0]}]
set_property PACKAGE_PIN E20 [get_ports {M_A_MA[16]}]
set_property PACKAGE_PIN E18 [get_ports {M_A_BA[1]}]
set_property PACKAGE_PIN E17 [get_ports {M_A_MA[3]}]
set_property PACKAGE_PIN F20 [get_ports {M_A_CLK_DP[0]}]
set_property PACKAGE_PIN F19 [get_ports {M_A_CLK_DN[0]}]
set_property PACKAGE_PIN G20 [get_ports {M_A_MA[0]}]
set_property PACKAGE_PIN G21 [get_ports M_A_PAR]
set_property PACKAGE_PIN H19 [get_ports {M_A_MA[1]}]
set_property PACKAGE_PIN H18 [get_ports {M_A_MA[6]}]
set_property PACKAGE_PIN J20 [get_ports {M_A_MA[2]}]
set_property PACKAGE_PIN J19 [get_ports {M_A_MA[7]}]
set_property PACKAGE_PIN K21 [get_ports {M_A_MA[14]}]
set_property PACKAGE_PIN J21 [get_ports {M_A_MA[15]}]
set_property PACKAGE_PIN H21 [get_ports {M_A_ODT[0]}]
set_property PACKAGE_PIN K20 [get_ports {M_A_MA[8]}]
set_property PACKAGE_PIN L19 [get_ports {M_A_MA[11]}]
set_property PACKAGE_PIN L17 [get_ports {M_A_BG[0]}]
set_property PACKAGE_PIN K17 [get_ports {M_A_MA[12]}]
set_property PACKAGE_PIN P19 [get_ports {M_A_MA[10]}]
set_property PACKAGE_PIN N19 [get_ports {M_A_CS_N[0]}]
set_property PACKAGE_PIN M20 [get_ports {M_A_MA[13]}]
set_property PACKAGE_PIN M19 [get_ports {M_A_MA[9]}]
set_property PACKAGE_PIN N18 [get_ports {M_A_BG[1]}]
set_property PACKAGE_PIN N17 [get_ports {M_A_CKE[0]}]
set_property PACKAGE_PIN M17 [get_ports M_A_ACT_N]


set_property PACKAGE_PIN B30 [get_ports {M_B_ECC[2]}]
set_property PACKAGE_PIN A30 [get_ports {M_B_ECC[3]}]
set_property PACKAGE_PIN B29 [get_ports {M_B_ECC[0]}]
set_property PACKAGE_PIN A29 [get_ports {M_B_ECC[1]}]
set_property PACKAGE_PIN A27 [get_ports {M_B_DQS_DP[8]}]
set_property PACKAGE_PIN A28 [get_ports {M_B_DQS_DN[8]}]
set_property PACKAGE_PIN E30 [get_ports {M_B_ECC[6]}]
set_property PACKAGE_PIN D30 [get_ports {M_B_ECC[7]}]
set_property PACKAGE_PIN D29 [get_ports {M_B_ECC[4]}]
set_property PACKAGE_PIN C29 [get_ports {M_B_ECC[5]}]
set_property PACKAGE_PIN C27 [get_ports {M_B_DQS_DP[17]}]
set_property PACKAGE_PIN B27 [get_ports {M_B_DQS_DN[17]}]
set_property PACKAGE_PIN E28 [get_ports {M_B_DQ[26]}]
set_property PACKAGE_PIN D28 [get_ports {M_B_DQ[27]}]
set_property PACKAGE_PIN F27 [get_ports {M_B_DQ[24]}]
set_property PACKAGE_PIN E27 [get_ports {M_B_DQ[25]}]
set_property PACKAGE_PIN F28 [get_ports {M_B_DQS_DP[3]}]
set_property PACKAGE_PIN F29 [get_ports {M_B_DQS_DN[3]}]
set_property PACKAGE_PIN H29 [get_ports {M_B_DQ[30]}]
set_property PACKAGE_PIN G29 [get_ports {M_B_DQ[31]}]
set_property PACKAGE_PIN G26 [get_ports {M_B_DQ[28]}]
set_property PACKAGE_PIN G27 [get_ports {M_B_DQ[29]}]
set_property PACKAGE_PIN J26 [get_ports {M_B_DQS_DP[12]}]
set_property PACKAGE_PIN H26 [get_ports {M_B_DQS_DN[12]}]
set_property PACKAGE_PIN J28 [get_ports {M_B_DQ[2]}]
set_property PACKAGE_PIN J29 [get_ports {M_B_DQ[3]}]
set_property PACKAGE_PIN H27 [get_ports {M_B_DQ[0]}]
set_property PACKAGE_PIN H28 [get_ports {M_B_DQ[1]}]
set_property PACKAGE_PIN K26 [get_ports {M_B_DQS_DP[0]}]
set_property PACKAGE_PIN K27 [get_ports {M_B_DQS_DN[0]}]
set_property PACKAGE_PIN M27 [get_ports {M_B_DQ[6]}]
set_property PACKAGE_PIN L27 [get_ports {M_B_DQ[7]}]
set_property PACKAGE_PIN L28 [get_ports {M_B_DQ[4]}]
set_property PACKAGE_PIN K28 [get_ports {M_B_DQ[5]}]
set_property PACKAGE_PIN M29 [get_ports {M_B_DQS_DP[9]}]
set_property PACKAGE_PIN L29 [get_ports {M_B_DQS_DN[9]}]
set_property PACKAGE_PIN P26 [get_ports {M_B_DQ[42]}]
set_property PACKAGE_PIN N26 [get_ports {M_B_DQ[43]}]
set_property PACKAGE_PIN P28 [get_ports {M_B_DQ[40]}]
set_property PACKAGE_PIN N28 [get_ports {M_B_DQ[41]}]
set_property PACKAGE_PIN P29 [get_ports {M_B_DQS_DP[5]}]
set_property PACKAGE_PIN N29 [get_ports {M_B_DQS_DN[5]}]
set_property PACKAGE_PIN T26 [get_ports {M_B_DQ[46]}]
set_property PACKAGE_PIN R26 [get_ports {M_B_DQ[47]}]
set_property PACKAGE_PIN T27 [get_ports {M_B_DQ[44]}]
set_property PACKAGE_PIN R27 [get_ports {M_B_DQ[45]}]
set_property PACKAGE_PIN T28 [get_ports {M_B_DQS_DP[14]}]
set_property PACKAGE_PIN R28 [get_ports {M_B_DQS_DN[14]}]

set_property PACKAGE_PIN W33 [get_ports {M_D_DQ[58]}]
set_property PACKAGE_PIN W34 [get_ports {M_D_DQ[59]}]
set_property PACKAGE_PIN Y32 [get_ports {M_D_DQ[56]}]
set_property PACKAGE_PIN Y33 [get_ports {M_D_DQ[57]}]
set_property PACKAGE_PIN W31 [get_ports {M_D_DQS_DP[7]}]
set_property PACKAGE_PIN Y31 [get_ports {M_D_DQS_DN[7]}]
set_property PACKAGE_PIN W30 [get_ports {M_D_DQ[62]}]
set_property PACKAGE_PIN Y30 [get_ports {M_D_DQ[63]}]
set_property PACKAGE_PIN AA34 [get_ports {M_D_DQ[60]}]
set_property PACKAGE_PIN AB34 [get_ports {M_D_DQ[61]}]
set_property PACKAGE_PIN AA32 [get_ports {M_D_DQS_DP[16]}]
set_property PACKAGE_PIN AA33 [get_ports {M_D_DQS_DN[16]}]
set_property PACKAGE_PIN AC34 [get_ports {M_D_DQ[50]}]
set_property PACKAGE_PIN AD34 [get_ports {M_D_DQ[51]}]
set_property PACKAGE_PIN AC32 [get_ports {M_D_DQ[48]}]
set_property PACKAGE_PIN AC33 [get_ports {M_D_DQ[49]}]
set_property PACKAGE_PIN AC31 [get_ports {M_D_DQS_DP[6]}]
set_property PACKAGE_PIN AD31 [get_ports {M_D_DQS_DN[6]}]
set_property PACKAGE_PIN AE30 [get_ports {M_D_DQ[54]}]
set_property PACKAGE_PIN AF30 [get_ports {M_D_DQ[55]}]
set_property PACKAGE_PIN AD33 [get_ports {M_D_DQ[52]}]
set_property PACKAGE_PIN AE33 [get_ports {M_D_DQ[53]}]
set_property PACKAGE_PIN AE31 [get_ports {M_D_DQS_DP[15]}]
set_property PACKAGE_PIN AE32 [get_ports {M_D_DQS_DN[15]}]
set_property PACKAGE_PIN AF32 [get_ports {M_D_DQ[42]}]
set_property PACKAGE_PIN AF33 [get_ports {M_D_DQ[43]}]
set_property PACKAGE_PIN AG31 [get_ports {M_D_DQ[40]}]
set_property PACKAGE_PIN AG32 [get_ports {M_D_DQ[41]}]
set_property PACKAGE_PIN AH31 [get_ports {M_D_DQS_DP[5]}]
set_property PACKAGE_PIN AH32 [get_ports {M_D_DQS_DN[5]}]
set_property PACKAGE_PIN AF34 [get_ports {M_D_DQ[46]}]
set_property PACKAGE_PIN AG34 [get_ports {M_D_DQ[47]}]
set_property PACKAGE_PIN AH33 [get_ports {M_D_DQ[44]}]
set_property PACKAGE_PIN AJ33 [get_ports {M_D_DQ[45]}]
set_property PACKAGE_PIN AH34 [get_ports {M_D_DQS_DP[14]}]
set_property PACKAGE_PIN AJ34 [get_ports {M_D_DQS_DN[14]}]
set_property PACKAGE_PIN AJ31 [get_ports {M_D_DQ[34]}]
set_property PACKAGE_PIN AK31 [get_ports {M_D_DQ[35]}]
set_property PACKAGE_PIN AG29 [get_ports {M_D_DQ[32]}]
set_property PACKAGE_PIN AG30 [get_ports {M_D_DQ[33]}]
set_property PACKAGE_PIN AH28 [get_ports {M_D_DQS_DP[4]}]
set_property PACKAGE_PIN AH29 [get_ports {M_D_DQS_DN[4]}]
set_property PACKAGE_PIN AJ29 [get_ports {M_D_DQ[38]}]
set_property PACKAGE_PIN AJ30 [get_ports {M_D_DQ[39]}]
set_property PACKAGE_PIN AJ28 [get_ports {M_D_DQ[36]}]
set_property PACKAGE_PIN AK28 [get_ports {M_D_DQ[37]}]
set_property PACKAGE_PIN AJ27 [get_ports {M_D_DQS_DP[13]}]
set_property PACKAGE_PIN AK27 [get_ports {M_D_DQS_DN[13]}]

set_property PACKAGE_PIN F33 [get_ports {M_B_DQ[58]}]
set_property PACKAGE_PIN E33 [get_ports {M_B_DQ[59]}]
set_property PACKAGE_PIN F32 [get_ports {M_B_DQ[56]}]
set_property PACKAGE_PIN E32 [get_ports {M_B_DQ[57]}]
set_property PACKAGE_PIN J33 [get_ports {M_B_DQS_DP[7]}]
set_property PACKAGE_PIN H33 [get_ports {M_B_DQS_DN[7]}]
set_property PACKAGE_PIN H32 [get_ports {M_B_DQ[62]}]
set_property PACKAGE_PIN G32 [get_ports {M_B_DQ[63]}]
set_property PACKAGE_PIN H31 [get_ports {M_B_DQ[60]}]
set_property PACKAGE_PIN G31 [get_ports {M_B_DQ[61]}]
set_property PACKAGE_PIN G30 [get_ports {M_B_DQS_DP[16]}]
set_property PACKAGE_PIN F30 [get_ports {M_B_DQS_DN[16]}]
set_property PACKAGE_PIN L33 [get_ports {M_B_DQ[18]}]
set_property PACKAGE_PIN K33 [get_ports {M_B_DQ[19]}]
set_property PACKAGE_PIN K31 [get_ports {M_B_DQ[16]}]
set_property PACKAGE_PIN J31 [get_ports {M_B_DQ[17]}]
set_property PACKAGE_PIN K30 [get_ports {M_B_DQS_DP[2]}]
set_property PACKAGE_PIN J30 [get_ports {M_B_DQS_DN[2]}]
set_property PACKAGE_PIN M30 [get_ports {M_B_DQ[23]}]
set_property PACKAGE_PIN L30 [get_ports {M_B_DQ[22]}]
set_property PACKAGE_PIN L32 [get_ports {M_B_DQ[20]}]
set_property PACKAGE_PIN K32 [get_ports {M_B_DQ[21]}]
set_property PACKAGE_PIN M31 [get_ports {M_B_DQS_DP[11]}]
set_property PACKAGE_PIN M32 [get_ports {M_B_DQS_DN[11]}]
set_property PACKAGE_PIN N32 [get_ports {M_B_DQ[10]}]
set_property PACKAGE_PIN N33 [get_ports {M_B_DQ[11]}]
set_property PACKAGE_PIN P31 [get_ports {M_B_DQ[8]}]
set_property PACKAGE_PIN N31 [get_ports {M_B_DQ[9]}]
set_property PACKAGE_PIN M34 [get_ports {M_B_DQS_DP[1]}]
set_property PACKAGE_PIN L34 [get_ports {M_B_DQS_DN[1]}]
set_property PACKAGE_PIN P34 [get_ports {M_B_DQ[14]}]
set_property PACKAGE_PIN N34 [get_ports {M_B_DQ[15]}]
set_property PACKAGE_PIN R31 [get_ports {M_B_DQ[12]}]
set_property PACKAGE_PIN R32 [get_ports {M_B_DQ[13]}]
set_property PACKAGE_PIN R30 [get_ports {M_B_DQS_DP[10]}]
set_property PACKAGE_PIN P30 [get_ports {M_B_DQS_DN[10]}]
set_property PACKAGE_PIN U30 [get_ports {M_B_DQ[50]}]
set_property PACKAGE_PIN T30 [get_ports {M_B_DQ[51]}]
set_property PACKAGE_PIN V31 [get_ports {M_B_DQ[49]}]
set_property PACKAGE_PIN U31 [get_ports {M_B_DQ[48]}]
set_property PACKAGE_PIN V32 [get_ports {M_B_DQS_DP[6]}]
set_property PACKAGE_PIN V33 [get_ports {M_B_DQS_DN[6]}]
set_property PACKAGE_PIN U32 [get_ports {M_B_DQ[54]}]
set_property PACKAGE_PIN T32 [get_ports {M_B_DQ[55]}]
set_property PACKAGE_PIN T33 [get_ports {M_B_DQ[52]}]
set_property PACKAGE_PIN R33 [get_ports {M_B_DQ[53]}]
set_property PACKAGE_PIN U34 [get_ports {M_B_DQS_DP[15]}]
set_property PACKAGE_PIN T34 [get_ports {M_B_DQS_DN[15]}]

set_property PACKAGE_PIN AL29 [get_ports {M_D_DQ[2]}]
set_property PACKAGE_PIN AL30 [get_ports {M_D_DQ[3]}]
set_property PACKAGE_PIN AM31 [get_ports {M_D_DQ[0]}]
set_property PACKAGE_PIN AN31 [get_ports {M_D_DQ[1]}]
set_property PACKAGE_PIN AM29 [get_ports {M_D_DQS_DP[0]}]
set_property PACKAGE_PIN AM30 [get_ports {M_D_DQS_DN[0]}]
set_property PACKAGE_PIN AN29 [get_ports {M_D_DQ[6]}]
set_property PACKAGE_PIN AP29 [get_ports {M_D_DQ[7]}]
set_property PACKAGE_PIN AP30 [get_ports {M_D_DQ[4]}]
set_property PACKAGE_PIN AR30 [get_ports {M_D_DQ[5]}]
set_property PACKAGE_PIN AP31 [get_ports {M_D_DQS_DP[9]}]
set_property PACKAGE_PIN AR31 [get_ports {M_D_DQS_DN[9]}]
set_property PACKAGE_PIN AT29 [get_ports {M_D_DQ[19]}]
set_property PACKAGE_PIN AT30 [get_ports {M_D_DQ[18]}]
set_property PACKAGE_PIN AU30 [get_ports {M_D_DQ[16]}]
set_property PACKAGE_PIN AU31 [get_ports {M_D_DQ[17]}]
set_property PACKAGE_PIN AU29 [get_ports {M_D_DQS_DP[2]}]
set_property PACKAGE_PIN AV29 [get_ports {M_D_DQS_DN[2]}]
set_property PACKAGE_PIN AU32 [get_ports {M_D_DQ[22]}]
set_property PACKAGE_PIN AV32 [get_ports {M_D_DQ[23]}]
set_property PACKAGE_PIN AV31 [get_ports {M_D_DQ[20]}]
set_property PACKAGE_PIN AW31 [get_ports {M_D_DQ[21]}]
set_property PACKAGE_PIN AW29 [get_ports {M_D_DQS_DP[11]}]
set_property PACKAGE_PIN AW30 [get_ports {M_D_DQS_DN[11]}]
set_property PACKAGE_PIN AY31 [get_ports {M_D_DQ[10]}]
set_property PACKAGE_PIN AY32 [get_ports {M_D_DQ[11]}]
set_property PACKAGE_PIN AY30 [get_ports {M_D_DQ[8]}]
set_property PACKAGE_PIN BA30 [get_ports {M_D_DQ[9]}]
set_property PACKAGE_PIN BA32 [get_ports {M_D_DQS_DP[1]}]
set_property PACKAGE_PIN BB32 [get_ports {M_D_DQS_DN[1]}]
set_property PACKAGE_PIN BA29 [get_ports {M_D_DQ[14]}]
set_property PACKAGE_PIN BB29 [get_ports {M_D_DQ[15]}]
set_property PACKAGE_PIN BB30 [get_ports {M_D_DQ[12]}]
set_property PACKAGE_PIN BB31 [get_ports {M_D_DQ[13]}]
set_property PACKAGE_PIN BC31 [get_ports {M_D_DQS_DP[10]}]
set_property PACKAGE_PIN BC32 [get_ports {M_D_DQS_DN[10]}]
set_property PACKAGE_PIN BC29 [get_ports {M_D_DQ[27]}]
set_property PACKAGE_PIN BD29 [get_ports {M_D_DQ[26]}]
set_property PACKAGE_PIN BD33 [get_ports {M_D_DQ[24]}]
set_property PACKAGE_PIN BE33 [get_ports {M_D_DQ[25]}]
set_property PACKAGE_PIN BD30 [get_ports {M_D_DQS_DP[3]}]
set_property PACKAGE_PIN BD31 [get_ports {M_D_DQS_DN[3]}]
set_property PACKAGE_PIN BE30 [get_ports {M_D_DQ[30]}]
set_property PACKAGE_PIN BF30 [get_ports {M_D_DQ[31]}]
set_property PACKAGE_PIN BE31 [get_ports {M_D_DQ[28]}]
set_property PACKAGE_PIN BE32 [get_ports {M_D_DQ[29]}]
set_property PACKAGE_PIN BF32 [get_ports {M_D_DQS_DP[12]}]
set_property PACKAGE_PIN BF33 [get_ports {M_D_DQS_DN[12]}]

