<?xml version="1.0" encoding="UTF-8" standalone="yes" ?>
<!DOCTYPE boost_serialization>
<boost_serialization signature="serialization::archive" version="15">
<syndb class_id="0" tracking_level="0" version="0">
	<userIPLatency>-1</userIPLatency>
	<userIPName></userIPName>
	<cdfg class_id="1" tracking_level="1" version="0" object_id="_0">
		<name>krnl_idct_dataflow</name>
		<ret_bitwidth>0</ret_bitwidth>
		<ports class_id="2" tracking_level="0" version="0">
			<count>8</count>
			<item_version>0</item_version>
			<item class_id="3" tracking_level="1" version="0" object_id="_1">
				<Value class_id="4" tracking_level="0" version="0">
					<Obj class_id="5" tracking_level="0" version="0">
						<type>1</type>
						<id>1</id>
						<name>gmem0</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo class_id="6" tracking_level="0" version="0">
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>512</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>4</if_type>
				<array_size>0</array_size>
				<bit_vecs class_id="7" tracking_level="0" version="0">
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_2">
				<Value>
					<Obj>
						<type>1</type>
						<id>2</id>
						<name>gmem1</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>512</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>4</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_3">
				<Value>
					<Obj>
						<type>1</type>
						<id>3</id>
						<name>gmem2</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>512</bitwidth>
				</Value>
				<direction>1</direction>
				<if_type>4</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_4">
				<Value>
					<Obj>
						<type>1</type>
						<id>4</id>
						<name>block_r</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>block</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>64</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>0</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_5">
				<Value>
					<Obj>
						<type>1</type>
						<id>5</id>
						<name>q</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>q</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>64</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>0</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_6">
				<Value>
					<Obj>
						<type>1</type>
						<id>6</id>
						<name>voutp</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>voutp</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>64</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>0</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_7">
				<Value>
					<Obj>
						<type>1</type>
						<id>7</id>
						<name>ignore_dc</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>ignore_dc</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>0</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_8">
				<Value>
					<Obj>
						<type>1</type>
						<id>8</id>
						<name>blocks</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>blocks</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>0</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
		</ports>
		<nodes class_id="8" tracking_level="0" version="0">
			<count>22</count>
			<item_version>0</item_version>
			<item class_id="9" tracking_level="1" version="0" object_id="_9">
				<Value>
					<Obj>
						<type>0</type>
						<id>9</id>
						<name>blocks_read</name>
						<fileName>/home/centos/workspace/lab_optimization/src/krnl_idct.cpp</fileName>
						<fileDirectory>/home/centos/workspace/lab_optimization/Emulation-HW/binary_container_1.build/krnl_idct/krnl_idct</fileDirectory>
						<lineNumber>318</lineNumber>
						<contextFuncName>krnl_idct_dataflow</contextFuncName>
						<contextNormFuncName>krnl_idct_dataflow</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item class_id="10" tracking_level="0" version="0">
								<first>/home/centos/workspace/lab_optimization/Emulation-HW/binary_container_1.build/krnl_idct/krnl_idct</first>
								<second class_id="11" tracking_level="0" version="0">
									<count>1</count>
									<item_version>0</item_version>
									<item class_id="12" tracking_level="0" version="0">
										<first class_id="13" tracking_level="0" version="0">
											<first>/home/centos/workspace/lab_optimization/src/krnl_idct.cpp</first>
											<second>krnl_idct_dataflow</second>
										</first>
										<second>318</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>blocks</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>2</count>
					<item_version>0</item_version>
					<item>57</item>
					<item>58</item>
				</oprand_edges>
				<opcode>read</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>1</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_10">
				<Value>
					<Obj>
						<type>0</type>
						<id>10</id>
						<name>ignore_dc_read</name>
						<fileName>/home/centos/workspace/lab_optimization/src/krnl_idct.cpp</fileName>
						<fileDirectory>/home/centos/workspace/lab_optimization/Emulation-HW/binary_container_1.build/krnl_idct/krnl_idct</fileDirectory>
						<lineNumber>318</lineNumber>
						<contextFuncName>krnl_idct_dataflow</contextFuncName>
						<contextNormFuncName>krnl_idct_dataflow</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/centos/workspace/lab_optimization/Emulation-HW/binary_container_1.build/krnl_idct/krnl_idct</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>/home/centos/workspace/lab_optimization/src/krnl_idct.cpp</first>
											<second>krnl_idct_dataflow</second>
										</first>
										<second>318</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>ignore_dc</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>2</count>
					<item_version>0</item_version>
					<item>59</item>
					<item>60</item>
				</oprand_edges>
				<opcode>read</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>2</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_11">
				<Value>
					<Obj>
						<type>0</type>
						<id>11</id>
						<name>voutp_read</name>
						<fileName>/home/centos/workspace/lab_optimization/src/krnl_idct.cpp</fileName>
						<fileDirectory>/home/centos/workspace/lab_optimization/Emulation-HW/binary_container_1.build/krnl_idct/krnl_idct</fileDirectory>
						<lineNumber>318</lineNumber>
						<contextFuncName>krnl_idct_dataflow</contextFuncName>
						<contextNormFuncName>krnl_idct_dataflow</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/centos/workspace/lab_optimization/Emulation-HW/binary_container_1.build/krnl_idct/krnl_idct</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>/home/centos/workspace/lab_optimization/src/krnl_idct.cpp</first>
											<second>krnl_idct_dataflow</second>
										</first>
										<second>318</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>voutp</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>64</bitwidth>
				</Value>
				<oprand_edges>
					<count>2</count>
					<item_version>0</item_version>
					<item>62</item>
					<item>63</item>
				</oprand_edges>
				<opcode>read</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>3</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_12">
				<Value>
					<Obj>
						<type>0</type>
						<id>12</id>
						<name>q_read</name>
						<fileName>/home/centos/workspace/lab_optimization/src/krnl_idct.cpp</fileName>
						<fileDirectory>/home/centos/workspace/lab_optimization/Emulation-HW/binary_container_1.build/krnl_idct/krnl_idct</fileDirectory>
						<lineNumber>318</lineNumber>
						<contextFuncName>krnl_idct_dataflow</contextFuncName>
						<contextNormFuncName>krnl_idct_dataflow</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/centos/workspace/lab_optimization/Emulation-HW/binary_container_1.build/krnl_idct/krnl_idct</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>/home/centos/workspace/lab_optimization/src/krnl_idct.cpp</first>
											<second>krnl_idct_dataflow</second>
										</first>
										<second>318</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>q</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>64</bitwidth>
				</Value>
				<oprand_edges>
					<count>2</count>
					<item_version>0</item_version>
					<item>64</item>
					<item>65</item>
				</oprand_edges>
				<opcode>read</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>4</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_13">
				<Value>
					<Obj>
						<type>0</type>
						<id>13</id>
						<name>block_read</name>
						<fileName>/home/centos/workspace/lab_optimization/src/krnl_idct.cpp</fileName>
						<fileDirectory>/home/centos/workspace/lab_optimization/Emulation-HW/binary_container_1.build/krnl_idct/krnl_idct</fileDirectory>
						<lineNumber>318</lineNumber>
						<contextFuncName>krnl_idct_dataflow</contextFuncName>
						<contextNormFuncName>krnl_idct_dataflow</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/centos/workspace/lab_optimization/Emulation-HW/binary_container_1.build/krnl_idct/krnl_idct</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>/home/centos/workspace/lab_optimization/src/krnl_idct.cpp</first>
											<second>krnl_idct_dataflow</second>
										</first>
										<second>318</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>block</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>64</bitwidth>
				</Value>
				<oprand_edges>
					<count>2</count>
					<item_version>0</item_version>
					<item>66</item>
					<item>67</item>
				</oprand_edges>
				<opcode>read</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>5</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_14">
				<Value>
					<Obj>
						<type>0</type>
						<id>14</id>
						<name>blocks_c14</name>
						<fileName>/home/centos/workspace/lab_optimization/src/krnl_idct.cpp</fileName>
						<fileDirectory>/home/centos/workspace/lab_optimization/Emulation-HW/binary_container_1.build/krnl_idct/krnl_idct</fileDirectory>
						<lineNumber>318</lineNumber>
						<contextFuncName>krnl_idct_dataflow</contextFuncName>
						<contextNormFuncName>krnl_idct_dataflow</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/centos/workspace/lab_optimization/Emulation-HW/binary_container_1.build/krnl_idct/krnl_idct</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>/home/centos/workspace/lab_optimization/src/krnl_idct.cpp</first>
											<second>krnl_idct_dataflow</second>
										</first>
										<second>318</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>31</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>69</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>6</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_15">
				<Value>
					<Obj>
						<type>0</type>
						<id>15</id>
						<name>blocks_c13</name>
						<fileName>/home/centos/workspace/lab_optimization/src/krnl_idct.cpp</fileName>
						<fileDirectory>/home/centos/workspace/lab_optimization/Emulation-HW/binary_container_1.build/krnl_idct/krnl_idct</fileDirectory>
						<lineNumber>318</lineNumber>
						<contextFuncName>krnl_idct_dataflow</contextFuncName>
						<contextNormFuncName>krnl_idct_dataflow</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/centos/workspace/lab_optimization/Emulation-HW/binary_container_1.build/krnl_idct/krnl_idct</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>/home/centos/workspace/lab_optimization/src/krnl_idct.cpp</first>
											<second>krnl_idct_dataflow</second>
										</first>
										<second>318</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>70</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>7</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_16">
				<Value>
					<Obj>
						<type>0</type>
						<id>16</id>
						<name>blocks_c</name>
						<fileName>/home/centos/workspace/lab_optimization/src/krnl_idct.cpp</fileName>
						<fileDirectory>/home/centos/workspace/lab_optimization/Emulation-HW/binary_container_1.build/krnl_idct/krnl_idct</fileDirectory>
						<lineNumber>318</lineNumber>
						<contextFuncName>krnl_idct_dataflow</contextFuncName>
						<contextNormFuncName>krnl_idct_dataflow</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/centos/workspace/lab_optimization/Emulation-HW/binary_container_1.build/krnl_idct/krnl_idct</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>/home/centos/workspace/lab_optimization/src/krnl_idct.cpp</first>
											<second>krnl_idct_dataflow</second>
										</first>
										<second>318</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>31</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>71</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>8</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_17">
				<Value>
					<Obj>
						<type>0</type>
						<id>17</id>
						<name>ignore_dc_c</name>
						<fileName>/home/centos/workspace/lab_optimization/src/krnl_idct.cpp</fileName>
						<fileDirectory>/home/centos/workspace/lab_optimization/Emulation-HW/binary_container_1.build/krnl_idct/krnl_idct</fileDirectory>
						<lineNumber>317</lineNumber>
						<contextFuncName>krnl_idct_dataflow</contextFuncName>
						<contextNormFuncName>krnl_idct_dataflow</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/centos/workspace/lab_optimization/Emulation-HW/binary_container_1.build/krnl_idct/krnl_idct</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>/home/centos/workspace/lab_optimization/src/krnl_idct.cpp</first>
											<second>krnl_idct_dataflow</second>
										</first>
										<second>317</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>72</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>9</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_18">
				<Value>
					<Obj>
						<type>0</type>
						<id>18</id>
						<name>voutp_c</name>
						<fileName>/home/centos/workspace/lab_optimization/src/krnl_idct.cpp</fileName>
						<fileDirectory>/home/centos/workspace/lab_optimization/Emulation-HW/binary_container_1.build/krnl_idct/krnl_idct</fileDirectory>
						<lineNumber>316</lineNumber>
						<contextFuncName>krnl_idct_dataflow</contextFuncName>
						<contextNormFuncName>krnl_idct_dataflow</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/centos/workspace/lab_optimization/Emulation-HW/binary_container_1.build/krnl_idct/krnl_idct</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>/home/centos/workspace/lab_optimization/src/krnl_idct.cpp</first>
											<second>krnl_idct_dataflow</second>
										</first>
										<second>316</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>64</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>73</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>10</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_19">
				<Value>
					<Obj>
						<type>0</type>
						<id>19</id>
						<name>q_c</name>
						<fileName>/home/centos/workspace/lab_optimization/src/krnl_idct.cpp</fileName>
						<fileDirectory>/home/centos/workspace/lab_optimization/Emulation-HW/binary_container_1.build/krnl_idct/krnl_idct</fileDirectory>
						<lineNumber>315</lineNumber>
						<contextFuncName>krnl_idct_dataflow</contextFuncName>
						<contextNormFuncName>krnl_idct_dataflow</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/centos/workspace/lab_optimization/Emulation-HW/binary_container_1.build/krnl_idct/krnl_idct</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>/home/centos/workspace/lab_optimization/src/krnl_idct.cpp</first>
											<second>krnl_idct_dataflow</second>
										</first>
										<second>315</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>64</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>74</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>11</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_20">
				<Value>
					<Obj>
						<type>0</type>
						<id>20</id>
						<name>block_c</name>
						<fileName>/home/centos/workspace/lab_optimization/src/krnl_idct.cpp</fileName>
						<fileDirectory>/home/centos/workspace/lab_optimization/Emulation-HW/binary_container_1.build/krnl_idct/krnl_idct</fileDirectory>
						<lineNumber>314</lineNumber>
						<contextFuncName>krnl_idct_dataflow</contextFuncName>
						<contextNormFuncName>krnl_idct_dataflow</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/centos/workspace/lab_optimization/Emulation-HW/binary_container_1.build/krnl_idct/krnl_idct</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>/home/centos/workspace/lab_optimization/src/krnl_idct.cpp</first>
											<second>krnl_idct_dataflow</second>
										</first>
										<second>314</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>64</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>75</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>12</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_21">
				<Value>
					<Obj>
						<type>0</type>
						<id>25</id>
						<name>iblock</name>
						<fileName>/home/centos/workspace/lab_optimization/src/krnl_idct.cpp</fileName>
						<fileDirectory>/home/centos/workspace/lab_optimization/Emulation-HW/binary_container_1.build/krnl_idct/krnl_idct</fileDirectory>
						<lineNumber>321</lineNumber>
						<contextFuncName>krnl_idct_dataflow</contextFuncName>
						<contextNormFuncName>krnl_idct_dataflow</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/centos/workspace/lab_optimization/Emulation-HW/binary_container_1.build/krnl_idct/krnl_idct</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>/home/centos/workspace/lab_optimization/src/krnl_idct.cpp</first>
											<second>krnl_idct_dataflow</second>
										</first>
										<second>321</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>iblock</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>512</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>76</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>13</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_22">
				<Value>
					<Obj>
						<type>0</type>
						<id>28</id>
						<name>iq</name>
						<fileName>/home/centos/workspace/lab_optimization/src/krnl_idct.cpp</fileName>
						<fileDirectory>/home/centos/workspace/lab_optimization/Emulation-HW/binary_container_1.build/krnl_idct/krnl_idct</fileDirectory>
						<lineNumber>322</lineNumber>
						<contextFuncName>krnl_idct_dataflow</contextFuncName>
						<contextNormFuncName>krnl_idct_dataflow</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/centos/workspace/lab_optimization/Emulation-HW/binary_container_1.build/krnl_idct/krnl_idct</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>/home/centos/workspace/lab_optimization/src/krnl_idct.cpp</first>
											<second>krnl_idct_dataflow</second>
										</first>
										<second>322</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>iq</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>512</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>77</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>14</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_23">
				<Value>
					<Obj>
						<type>0</type>
						<id>31</id>
						<name>ivoutp</name>
						<fileName>/home/centos/workspace/lab_optimization/src/krnl_idct.cpp</fileName>
						<fileDirectory>/home/centos/workspace/lab_optimization/Emulation-HW/binary_container_1.build/krnl_idct/krnl_idct</fileDirectory>
						<lineNumber>323</lineNumber>
						<contextFuncName>krnl_idct_dataflow</contextFuncName>
						<contextNormFuncName>krnl_idct_dataflow</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/centos/workspace/lab_optimization/Emulation-HW/binary_container_1.build/krnl_idct/krnl_idct</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>/home/centos/workspace/lab_optimization/src/krnl_idct.cpp</first>
											<second>krnl_idct_dataflow</second>
										</first>
										<second>323</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>ivoutp</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>512</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>78</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>15</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_24">
				<Value>
					<Obj>
						<type>0</type>
						<id>46</id>
						<name>_ln318</name>
						<fileName>/home/centos/workspace/lab_optimization/src/krnl_idct.cpp</fileName>
						<fileDirectory>/home/centos/workspace/lab_optimization/Emulation-HW/binary_container_1.build/krnl_idct/krnl_idct</fileDirectory>
						<lineNumber>318</lineNumber>
						<contextFuncName>krnl_idct_dataflow</contextFuncName>
						<contextNormFuncName>krnl_idct_dataflow</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/centos/workspace/lab_optimization/Emulation-HW/binary_container_1.build/krnl_idct/krnl_idct</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>/home/centos/workspace/lab_optimization/src/krnl_idct.cpp</first>
											<second>krnl_idct_dataflow</second>
										</first>
										<second>318</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>12</count>
					<item_version>0</item_version>
					<item>80</item>
					<item>81</item>
					<item>82</item>
					<item>83</item>
					<item>84</item>
					<item>85</item>
					<item>86</item>
					<item>87</item>
					<item>88</item>
					<item>89</item>
					<item>90</item>
					<item>91</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>1.45</m_delay>
				<m_topoIndex>16</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_25">
				<Value>
					<Obj>
						<type>0</type>
						<id>47</id>
						<name>_ln329</name>
						<fileName>/home/centos/workspace/lab_optimization/src/krnl_idct.cpp</fileName>
						<fileDirectory>/home/centos/workspace/lab_optimization/Emulation-HW/binary_container_1.build/krnl_idct/krnl_idct</fileDirectory>
						<lineNumber>329</lineNumber>
						<contextFuncName>krnl_idct_dataflow</contextFuncName>
						<contextNormFuncName>krnl_idct_dataflow</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/centos/workspace/lab_optimization/Emulation-HW/binary_container_1.build/krnl_idct/krnl_idct</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>/home/centos/workspace/lab_optimization/src/krnl_idct.cpp</first>
											<second>krnl_idct_dataflow</second>
										</first>
										<second>329</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>6</count>
					<item_version>0</item_version>
					<item>93</item>
					<item>94</item>
					<item>95</item>
					<item>96</item>
					<item>478</item>
					<item>481</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>17</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_26">
				<Value>
					<Obj>
						<type>0</type>
						<id>48</id>
						<name>_ln330</name>
						<fileName>/home/centos/workspace/lab_optimization/src/krnl_idct.cpp</fileName>
						<fileDirectory>/home/centos/workspace/lab_optimization/Emulation-HW/binary_container_1.build/krnl_idct/krnl_idct</fileDirectory>
						<lineNumber>330</lineNumber>
						<contextFuncName>krnl_idct_dataflow</contextFuncName>
						<contextNormFuncName>krnl_idct_dataflow</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/centos/workspace/lab_optimization/Emulation-HW/binary_container_1.build/krnl_idct/krnl_idct</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>/home/centos/workspace/lab_optimization/src/krnl_idct.cpp</first>
											<second>krnl_idct_dataflow</second>
										</first>
										<second>330</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>6</count>
					<item_version>0</item_version>
					<item>98</item>
					<item>99</item>
					<item>100</item>
					<item>101</item>
					<item>102</item>
					<item>479</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>18</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_27">
				<Value>
					<Obj>
						<type>0</type>
						<id>49</id>
						<name>icmp_ln331_loc_channel</name>
						<fileName>/home/centos/workspace/lab_optimization/src/krnl_idct.cpp</fileName>
						<fileDirectory>/home/centos/workspace/lab_optimization/Emulation-HW/binary_container_1.build/krnl_idct/krnl_idct</fileDirectory>
						<lineNumber>317</lineNumber>
						<contextFuncName>krnl_idct_dataflow</contextFuncName>
						<contextNormFuncName>krnl_idct_dataflow</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/centos/workspace/lab_optimization/Emulation-HW/binary_container_1.build/krnl_idct/krnl_idct</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>/home/centos/workspace/lab_optimization/src/krnl_idct.cpp</first>
											<second>krnl_idct_dataflow</second>
										</first>
										<second>317</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>1</bitwidth>
				</Value>
				<oprand_edges>
					<count>3</count>
					<item_version>0</item_version>
					<item>104</item>
					<item>105</item>
					<item>480</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>19</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_28">
				<Value>
					<Obj>
						<type>0</type>
						<id>52</id>
						<name>_ln331</name>
						<fileName>/home/centos/workspace/lab_optimization/src/krnl_idct.cpp</fileName>
						<fileDirectory>/home/centos/workspace/lab_optimization/Emulation-HW/binary_container_1.build/krnl_idct/krnl_idct</fileDirectory>
						<lineNumber>331</lineNumber>
						<contextFuncName>krnl_idct_dataflow</contextFuncName>
						<contextNormFuncName>krnl_idct_dataflow</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/centos/workspace/lab_optimization/Emulation-HW/binary_container_1.build/krnl_idct/krnl_idct</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>/home/centos/workspace/lab_optimization/src/krnl_idct.cpp</first>
											<second>krnl_idct_dataflow</second>
										</first>
										<second>331</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>10</count>
					<item_version>0</item_version>
					<item>107</item>
					<item>108</item>
					<item>109</item>
					<item>110</item>
					<item>111</item>
					<item>112</item>
					<item>113</item>
					<item>476</item>
					<item>477</item>
					<item>482</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>20</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_29">
				<Value>
					<Obj>
						<type>0</type>
						<id>53</id>
						<name>_ln332</name>
						<fileName>/home/centos/workspace/lab_optimization/src/krnl_idct.cpp</fileName>
						<fileDirectory>/home/centos/workspace/lab_optimization/Emulation-HW/binary_container_1.build/krnl_idct/krnl_idct</fileDirectory>
						<lineNumber>332</lineNumber>
						<contextFuncName>krnl_idct_dataflow</contextFuncName>
						<contextNormFuncName>krnl_idct_dataflow</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/centos/workspace/lab_optimization/Emulation-HW/binary_container_1.build/krnl_idct/krnl_idct</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>/home/centos/workspace/lab_optimization/src/krnl_idct.cpp</first>
											<second>krnl_idct_dataflow</second>
										</first>
										<second>332</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>7</count>
					<item_version>0</item_version>
					<item>115</item>
					<item>116</item>
					<item>117</item>
					<item>118</item>
					<item>119</item>
					<item>475</item>
					<item>483</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>21</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_30">
				<Value>
					<Obj>
						<type>0</type>
						<id>54</id>
						<name>_ln333</name>
						<fileName>/home/centos/workspace/lab_optimization/src/krnl_idct.cpp</fileName>
						<fileDirectory>/home/centos/workspace/lab_optimization/Emulation-HW/binary_container_1.build/krnl_idct/krnl_idct</fileDirectory>
						<lineNumber>333</lineNumber>
						<contextFuncName>krnl_idct_dataflow</contextFuncName>
						<contextNormFuncName>krnl_idct_dataflow</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/centos/workspace/lab_optimization/Emulation-HW/binary_container_1.build/krnl_idct/krnl_idct</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>/home/centos/workspace/lab_optimization/src/krnl_idct.cpp</first>
											<second>krnl_idct_dataflow</second>
										</first>
										<second>333</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>0</count>
					<item_version>0</item_version>
				</oprand_edges>
				<opcode>ret</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>22</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
		</nodes>
		<consts class_id="15" tracking_level="0" version="0">
			<count>7</count>
			<item_version>0</item_version>
			<item class_id="16" tracking_level="1" version="0" object_id="_31">
				<Value>
					<Obj>
						<type>2</type>
						<id>68</id>
						<name>empty</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>64</bitwidth>
				</Value>
				<const_type>0</const_type>
				<content>1</content>
			</item>
			<item class_id_reference="16" object_id="_32">
				<Value>
					<Obj>
						<type>2</type>
						<id>79</id>
						<name>krnl_idct_dataflow_entry6</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:krnl_idct_dataflow.entry6&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_33">
				<Value>
					<Obj>
						<type>2</type>
						<id>92</id>
						<name>read_blocks_ap_uint_512_s</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:read_blocks&lt;ap_uint&lt;512&gt; &gt;&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_34">
				<Value>
					<Obj>
						<type>2</type>
						<id>97</id>
						<name>read_blocks_ap_int_512_s</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:read_blocks&lt;ap_int&lt;512&gt; &gt;&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_35">
				<Value>
					<Obj>
						<type>2</type>
						<id>103</id>
						<name>krnl_idct_dataflow_Block_split25_proc</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>1</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:krnl_idct_dataflow_Block_.split25_proc&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_36">
				<Value>
					<Obj>
						<type>2</type>
						<id>106</id>
						<name>execute</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:execute&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_37">
				<Value>
					<Obj>
						<type>2</type>
						<id>114</id>
						<name>write_blocks</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:write_blocks&gt;</content>
			</item>
		</consts>
		<blocks class_id="17" tracking_level="0" version="0">
			<count>1</count>
			<item_version>0</item_version>
			<item class_id="18" tracking_level="1" version="0" object_id="_38">
				<Obj>
					<type>3</type>
					<id>55</id>
					<name>krnl_idct_dataflow</name>
					<fileName></fileName>
					<fileDirectory></fileDirectory>
					<lineNumber>0</lineNumber>
					<contextFuncName></contextFuncName>
					<contextNormFuncName></contextNormFuncName>
					<inlineStackInfo>
						<count>0</count>
						<item_version>0</item_version>
					</inlineStackInfo>
					<originalName></originalName>
					<rtlName></rtlName>
					<coreName></coreName>
				</Obj>
				<node_objs>
					<count>22</count>
					<item_version>0</item_version>
					<item>9</item>
					<item>10</item>
					<item>11</item>
					<item>12</item>
					<item>13</item>
					<item>14</item>
					<item>15</item>
					<item>16</item>
					<item>17</item>
					<item>18</item>
					<item>19</item>
					<item>20</item>
					<item>25</item>
					<item>28</item>
					<item>31</item>
					<item>46</item>
					<item>47</item>
					<item>48</item>
					<item>49</item>
					<item>52</item>
					<item>53</item>
					<item>54</item>
				</node_objs>
			</item>
		</blocks>
		<edges class_id="19" tracking_level="0" version="0">
			<count>59</count>
			<item_version>0</item_version>
			<item class_id="20" tracking_level="1" version="0" object_id="_39">
				<id>58</id>
				<edge_type>1</edge_type>
				<source_obj>8</source_obj>
				<sink_obj>9</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_40">
				<id>60</id>
				<edge_type>1</edge_type>
				<source_obj>7</source_obj>
				<sink_obj>10</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_41">
				<id>63</id>
				<edge_type>1</edge_type>
				<source_obj>6</source_obj>
				<sink_obj>11</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_42">
				<id>65</id>
				<edge_type>1</edge_type>
				<source_obj>5</source_obj>
				<sink_obj>12</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_43">
				<id>67</id>
				<edge_type>1</edge_type>
				<source_obj>4</source_obj>
				<sink_obj>13</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_44">
				<id>69</id>
				<edge_type>1</edge_type>
				<source_obj>68</source_obj>
				<sink_obj>14</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_45">
				<id>70</id>
				<edge_type>1</edge_type>
				<source_obj>68</source_obj>
				<sink_obj>15</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_46">
				<id>71</id>
				<edge_type>1</edge_type>
				<source_obj>68</source_obj>
				<sink_obj>16</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_47">
				<id>72</id>
				<edge_type>1</edge_type>
				<source_obj>68</source_obj>
				<sink_obj>17</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_48">
				<id>73</id>
				<edge_type>1</edge_type>
				<source_obj>68</source_obj>
				<sink_obj>18</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_49">
				<id>74</id>
				<edge_type>1</edge_type>
				<source_obj>68</source_obj>
				<sink_obj>19</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_50">
				<id>75</id>
				<edge_type>1</edge_type>
				<source_obj>68</source_obj>
				<sink_obj>20</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_51">
				<id>76</id>
				<edge_type>1</edge_type>
				<source_obj>68</source_obj>
				<sink_obj>25</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_52">
				<id>77</id>
				<edge_type>1</edge_type>
				<source_obj>68</source_obj>
				<sink_obj>28</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_53">
				<id>78</id>
				<edge_type>1</edge_type>
				<source_obj>68</source_obj>
				<sink_obj>31</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_54">
				<id>80</id>
				<edge_type>1</edge_type>
				<source_obj>79</source_obj>
				<sink_obj>46</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_55">
				<id>81</id>
				<edge_type>1</edge_type>
				<source_obj>13</source_obj>
				<sink_obj>46</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_56">
				<id>82</id>
				<edge_type>1</edge_type>
				<source_obj>12</source_obj>
				<sink_obj>46</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_57">
				<id>83</id>
				<edge_type>1</edge_type>
				<source_obj>11</source_obj>
				<sink_obj>46</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_58">
				<id>84</id>
				<edge_type>1</edge_type>
				<source_obj>10</source_obj>
				<sink_obj>46</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_59">
				<id>85</id>
				<edge_type>1</edge_type>
				<source_obj>9</source_obj>
				<sink_obj>46</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_60">
				<id>86</id>
				<edge_type>1</edge_type>
				<source_obj>20</source_obj>
				<sink_obj>46</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_61">
				<id>87</id>
				<edge_type>1</edge_type>
				<source_obj>19</source_obj>
				<sink_obj>46</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_62">
				<id>88</id>
				<edge_type>1</edge_type>
				<source_obj>18</source_obj>
				<sink_obj>46</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_63">
				<id>89</id>
				<edge_type>1</edge_type>
				<source_obj>17</source_obj>
				<sink_obj>46</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_64">
				<id>90</id>
				<edge_type>1</edge_type>
				<source_obj>16</source_obj>
				<sink_obj>46</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_65">
				<id>91</id>
				<edge_type>1</edge_type>
				<source_obj>15</source_obj>
				<sink_obj>46</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_66">
				<id>93</id>
				<edge_type>1</edge_type>
				<source_obj>92</source_obj>
				<sink_obj>47</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_67">
				<id>94</id>
				<edge_type>1</edge_type>
				<source_obj>2</source_obj>
				<sink_obj>47</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_68">
				<id>95</id>
				<edge_type>1</edge_type>
				<source_obj>28</source_obj>
				<sink_obj>47</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_69">
				<id>96</id>
				<edge_type>1</edge_type>
				<source_obj>19</source_obj>
				<sink_obj>47</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_70">
				<id>98</id>
				<edge_type>1</edge_type>
				<source_obj>97</source_obj>
				<sink_obj>48</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_71">
				<id>99</id>
				<edge_type>1</edge_type>
				<source_obj>1</source_obj>
				<sink_obj>48</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_72">
				<id>100</id>
				<edge_type>1</edge_type>
				<source_obj>25</source_obj>
				<sink_obj>48</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_73">
				<id>101</id>
				<edge_type>1</edge_type>
				<source_obj>20</source_obj>
				<sink_obj>48</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_74">
				<id>102</id>
				<edge_type>1</edge_type>
				<source_obj>16</source_obj>
				<sink_obj>48</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_75">
				<id>104</id>
				<edge_type>1</edge_type>
				<source_obj>103</source_obj>
				<sink_obj>49</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_76">
				<id>105</id>
				<edge_type>1</edge_type>
				<source_obj>17</source_obj>
				<sink_obj>49</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_77">
				<id>107</id>
				<edge_type>1</edge_type>
				<source_obj>106</source_obj>
				<sink_obj>52</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_78">
				<id>108</id>
				<edge_type>1</edge_type>
				<source_obj>25</source_obj>
				<sink_obj>52</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_79">
				<id>109</id>
				<edge_type>1</edge_type>
				<source_obj>28</source_obj>
				<sink_obj>52</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_80">
				<id>110</id>
				<edge_type>1</edge_type>
				<source_obj>31</source_obj>
				<sink_obj>52</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_81">
				<id>111</id>
				<edge_type>1</edge_type>
				<source_obj>49</source_obj>
				<sink_obj>52</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_82">
				<id>112</id>
				<edge_type>1</edge_type>
				<source_obj>15</source_obj>
				<sink_obj>52</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_83">
				<id>113</id>
				<edge_type>1</edge_type>
				<source_obj>14</source_obj>
				<sink_obj>52</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_84">
				<id>115</id>
				<edge_type>1</edge_type>
				<source_obj>114</source_obj>
				<sink_obj>53</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_85">
				<id>116</id>
				<edge_type>1</edge_type>
				<source_obj>3</source_obj>
				<sink_obj>53</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_86">
				<id>117</id>
				<edge_type>1</edge_type>
				<source_obj>31</source_obj>
				<sink_obj>53</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_87">
				<id>118</id>
				<edge_type>1</edge_type>
				<source_obj>18</source_obj>
				<sink_obj>53</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_88">
				<id>119</id>
				<edge_type>1</edge_type>
				<source_obj>14</source_obj>
				<sink_obj>53</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_89">
				<id>475</id>
				<edge_type>4</edge_type>
				<source_obj>52</source_obj>
				<sink_obj>53</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_90">
				<id>476</id>
				<edge_type>4</edge_type>
				<source_obj>48</source_obj>
				<sink_obj>52</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_91">
				<id>477</id>
				<edge_type>4</edge_type>
				<source_obj>47</source_obj>
				<sink_obj>52</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_92">
				<id>478</id>
				<edge_type>4</edge_type>
				<source_obj>46</source_obj>
				<sink_obj>47</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_93">
				<id>479</id>
				<edge_type>4</edge_type>
				<source_obj>46</source_obj>
				<sink_obj>48</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_94">
				<id>480</id>
				<edge_type>4</edge_type>
				<source_obj>46</source_obj>
				<sink_obj>49</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_95">
				<id>481</id>
				<edge_type>4</edge_type>
				<source_obj>46</source_obj>
				<sink_obj>47</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_96">
				<id>482</id>
				<edge_type>4</edge_type>
				<source_obj>47</source_obj>
				<sink_obj>52</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_97">
				<id>483</id>
				<edge_type>4</edge_type>
				<source_obj>52</source_obj>
				<sink_obj>53</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
		</edges>
	</cdfg>
	<cdfg_regions class_id="21" tracking_level="0" version="0">
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="22" tracking_level="1" version="0" object_id="_98">
			<mId>1</mId>
			<mTag>krnl_idct_dataflow</mTag>
			<mNormTag>krnl_idct_dataflow</mNormTag>
			<mType>0</mType>
			<sub_regions>
				<count>0</count>
				<item_version>0</item_version>
			</sub_regions>
			<basic_blocks>
				<count>1</count>
				<item_version>0</item_version>
				<item>55</item>
			</basic_blocks>
			<mII>-1</mII>
			<mDepth>-1</mDepth>
			<mMinTripCount>-1</mMinTripCount>
			<mMaxTripCount>-1</mMaxTripCount>
			<mMinLatency>2144</mMinLatency>
			<mMaxLatency>2214</mMaxLatency>
			<mIsDfPipe>1</mIsDfPipe>
			<mDfPipe class_id="23" tracking_level="1" version="0" object_id="_99">
				<port_list class_id="24" tracking_level="0" version="0">
					<count>0</count>
					<item_version>0</item_version>
				</port_list>
				<process_list class_id="25" tracking_level="0" version="0">
					<count>6</count>
					<item_version>0</item_version>
					<item class_id="26" tracking_level="1" version="0" object_id="_100">
						<type>0</type>
						<name>krnl_idct_dataflow_entry6_U0</name>
						<ssdmobj_id>46</ssdmobj_id>
						<pins class_id="27" tracking_level="0" version="0">
							<count>11</count>
							<item_version>0</item_version>
							<item class_id="28" tracking_level="1" version="0" object_id="_101">
								<port class_id="29" tracking_level="1" version="0" object_id="_102">
									<name>block</name>
									<dir>3</dir>
									<type>0</type>
								</port>
								<inst class_id="30" tracking_level="1" version="0" object_id="_103">
									<type>0</type>
									<name>krnl_idct_dataflow_entry6_U0</name>
									<ssdmobj_id>46</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="28" object_id="_104">
								<port class_id_reference="29" object_id="_105">
									<name>q</name>
									<dir>3</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_103"></inst>
							</item>
							<item class_id_reference="28" object_id="_106">
								<port class_id_reference="29" object_id="_107">
									<name>voutp</name>
									<dir>3</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_103"></inst>
							</item>
							<item class_id_reference="28" object_id="_108">
								<port class_id_reference="29" object_id="_109">
									<name>ignore_dc</name>
									<dir>3</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_103"></inst>
							</item>
							<item class_id_reference="28" object_id="_110">
								<port class_id_reference="29" object_id="_111">
									<name>blocks</name>
									<dir>3</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_103"></inst>
							</item>
							<item class_id_reference="28" object_id="_112">
								<port class_id_reference="29" object_id="_113">
									<name>block_out</name>
									<dir>0</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_103"></inst>
							</item>
							<item class_id_reference="28" object_id="_114">
								<port class_id_reference="29" object_id="_115">
									<name>q_out</name>
									<dir>0</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_103"></inst>
							</item>
							<item class_id_reference="28" object_id="_116">
								<port class_id_reference="29" object_id="_117">
									<name>voutp_out</name>
									<dir>0</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_103"></inst>
							</item>
							<item class_id_reference="28" object_id="_118">
								<port class_id_reference="29" object_id="_119">
									<name>ignore_dc_out</name>
									<dir>0</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_103"></inst>
							</item>
							<item class_id_reference="28" object_id="_120">
								<port class_id_reference="29" object_id="_121">
									<name>blocks_out</name>
									<dir>0</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_103"></inst>
							</item>
							<item class_id_reference="28" object_id="_122">
								<port class_id_reference="29" object_id="_123">
									<name>blocks_out1</name>
									<dir>0</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_103"></inst>
							</item>
						</pins>
					</item>
					<item class_id_reference="26" object_id="_124">
						<type>0</type>
						<name>read_blocks_ap_uint_512_U0</name>
						<ssdmobj_id>47</ssdmobj_id>
						<pins>
							<count>3</count>
							<item_version>0</item_version>
							<item class_id_reference="28" object_id="_125">
								<port class_id_reference="29" object_id="_126">
									<name>gmem1</name>
									<dir>1</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id="_127">
									<type>0</type>
									<name>read_blocks_ap_uint_512_U0</name>
									<ssdmobj_id>47</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="28" object_id="_128">
								<port class_id_reference="29" object_id="_129">
									<name>iq4</name>
									<dir>0</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_127"></inst>
							</item>
							<item class_id_reference="28" object_id="_130">
								<port class_id_reference="29" object_id="_131">
									<name>in</name>
									<dir>0</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_127"></inst>
							</item>
						</pins>
					</item>
					<item class_id_reference="26" object_id="_132">
						<type>0</type>
						<name>read_blocks_ap_int_512_U0</name>
						<ssdmobj_id>48</ssdmobj_id>
						<pins>
							<count>4</count>
							<item_version>0</item_version>
							<item class_id_reference="28" object_id="_133">
								<port class_id_reference="29" object_id="_134">
									<name>gmem0</name>
									<dir>1</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id="_135">
									<type>0</type>
									<name>read_blocks_ap_int_512_U0</name>
									<ssdmobj_id>48</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="28" object_id="_136">
								<port class_id_reference="29" object_id="_137">
									<name>out</name>
									<dir>0</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_135"></inst>
							</item>
							<item class_id_reference="28" object_id="_138">
								<port class_id_reference="29" object_id="_139">
									<name>block</name>
									<dir>0</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_135"></inst>
							</item>
							<item class_id_reference="28" object_id="_140">
								<port class_id_reference="29" object_id="_141">
									<name>blocks</name>
									<dir>0</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_135"></inst>
							</item>
						</pins>
					</item>
					<item class_id_reference="26" object_id="_142">
						<type>0</type>
						<name>krnl_idct_dataflow_Block_split25_proc_U0</name>
						<ssdmobj_id>49</ssdmobj_id>
						<pins>
							<count>2</count>
							<item_version>0</item_version>
							<item class_id_reference="28" object_id="_143">
								<port class_id_reference="29" object_id="_144">
									<name>ignore_dc</name>
									<dir>0</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id="_145">
									<type>0</type>
									<name>krnl_idct_dataflow_Block_split25_proc_U0</name>
									<ssdmobj_id>49</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="28" object_id="_146">
								<port class_id_reference="29" object_id="_147">
									<name>ap_return</name>
									<dir>3</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_145"></inst>
							</item>
						</pins>
					</item>
					<item class_id_reference="26" object_id="_148">
						<type>0</type>
						<name>execute_U0</name>
						<ssdmobj_id>52</ssdmobj_id>
						<pins>
							<count>6</count>
							<item_version>0</item_version>
							<item class_id_reference="28" object_id="_149">
								<port class_id_reference="29" object_id="_150">
									<name>iblock</name>
									<dir>0</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id="_151">
									<type>0</type>
									<name>execute_U0</name>
									<ssdmobj_id>52</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="28" object_id="_152">
								<port class_id_reference="29" object_id="_153">
									<name>iq</name>
									<dir>0</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_151"></inst>
							</item>
							<item class_id_reference="28" object_id="_154">
								<port class_id_reference="29" object_id="_155">
									<name>ivoutp</name>
									<dir>0</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_151"></inst>
							</item>
							<item class_id_reference="28" object_id="_156">
								<port class_id_reference="29" object_id="_157">
									<name>ignore_dc</name>
									<dir>3</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_151"></inst>
							</item>
							<item class_id_reference="28" object_id="_158">
								<port class_id_reference="29" object_id="_159">
									<name>blocks</name>
									<dir>0</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_151"></inst>
							</item>
							<item class_id_reference="28" object_id="_160">
								<port class_id_reference="29" object_id="_161">
									<name>blocks_out</name>
									<dir>0</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_151"></inst>
							</item>
						</pins>
					</item>
					<item class_id_reference="26" object_id="_162">
						<type>0</type>
						<name>write_blocks_U0</name>
						<ssdmobj_id>53</ssdmobj_id>
						<pins>
							<count>4</count>
							<item_version>0</item_version>
							<item class_id_reference="28" object_id="_163">
								<port class_id_reference="29" object_id="_164">
									<name>gmem2</name>
									<dir>1</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id="_165">
									<type>0</type>
									<name>write_blocks_U0</name>
									<ssdmobj_id>53</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="28" object_id="_166">
								<port class_id_reference="29" object_id="_167">
									<name>in</name>
									<dir>0</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_165"></inst>
							</item>
							<item class_id_reference="28" object_id="_168">
								<port class_id_reference="29" object_id="_169">
									<name>voutp</name>
									<dir>0</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_165"></inst>
							</item>
							<item class_id_reference="28" object_id="_170">
								<port class_id_reference="29" object_id="_171">
									<name>blocks</name>
									<dir>0</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_165"></inst>
							</item>
						</pins>
					</item>
				</process_list>
				<channel_list class_id="31" tracking_level="0" version="0">
					<count>11</count>
					<item_version>0</item_version>
					<item class_id="32" tracking_level="1" version="0" object_id="_172">
						<type>1</type>
						<name>block_c</name>
						<ssdmobj_id>20</ssdmobj_id>
						<ctype>0</ctype>
						<depth>2</depth>
						<bitwidth>64</bitwidth>
						<suggested_type>2</suggested_type>
						<suggested_depth>2</suggested_depth>
						<source class_id_reference="28" object_id="_173">
							<port class_id_reference="29" object_id="_174">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_103"></inst>
						</source>
						<sink class_id_reference="28" object_id="_175">
							<port class_id_reference="29" object_id="_176">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_135"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_177">
						<type>1</type>
						<name>q_c</name>
						<ssdmobj_id>19</ssdmobj_id>
						<ctype>0</ctype>
						<depth>2</depth>
						<bitwidth>64</bitwidth>
						<suggested_type>2</suggested_type>
						<suggested_depth>2</suggested_depth>
						<source class_id_reference="28" object_id="_178">
							<port class_id_reference="29" object_id="_179">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_103"></inst>
						</source>
						<sink class_id_reference="28" object_id="_180">
							<port class_id_reference="29" object_id="_181">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_127"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_182">
						<type>1</type>
						<name>voutp_c</name>
						<ssdmobj_id>18</ssdmobj_id>
						<ctype>0</ctype>
						<depth>4</depth>
						<bitwidth>64</bitwidth>
						<suggested_type>2</suggested_type>
						<suggested_depth>4</suggested_depth>
						<source class_id_reference="28" object_id="_183">
							<port class_id_reference="29" object_id="_184">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_103"></inst>
						</source>
						<sink class_id_reference="28" object_id="_185">
							<port class_id_reference="29" object_id="_186">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_165"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_187">
						<type>1</type>
						<name>ignore_dc_c</name>
						<ssdmobj_id>17</ssdmobj_id>
						<ctype>0</ctype>
						<depth>2</depth>
						<bitwidth>32</bitwidth>
						<suggested_type>2</suggested_type>
						<suggested_depth>2</suggested_depth>
						<source class_id_reference="28" object_id="_188">
							<port class_id_reference="29" object_id="_189">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_103"></inst>
						</source>
						<sink class_id_reference="28" object_id="_190">
							<port class_id_reference="29" object_id="_191">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_145"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_192">
						<type>1</type>
						<name>blocks_c</name>
						<ssdmobj_id>16</ssdmobj_id>
						<ctype>0</ctype>
						<depth>2</depth>
						<bitwidth>31</bitwidth>
						<suggested_type>2</suggested_type>
						<suggested_depth>2</suggested_depth>
						<source class_id_reference="28" object_id="_193">
							<port class_id_reference="29" object_id="_194">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_103"></inst>
						</source>
						<sink class_id_reference="28" object_id="_195">
							<port class_id_reference="29" object_id="_196">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_135"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_197">
						<type>1</type>
						<name>blocks_c13</name>
						<ssdmobj_id>15</ssdmobj_id>
						<ctype>0</ctype>
						<depth>3</depth>
						<bitwidth>32</bitwidth>
						<suggested_type>2</suggested_type>
						<suggested_depth>3</suggested_depth>
						<source class_id_reference="28" object_id="_198">
							<port class_id_reference="29" object_id="_199">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_103"></inst>
						</source>
						<sink class_id_reference="28" object_id="_200">
							<port class_id_reference="29" object_id="_201">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_151"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_202">
						<type>1</type>
						<name>iq</name>
						<ssdmobj_id>28</ssdmobj_id>
						<ctype>0</ctype>
						<depth>2</depth>
						<bitwidth>512</bitwidth>
						<suggested_type>0</suggested_type>
						<suggested_depth>2</suggested_depth>
						<source class_id_reference="28" object_id="_203">
							<port class_id_reference="29" object_id="_204">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_127"></inst>
						</source>
						<sink class_id_reference="28" object_id="_205">
							<port class_id_reference="29" object_id="_206">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_151"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_207">
						<type>1</type>
						<name>iblock</name>
						<ssdmobj_id>25</ssdmobj_id>
						<ctype>0</ctype>
						<depth>512</depth>
						<bitwidth>512</bitwidth>
						<suggested_type>0</suggested_type>
						<suggested_depth>512</suggested_depth>
						<source class_id_reference="28" object_id="_208">
							<port class_id_reference="29" object_id="_209">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_135"></inst>
						</source>
						<sink class_id_reference="28" object_id="_210">
							<port class_id_reference="29" object_id="_211">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_151"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_212">
						<type>1</type>
						<name>icmp_ln331_loc_channel</name>
						<ssdmobj_id>49</ssdmobj_id>
						<ctype>0</ctype>
						<depth>2</depth>
						<bitwidth>1</bitwidth>
						<suggested_type>1</suggested_type>
						<suggested_depth>2</suggested_depth>
						<source class_id_reference="28" object_id="_213">
							<port class_id_reference="29" object_id="_214">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_145"></inst>
						</source>
						<sink class_id_reference="28" object_id="_215">
							<port class_id_reference="29" object_id="_216">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_151"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_217">
						<type>1</type>
						<name>ivoutp</name>
						<ssdmobj_id>31</ssdmobj_id>
						<ctype>0</ctype>
						<depth>512</depth>
						<bitwidth>512</bitwidth>
						<suggested_type>0</suggested_type>
						<suggested_depth>512</suggested_depth>
						<source class_id_reference="28" object_id="_218">
							<port class_id_reference="29" object_id="_219">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_151"></inst>
						</source>
						<sink class_id_reference="28" object_id="_220">
							<port class_id_reference="29" object_id="_221">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_165"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_222">
						<type>1</type>
						<name>blocks_c14</name>
						<ssdmobj_id>14</ssdmobj_id>
						<ctype>0</ctype>
						<depth>2</depth>
						<bitwidth>31</bitwidth>
						<suggested_type>2</suggested_type>
						<suggested_depth>2</suggested_depth>
						<source class_id_reference="28" object_id="_223">
							<port class_id_reference="29" object_id="_224">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_151"></inst>
						</source>
						<sink class_id_reference="28" object_id="_225">
							<port class_id_reference="29" object_id="_226">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_165"></inst>
						</sink>
					</item>
				</channel_list>
				<net_list class_id="33" tracking_level="0" version="0">
					<count>0</count>
					<item_version>0</item_version>
				</net_list>
			</mDfPipe>
		</item>
	</cdfg_regions>
	<fsm class_id="-1"></fsm>
	<res class_id="-1"></res>
	<node_label_latency class_id="36" tracking_level="0" version="0">
		<count>22</count>
		<item_version>0</item_version>
		<item class_id="37" tracking_level="0" version="0">
			<first>9</first>
			<second class_id="38" tracking_level="0" version="0">
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>10</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>11</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>12</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>13</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>14</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>15</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>16</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>17</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>18</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>19</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>20</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>25</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>28</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>31</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>46</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>47</first>
			<second>
				<first>1</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>48</first>
			<second>
				<first>1</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>49</first>
			<second>
				<first>3</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>52</first>
			<second>
				<first>3</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>53</first>
			<second>
				<first>5</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>54</first>
			<second>
				<first>6</first>
				<second>0</second>
			</second>
		</item>
	</node_label_latency>
	<bblk_ent_exit class_id="39" tracking_level="0" version="0">
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="40" tracking_level="0" version="0">
			<first>55</first>
			<second class_id="41" tracking_level="0" version="0">
				<first>0</first>
				<second>6</second>
			</second>
		</item>
	</bblk_ent_exit>
	<regions class_id="42" tracking_level="0" version="0">
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="43" tracking_level="1" version="0" object_id="_227">
			<region_name>krnl_idct_dataflow</region_name>
			<basic_blocks>
				<count>1</count>
				<item_version>0</item_version>
				<item>55</item>
			</basic_blocks>
			<nodes>
				<count>46</count>
				<item_version>0</item_version>
				<item>9</item>
				<item>10</item>
				<item>11</item>
				<item>12</item>
				<item>13</item>
				<item>14</item>
				<item>15</item>
				<item>16</item>
				<item>17</item>
				<item>18</item>
				<item>19</item>
				<item>20</item>
				<item>21</item>
				<item>22</item>
				<item>23</item>
				<item>24</item>
				<item>25</item>
				<item>26</item>
				<item>27</item>
				<item>28</item>
				<item>29</item>
				<item>30</item>
				<item>31</item>
				<item>32</item>
				<item>33</item>
				<item>34</item>
				<item>35</item>
				<item>36</item>
				<item>37</item>
				<item>38</item>
				<item>39</item>
				<item>40</item>
				<item>41</item>
				<item>42</item>
				<item>43</item>
				<item>44</item>
				<item>45</item>
				<item>46</item>
				<item>47</item>
				<item>48</item>
				<item>49</item>
				<item>50</item>
				<item>51</item>
				<item>52</item>
				<item>53</item>
				<item>54</item>
			</nodes>
			<anchor_node>-1</anchor_node>
			<region_type>16</region_type>
			<interval>0</interval>
			<pipe_depth>0</pipe_depth>
		</item>
	</regions>
	<dp_fu_nodes class_id="44" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</dp_fu_nodes>
	<dp_fu_nodes_expression class_id="45" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</dp_fu_nodes_expression>
	<dp_fu_nodes_module>
		<count>0</count>
		<item_version>0</item_version>
	</dp_fu_nodes_module>
	<dp_fu_nodes_io>
		<count>0</count>
		<item_version>0</item_version>
	</dp_fu_nodes_io>
	<return_ports>
		<count>0</count>
		<item_version>0</item_version>
	</return_ports>
	<dp_mem_port_nodes class_id="46" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</dp_mem_port_nodes>
	<dp_reg_nodes>
		<count>0</count>
		<item_version>0</item_version>
	</dp_reg_nodes>
	<dp_regname_nodes>
		<count>0</count>
		<item_version>0</item_version>
	</dp_regname_nodes>
	<dp_reg_phi>
		<count>0</count>
		<item_version>0</item_version>
	</dp_reg_phi>
	<dp_regname_phi>
		<count>0</count>
		<item_version>0</item_version>
	</dp_regname_phi>
	<dp_port_io_nodes class_id="47" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</dp_port_io_nodes>
	<port2core>
		<count>0</count>
		<item_version>0</item_version>
	</port2core>
	<node2core>
		<count>0</count>
		<item_version>0</item_version>
	</node2core>
</syndb>
</boost_serialization>

