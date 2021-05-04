# Import CMS python class definitions such as Process, Source, and EDProducer
import FWCore.ParameterSet.Config as cms
import sys
from Configuration.StandardSequences.Eras import eras
process = cms.Process('jetToolbox', eras.Run2_2017)

process.load("Configuration.EventContent.EventContent_cff")
process.load('Configuration.Geometry.GeometryRecoDB_cff')
process.load('Configuration.StandardSequences.MagneticField_cff')
process.load('Configuration.StandardSequences.Services_cff')
process.load('Configuration.StandardSequences.FrontierConditions_GlobalTag_cff')
process.GlobalTag.globaltag = '94X_mc2017_realistic_v10'

process.maxEvents = cms.untracked.PSet( input = cms.untracked.int32(-1) )

process.source = cms.Source("PoolSource", 
    fileNames = cms.untracked.vstring(
        "/store/user/lpcrutgers/sthayil/rpvhiggsinos/miniaod/leptonicfs/3lep/GENSIM_2017_x1_n2-300-310-320-2021-04-24/miniAOD_"+sys.argv[2]+".root" )
    #"/store/user/lpcrutgers/huiwang/ElectroWeakino/miniAOD/GENSIM_2017_mn1_100_mx1_110-2020-06-12/miniAOD_"+sys.argv[2]+".root" )
    #"/store/user/lpcrutgers/sthayil/rpvhiggsinos/miniaod/GENSIM_2017_x1_n2-300-350-400-2020-10-28/miniAOD_"+sys.argv[2]+".root" )
    #"/store/user/lpcrutgers/huiwang/ElectroWeakino/miniAOD/GENSIM_2017_mn1_300_mx1_350-2020-06-08/miniAOD_"+sys.argv[2]+".root" )
    #"file:300350_miniAOD_0.root")
    #"file:TTJetsSingleLep_miniAOD_D842F996-2149-E811-AF09-0242AC1C0502.root")
    #"/store/mc/RunIIFall17MiniAODv2/TTJets_SingleLeptFromT_TuneCP5_13TeV-madgraphMLM-pythia8/MINIAODSIM/PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/910000/D842F996-2149-E811-AF09-0242AC1C0502.root")
    )

process.JTBout = cms.OutputModule("PoolOutputModule",
    fileName = cms.untracked.string( "modminiAOD_"+sys.argv[2]+".root" ),
    #fileName = cms.untracked.string('mini_JTB_test_300350.root'),
    #fileName = cms.untracked.string('mini_JTB_test_TTBarSingleLept.root'),
    outputCommands = cms.untracked.vstring("keep *")
    )
process.endpath = cms.EndPath(process.JTBout)

from JMEAnalysis.JetToolbox.jetToolbox_cff import jetToolbox
jetToolbox(process, 'ak12', 'jetSequence', 'JTBout',
            dataTier='miniAOD',
            PUMethod='Puppi', JETCorrPayload='AK8PFPuppi',
            runOnMC=True,
            Cut='pt > 50.0 && abs(eta) < 2.4',
            bTagDiscriminators=['pfBoostedDoubleSecondaryVertexAK8BJetTags'],
            subjetBTagDiscriminators=['pfBoostedDoubleSecondaryVertexAK8BJetTags'],
            addSoftDrop=True,
            addSoftDropSubjets=True,
            addPruning=True,
            addNsub=True,
            addEnergyCorrFunc=True,
            ) 

# jetToolbox(process, 'ak8', 'jetSequence', 'JTBout',
#             dataTier='miniAOD',
#             PUMethod='Puppi', JETCorrPayload='AK8PFPuppi',
#             runOnMC=True,
#             Cut='pt > 50.0 && abs(eta) < 2.4',
#             bTagDiscriminators=['pfBoostedDoubleSecondaryVertexAK8BJetTags'],
#             subjetBTagDiscriminators=['pfBoostedDoubleSecondaryVertexAK8BJetTags'],
#             addSoftDrop=True,
#             addSoftDropSubjets=True,
#             addPruning=True,
#             addNsub=True,
#             addEnergyCorrFunc=True,
#             ) 
