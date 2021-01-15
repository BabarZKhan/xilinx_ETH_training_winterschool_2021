set lang "C"
set moduleName "matmul_naive"
set moduleIsExternC "1"
set rawDecl ""
set globalVariable ""
set portList ""
set portName "gmem"
set portInterface "wire"
set portData "unsigned int"
set portPointer "1"
set portArrayDim [list 0]
set portConst "0"
set portVolatile "1"
set portArrayOpt ""
lappend portList [list $portName $portInterface $portData $portPointer $portArrayDim $portConst $portVolatile $portArrayOpt]
set portInterfaceCtl "wire"
set portDataCtl "unsigned long long"
set portPointerCtl "0"
set portArrayDimCtl [list 0]
set portConstCtl "0"
set portVolatileCtl "0"
set portArrayOptCtl ""
lappend portList [list "in1" $portInterfaceCtl $portDataCtl $portPointerCtl $portArrayDimCtl $portConstCtl $portVolatileCtl $portArrayOptCtl]
set portInterfaceCtl "wire"
set portDataCtl "unsigned long long"
set portPointerCtl "0"
set portArrayDimCtl [list 0]
set portConstCtl "0"
set portVolatileCtl "0"
set portArrayOptCtl ""
lappend portList [list "in2" $portInterfaceCtl $portDataCtl $portPointerCtl $portArrayDimCtl $portConstCtl $portVolatileCtl $portArrayOptCtl]
set portInterfaceCtl "wire"
set portDataCtl "unsigned long long"
set portPointerCtl "0"
set portArrayDimCtl [list 0]
set portConstCtl "0"
set portVolatileCtl "0"
set portArrayOptCtl ""
lappend portList [list "out_r" $portInterfaceCtl $portDataCtl $portPointerCtl $portArrayDimCtl $portConstCtl $portVolatileCtl $portArrayOptCtl]
set portInterfaceCtl "wire"
set portDataCtl "unsigned int"
set portPointerCtl "0"
set portArrayDimCtl [list 0]
set portConstCtl "0"
set portVolatileCtl "0"
set portArrayOptCtl ""
lappend portList [list "dim" $portInterfaceCtl $portDataCtl $portPointerCtl $portArrayDimCtl $portConstCtl $portVolatileCtl $portArrayOptCtl]
set globalAPint ""
set returnAPInt ""
set hasCPPAPInt 0
set argAPInt ""
set hasCPPAPFix 0
set hasSCFix 0
set hasCBool 0
set hasCPPComplex 0
set isTemplateTop 0
set dataPackList ""
set module [list $moduleName $portList $rawDecl $argAPInt $returnAPInt $dataPackList]
