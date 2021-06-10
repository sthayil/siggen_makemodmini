# siggen_makemodmini
Make miniAOD files with AK12 jets from regular miniAODs

First:
```
cmsrel CMSSW_10_2_18
cd CMSSW_10_2_18/src
cmsenv
```

Then, check out JetToolbox to be able to cluster AK12 jets
```
git clone https://github.com/wang-hui/JetToolbox.git JMEAnalysis/JetToolbox -b electroWeakino_hui
scram b -j 4
```

Clone this repo:
```git clone git@github.com:sthayil/siggen_makemodmini.git```

To run signal samples:
```
source 0930_makeminiaodwithjtbjetconsts.sh #miniAODfiles
```

Edit the following:
- L22 of condorsubmit_signal_makemodmini.sh with the location to put the modified miniAOD (make sure this dir exists)
- L18 of JTB_mini_keepconstituents_sig_cfg.py with the location of the miniAOD files to run over

To run bkgd samples:
```
source 0524_makeminiaodwithjtbjetconsts_bkgd.sh <sampletype, eg ttbar or qcd500>
```

Edit the following:
- 0524_makeminiaodwithjtbjetconsts_bkgd.sh, witth the samples you want to run over and the index to start at
- L22 of condorsubmit_bkgd_makemodmini.sh with the format of the location to put the modified miniAOD (make sure this dir exists)