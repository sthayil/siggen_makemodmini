#!/bin/bash

echo "Working on $1 files"

eval 'scramv1 runtime -sh' #cmsenv

filesubmit=condorsubmit_signal_makemodmini.jdl
sed -i "s/xxx/$1/g" $filesubmit

echo Submitting jobs to condor
condor_submit condorsubmit_signal_makemodmini.jdl

sed -i "s/eue $1/eue xxx/g" $filesubmit
echo reverted the file back to :
cat $filesubmit

