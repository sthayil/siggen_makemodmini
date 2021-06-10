# Import CMS python class definitions such as Process, Source, and EDProducer
import FWCore.ParameterSet.Config as cms
import sys
from Configuration.StandardSequences.Eras import eras
process = cms.Process('jetToolbox', eras.Run2_2017) #tried Run2_25ns
 
process.load("Configuration.EventContent.EventContent_cff")
process.load('Configuration.Geometry.GeometryRecoDB_cff')
process.load('Configuration.StandardSequences.MagneticField_cff')
process.load('Configuration.StandardSequences.Services_cff')
process.load('Configuration.StandardSequences.FrontierConditions_GlobalTag_cff')
process.GlobalTag.globaltag = '94X_mc2017_realistic_v10' #tried '74X_mcRun2_asymptotic_v2'

process.maxEvents = cms.untracked.PSet( input = cms.untracked.int32(-1) )

process.source = cms.Source("PoolSource", 
    fileNames = cms.untracked.vstring(sys.argv[3])
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

jetToolbox(process, 'ak8', 'jetSequence', 'JTBout',
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
