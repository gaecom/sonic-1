#!/usr/bin/env bash

pwd=$(pwd)
export SONIC_NO_ASYNC_GC=1

#stack=256
echo "Set stack size to 256"
export SONIC_OPTION_MaxEncodeStackSize=256
export SONIC_OPTION_MaxDecodeStackSize=256
export SONIC_OPTION_MaxDecodeJSONDepth=256
cd $pwd/encoder
go test -benchmem -run=^$ -benchtime=500000x -bench "^(BenchmarkEncoder_Generic_Sonic|BenchmarkEncoder_Generic_JsonIter|BenchmarkEncoder_Binding_Sonic|BenchmarkEncoder_Binding_JsonIter|BenchmarkEncoder_Parallel_Generic_Sonic|BenchmarkEncoder_Parallel_Generic_JsonIter|BenchmarkEncoder_Parallel_Binding_Sonic|BenchmarkEncoder_Parallel_Binding_JsonIter)$"
cd $pwd/decoder
go test -benchmem -run=^$ -benchtime=250000x -bench "^(BenchmarkDecoder_Generic_Sonic|BenchmarkDecoder_Generic_JsonIter|BenchmarkDecoder_Binding_Sonic|BenchmarkDecoder_Binding_JsonIter|BenchmarkDecoder_Parallel_Generic_Sonic|BenchmarkDecoder_Parallel_Generic_JsonIter|BenchmarkDecoder_Parallel_Binding_Sonic|BenchmarkDecoder_Parallel_Binding_JsonIter)$"

echo "Set stack size to 512"
export SONIC_OPTION_MaxEncodeStackSize=512
export SONIC_OPTION_MaxDecodeStackSize=512
export SONIC_OPTION_MaxDecodeJSONDepth=512
cd $pwd/encoder
go test -benchmem -run=^$ -benchtime=500000x -bench "^(BenchmarkEncoder_Generic_Sonic|BenchmarkEncoder_Generic_JsonIter|BenchmarkEncoder_Binding_Sonic|BenchmarkEncoder_Binding_JsonIter|BenchmarkEncoder_Parallel_Generic_Sonic|BenchmarkEncoder_Parallel_Generic_JsonIter|BenchmarkEncoder_Parallel_Binding_Sonic|BenchmarkEncoder_Parallel_Binding_JsonIter)$"
cd $pwd/decoder
go test -benchmem -run=^$ -benchtime=250000x -bench "^(BenchmarkDecoder_Generic_Sonic|BenchmarkDecoder_Generic_JsonIter|BenchmarkDecoder_Binding_Sonic|BenchmarkDecoder_Binding_JsonIter|BenchmarkDecoder_Parallel_Generic_Sonic|BenchmarkDecoder_Parallel_Generic_JsonIter|BenchmarkDecoder_Parallel_Binding_Sonic|BenchmarkDecoder_Parallel_Binding_JsonIter)$"

echo "Set stack size to 1024"
export SONIC_OPTION_MaxEncodeStackSize=1024
export SONIC_OPTION_MaxDecodeStackSize=1024
export SONIC_OPTION_MaxDecodeJSONDepth=1024
cd $pwd/encoder
go test -benchmem -run=^$ -benchtime=500000x -bench "^(BenchmarkEncoder_Generic_Sonic|BenchmarkEncoder_Generic_JsonIter|BenchmarkEncoder_Binding_Sonic|BenchmarkEncoder_Binding_JsonIter|BenchmarkEncoder_Parallel_Generic_Sonic|BenchmarkEncoder_Parallel_Generic_JsonIter|BenchmarkEncoder_Parallel_Binding_Sonic|BenchmarkEncoder_Parallel_Binding_JsonIter)$"
cd $pwd/decoder
go test -benchmem -run=^$ -benchtime=250000x -bench "^(BenchmarkDecoder_Generic_Sonic|BenchmarkDecoder_Generic_JsonIter|BenchmarkDecoder_Binding_Sonic|BenchmarkDecoder_Binding_JsonIter|BenchmarkDecoder_Parallel_Generic_Sonic|BenchmarkDecoder_Parallel_Generic_JsonIter|BenchmarkDecoder_Parallel_Binding_Sonic|BenchmarkDecoder_Parallel_Binding_JsonIter)$"

echo "Set stack size to 2048"
export SONIC_OPTION_MaxEncodeStackSize=2048
export SONIC_OPTION_MaxDecodeStackSize=2048
export SONIC_OPTION_MaxDecodeJSONDepth=2048
cd $pwd/encoder
go test -benchmem -run=^$ -benchtime=500000x -bench "^(BenchmarkEncoder_Generic_Sonic|BenchmarkEncoder_Generic_JsonIter|BenchmarkEncoder_Binding_Sonic|BenchmarkEncoder_Binding_JsonIter|BenchmarkEncoder_Parallel_Generic_Sonic|BenchmarkEncoder_Parallel_Generic_JsonIter|BenchmarkEncoder_Parallel_Binding_Sonic|BenchmarkEncoder_Parallel_Binding_JsonIter)$"
cd $pwd/decoder
go test -benchmem -run=^$ -benchtime=250000x -bench "^(BenchmarkDecoder_Generic_Sonic|BenchmarkDecoder_Generic_JsonIter|BenchmarkDecoder_Binding_Sonic|BenchmarkDecoder_Binding_JsonIter|BenchmarkDecoder_Parallel_Generic_Sonic|BenchmarkDecoder_Parallel_Generic_JsonIter|BenchmarkDecoder_Parallel_Binding_Sonic|BenchmarkDecoder_Parallel_Binding_JsonIter)$"

echo "Set stack size to 4096"
export SONIC_OPTION_MaxEncodeStackSize=4096
export SONIC_OPTION_MaxDecodeStackSize=4096
export SONIC_OPTION_MaxDecodeJSONDepth=4096
cd $pwd/encoder
go test -benchmem -run=^$ -benchtime=500000x -bench "^(BenchmarkEncoder_Generic_Sonic|BenchmarkEncoder_Generic_JsonIter|BenchmarkEncoder_Binding_Sonic|BenchmarkEncoder_Binding_JsonIter|BenchmarkEncoder_Parallel_Generic_Sonic|BenchmarkEncoder_Parallel_Generic_JsonIter|BenchmarkEncoder_Parallel_Binding_Sonic|BenchmarkEncoder_Parallel_Binding_JsonIter)$"
cd $pwd/decoder
go test -benchmem -run=^$ -benchtime=250000x -bench "^(BenchmarkDecoder_Generic_Sonic|BenchmarkDecoder_Generic_JsonIter|BenchmarkDecoder_Binding_Sonic|BenchmarkDecoder_Binding_JsonIter|BenchmarkDecoder_Parallel_Generic_Sonic|BenchmarkDecoder_Parallel_Generic_JsonIter|BenchmarkDecoder_Parallel_Binding_Sonic|BenchmarkDecoder_Parallel_Binding_JsonIter)$"

echo "Set stack size to 8192"
export SONIC_OPTION_MaxEncodeStackSize=8192
export SONIC_OPTION_MaxDecodeStackSize=8192
export SONIC_OPTION_MaxDecodeJSONDepth=8192
cd $pwd/encoder
go test -benchmem -run=^$ -benchtime=500000x -bench "^(BenchmarkEncoder_Generic_Sonic|BenchmarkEncoder_Generic_JsonIter|BenchmarkEncoder_Binding_Sonic|BenchmarkEncoder_Binding_JsonIter|BenchmarkEncoder_Parallel_Generic_Sonic|BenchmarkEncoder_Parallel_Generic_JsonIter|BenchmarkEncoder_Parallel_Binding_Sonic|BenchmarkEncoder_Parallel_Binding_JsonIter)$"
cd $pwd/decoder
go test -benchmem -run=^$ -benchtime=250000x -bench "^(BenchmarkDecoder_Generic_Sonic|BenchmarkDecoder_Generic_JsonIter|BenchmarkDecoder_Binding_Sonic|BenchmarkDecoder_Binding_JsonIter|BenchmarkDecoder_Parallel_Generic_Sonic|BenchmarkDecoder_Parallel_Generic_JsonIter|BenchmarkDecoder_Parallel_Binding_Sonic|BenchmarkDecoder_Parallel_Binding_JsonIter)$"

echo "Set stack size to 16384"
export SONIC_OPTION_MaxEncodeStackSize=16384
export SONIC_OPTION_MaxDecodeStackSize=16384
export SONIC_OPTION_MaxDecodeJSONDepth=16384
cd $pwd/encoder
go test -benchmem -run=^$ -benchtime=500000x -bench "^(BenchmarkEncoder_Generic_Sonic|BenchmarkEncoder_Generic_JsonIter|BenchmarkEncoder_Binding_Sonic|BenchmarkEncoder_Binding_JsonIter|BenchmarkEncoder_Parallel_Generic_Sonic|BenchmarkEncoder_Parallel_Generic_JsonIter|BenchmarkEncoder_Parallel_Binding_Sonic|BenchmarkEncoder_Parallel_Binding_JsonIter)$"
cd $pwd/decoder
go test -benchmem -run=^$ -benchtime=250000x -bench "^(BenchmarkDecoder_Generic_Sonic|BenchmarkDecoder_Generic_JsonIter|BenchmarkDecoder_Binding_Sonic|BenchmarkDecoder_Binding_JsonIter|BenchmarkDecoder_Parallel_Generic_Sonic|BenchmarkDecoder_Parallel_Generic_JsonIter|BenchmarkDecoder_Parallel_Binding_Sonic|BenchmarkDecoder_Parallel_Binding_JsonIter)$"

echo "Set stack size to 32768"
export SONIC_OPTION_MaxEncodeStackSize=32768
export SONIC_OPTION_MaxDecodeStackSize=32768
export SONIC_OPTION_MaxDecodeJSONDepth=32768
cd $pwd/encoder
go test -benchmem -run=^$ -benchtime=500000x -bench "^(BenchmarkEncoder_Generic_Sonic|BenchmarkEncoder_Generic_JsonIter|BenchmarkEncoder_Binding_Sonic|BenchmarkEncoder_Binding_JsonIter|BenchmarkEncoder_Parallel_Generic_Sonic|BenchmarkEncoder_Parallel_Generic_JsonIter|BenchmarkEncoder_Parallel_Binding_Sonic|BenchmarkEncoder_Parallel_Binding_JsonIter)$"
cd $pwd/decoder
go test -benchmem -run=^$ -benchtime=250000x -bench "^(BenchmarkDecoder_Generic_Sonic|BenchmarkDecoder_Generic_JsonIter|BenchmarkDecoder_Binding_Sonic|BenchmarkDecoder_Binding_JsonIter|BenchmarkDecoder_Parallel_Generic_Sonic|BenchmarkDecoder_Parallel_Generic_JsonIter|BenchmarkDecoder_Parallel_Binding_Sonic|BenchmarkDecoder_Parallel_Binding_JsonIter)$"

echo "Set stack size to 65536"
export SONIC_OPTION_MaxEncodeStackSize=65536
export SONIC_OPTION_MaxDecodeStackSize=65536
export SONIC_OPTION_MaxDecodeJSONDepth=65536
cd $pwd/encoder
go test -benchmem -run=^$ -benchtime=500000x -bench "^(BenchmarkEncoder_Generic_Sonic|BenchmarkEncoder_Generic_JsonIter|BenchmarkEncoder_Binding_Sonic|BenchmarkEncoder_Binding_JsonIter|BenchmarkEncoder_Parallel_Generic_Sonic|BenchmarkEncoder_Parallel_Generic_JsonIter|BenchmarkEncoder_Parallel_Binding_Sonic|BenchmarkEncoder_Parallel_Binding_JsonIter)$"
cd $pwd/decoder
go test -benchmem -run=^$ -benchtime=250000x -bench "^(BenchmarkDecoder_Generic_Sonic|BenchmarkDecoder_Generic_JsonIter|BenchmarkDecoder_Binding_Sonic|BenchmarkDecoder_Binding_JsonIter|BenchmarkDecoder_Parallel_Generic_Sonic|BenchmarkDecoder_Parallel_Generic_JsonIter|BenchmarkDecoder_Parallel_Binding_Sonic|BenchmarkDecoder_Parallel_Binding_JsonIter)$"

echo "Set stack size to 131072"
export SONIC_OPTION_MaxEncodeStackSize=131072
export SONIC_OPTION_MaxDecodeStackSize=131072
export SONIC_OPTION_MaxDecodeJSONDepth=131072
cd $pwd/encoder
go test -benchmem -run=^$ -benchtime=500000x -bench "^(BenchmarkEncoder_Generic_Sonic|BenchmarkEncoder_Generic_JsonIter|BenchmarkEncoder_Binding_Sonic|BenchmarkEncoder_Binding_JsonIter|BenchmarkEncoder_Parallel_Generic_Sonic|BenchmarkEncoder_Parallel_Generic_JsonIter|BenchmarkEncoder_Parallel_Binding_Sonic|BenchmarkEncoder_Parallel_Binding_JsonIter)$"
cd $pwd/decoder
go test -benchmem -run=^$ -benchtime=250000x -bench "^(BenchmarkDecoder_Generic_Sonic|BenchmarkDecoder_Generic_JsonIter|BenchmarkDecoder_Binding_Sonic|BenchmarkDecoder_Binding_JsonIter|BenchmarkDecoder_Parallel_Generic_Sonic|BenchmarkDecoder_Parallel_Generic_JsonIter|BenchmarkDecoder_Parallel_Binding_Sonic|BenchmarkDecoder_Parallel_Binding_JsonIter)$"

echo "Set stack size to 262148"
export SONIC_OPTION_MaxEncodeStackSize=262148
export SONIC_OPTION_MaxDecodeStackSize=262148
export SONIC_OPTION_MaxDecodeJSONDepth=262148
cd $pwd/encoder
go test -benchmem -run=^$ -benchtime=500000x -bench "^(BenchmarkEncoder_Generic_Sonic|BenchmarkEncoder_Generic_JsonIter|BenchmarkEncoder_Binding_Sonic|BenchmarkEncoder_Binding_JsonIter|BenchmarkEncoder_Parallel_Generic_Sonic|BenchmarkEncoder_Parallel_Generic_JsonIter|BenchmarkEncoder_Parallel_Binding_Sonic|BenchmarkEncoder_Parallel_Binding_JsonIter)$"
cd $pwd/decoder
go test -benchmem -run=^$ -benchtime=250000x -bench "^(BenchmarkDecoder_Generic_Sonic|BenchmarkDecoder_Generic_JsonIter|BenchmarkDecoder_Binding_Sonic|BenchmarkDecoder_Binding_JsonIter|BenchmarkDecoder_Parallel_Generic_Sonic|BenchmarkDecoder_Parallel_Generic_JsonIter|BenchmarkDecoder_Parallel_Binding_Sonic|BenchmarkDecoder_Parallel_Binding_JsonIter)$"

echo "Set stack size to 524296"
export SONIC_OPTION_MaxEncodeStackSize=524296
export SONIC_OPTION_MaxDecodeStackSize=524296
export SONIC_OPTION_MaxDecodeJSONDepth=524296
cd $pwd/encoder
go test -benchmem -run=^$ -benchtime=500000x -bench "^(BenchmarkEncoder_Generic_Sonic|BenchmarkEncoder_Generic_JsonIter|BenchmarkEncoder_Binding_Sonic|BenchmarkEncoder_Binding_JsonIter|BenchmarkEncoder_Parallel_Generic_Sonic|BenchmarkEncoder_Parallel_Generic_JsonIter|BenchmarkEncoder_Parallel_Binding_Sonic|BenchmarkEncoder_Parallel_Binding_JsonIter)$"
cd $pwd/decoder
go test -benchmem -run=^$ -benchtime=250000x -bench "^(BenchmarkDecoder_Generic_Sonic|BenchmarkDecoder_Generic_JsonIter|BenchmarkDecoder_Binding_Sonic|BenchmarkDecoder_Binding_JsonIter|BenchmarkDecoder_Parallel_Generic_Sonic|BenchmarkDecoder_Parallel_Generic_JsonIter|BenchmarkDecoder_Parallel_Binding_Sonic|BenchmarkDecoder_Parallel_Binding_JsonIter)$"

echo "Set stack size to 1048592"
export SONIC_OPTION_MaxEncodeStackSize=1048592
export SONIC_OPTION_MaxDecodeStackSize=1048592
export SONIC_OPTION_MaxDecodeJSONDepth=1048592
cd $pwd/encoder
go test -benchmem -run=^$ -benchtime=500000x -bench "^(BenchmarkEncoder_Generic_Sonic|BenchmarkEncoder_Generic_JsonIter|BenchmarkEncoder_Binding_Sonic|BenchmarkEncoder_Binding_JsonIter|BenchmarkEncoder_Parallel_Generic_Sonic|BenchmarkEncoder_Parallel_Generic_JsonIter|BenchmarkEncoder_Parallel_Binding_Sonic|BenchmarkEncoder_Parallel_Binding_JsonIter)$"
cd $pwd/decoder
go test -benchmem -run=^$ -benchtime=250000x -bench "^(BenchmarkDecoder_Generic_Sonic|BenchmarkDecoder_Generic_JsonIter|BenchmarkDecoder_Binding_Sonic|BenchmarkDecoder_Binding_JsonIter|BenchmarkDecoder_Parallel_Generic_Sonic|BenchmarkDecoder_Parallel_Generic_JsonIter|BenchmarkDecoder_Parallel_Binding_Sonic|BenchmarkDecoder_Parallel_Binding_JsonIter)$"

unset SONIC_OPTION_MaxEncodeStackSize
unset SONIC_OPTION_MaxDecodeStackSize
unset SONIC_OPTION_MaxDecodeJSONDepth

unset SONIC_NO_ASYNC_GC
cd $pwd