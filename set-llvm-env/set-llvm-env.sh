#!/bin/bash

# 请使用 source OR . 执行此脚本，否则不会生效

echo '===Chose a llvm env you needed==='
echo '[1] -> llvm-15.0.6-Release Env'
echo '[2] -> llvm-7.0.0-Release Env'
echo '[3] -> llvm-5.0.1-Release  Env'
echo '[4] -> llvm-5.0.1-Debug  Env'
echo '[5] -> llvm-5.0.0-Release  Env'
echo '[6] -> llvm-5.0.0-Debug  Env'
echo '================================='
echo ''

read aNum
case $aNum in
    1)  echo 'You Chosed llvm-15.0.6-Release  Env'
        echo 'export PATH=/usr/local/llvm-15.0.6-Release/bin:$PATH'
        export PATH=/usr/local/llvm-15.0.6-Release/bin:$PATH
    ;;
    2)  echo 'You Choosed llvm-7.0.0-Release  Env'
        echo 'export PATH=/home/feng/llvm-src/llvm-project-llvmorg-7.0.0/llvm/build-rel/bin:$PATH'
        export PATH=/home/feng/llvm-src/llvm-project-llvmorg-7.0.0/llvm/build-rel/bin:$PATH
    ;;

    3)  echo 'You Choosed llvm-5.0.1-Release  Env'
        echo 'export PATH=/home/feng/llvm-src/llvm-project-llvmorg-5.0.1/llvm/build-rel/bin:$PATH'
        export PATH=/home/feng/llvm-src/llvm-project-llvmorg-5.0.1/llvm/build-rel/bin:$PATH
    ;;

    4)  echo 'You Choosed llvm-5.0.1-Debug  Env'
        echo  'PATH=/home/feng/llvm-src/llvm-project-llvmorg-5.0.1/llvm/build-debug/bin:$PATH'
        export PATH=/home/feng/llvm-src/llvm-project-llvmorg-5.0.1/llvm/build-debug/bin:$PATH
    ;;

    5)  echo 'You Choosed llvm-5.0.0-Release  Env'
        echo  'PATH=/home/feng/llvm-src/llvm-project-llvmorg-5.0.0/llvm/build-rel/bin:$PATH'
        export PATH=/home/feng/llvm-src/llvm-project-llvmorg-5.0.0/llvm/build-rel/bin:$PATH
    ;;

    6)  echo 'You Choosed llvm-5.0.0-Debug  Env'
        echo  'PATH=/home/feng/llvm-src/llvm-project-llvmorg-5.0.0/llvm/build-debug/bin:$PATH'
        export PATH=/home/feng/llvm-src/llvm-project-llvmorg-5.0.0/llvm/build-debug/bin:$PATH
    ;;

    *) echo 'You are Choosed none of llvm env'
    ;;
    
esac