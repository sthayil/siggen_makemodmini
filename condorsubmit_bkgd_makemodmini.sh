#!/bin/bash

echo "Starting job on " `date` #Date/time of start of job
echo "Running on: `uname -a`" #Condor job is running on this node
source /cvmfs/cms.cern.ch/cmsset_default.sh  ## if a tcsh script, use .csh instead of .sh
export SCRAM_ARCH=slc7_amd64_gcc700
eval `scramv1 project CMSSW CMSSW_10_2_18`
cd CMSSW_10_2_18/src
eval `scramv1 runtime -sh`
git clone https://github.com/wang-hui/JetToolbox.git JMEAnalysis/JetToolbox -b electroWeakino_hui
scram b -j 4

cd ${_CONDOR_SCRATCH_DIR}
ls

echo "Run on file# $1: $2"

cmsRun JTB_mini_keepconstituents_bkgd_cfg.py $1 $2

ls

xrdcp modminiAOD_$1.root root://cmseos.fnal.gov//store/user/lpcrutgers/sthayil/rpvhiggsinos/miniAOD_withJTBAK12constit/$3 #directoryname
rm modminiAOD_$1.root
