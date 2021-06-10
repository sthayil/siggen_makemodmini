#!/bin/bash

echo "Working on $1 files"

qcd500dir=QCD500-700
qcd500prefix="root://cmsxrootd.fnal.gov///store/mc/RunIISpring15DR74/QCD_HT500to700_TuneCUETP8M1_13TeV-madgraphMLM-pythia8/MINIAODSIM/Asympt25ns_MCRUN2_74_V9-v1/00000/"
qcd500files=(
    "78A36797-C619-E511-81AC-002354EF3BD0.root"
    "80D531C3-6018-E511-A343-00259084A6C4.root"
    "82F490D2-C519-E511-811D-0025905A4964.root"
    "84557400-3518-E511-A408-B083FED03632.root"
    "9841230C-3E18-E511-8723-001E673969D2.root"
    "98BE87ED-C419-E511-B0B4-002618943874.root"
    "9ACDCE25-6719-E511-A757-000F530E4BD4.root"
    "9CA7B4D2-C519-E511-B510-0025905A60B6.root"
    "9E0C72A4-5D18-E511-A394-0CC47A13CBEA.root"
    "A4F0E51A-5C18-E511-BC18-0CC47A13CBEA.root"
    "A698885C-6819-E511-9F16-842B2B2B0CFE.root"
    "A8F52388-5C18-E511-A1B2-00259084A6C4.root"
    "B2209BFE-3418-E511-BD63-002590A50046.root"
    "B45E85ED-C419-E511-BF70-002618943874.root"
    "B4CAB6D1-C519-E511-8D55-0025905A6110.root"
    "B8908CA1-501A-E511-A34E-0025905A60A8.root"
    "C06CA37B-5018-E511-A592-20CF307C992A.root"
    "C258C297-C619-E511-8911-00261894393E.root"
    "CC3131EE-6919-E511-B224-782BCB6A4BB8.root"
    "CCD1DAD4-C519-E511-8956-003048FFD744.root"
    "D0FC2442-3618-E511-B76A-002590A370B2.root"
    "D20BBBD2-C519-E511-A4A7-0025905A6094.root"
    "D66B0FEE-C419-E511-9ADE-003048FFD75C.root"
    "D8A0CAD2-C519-E511-9E51-0025905A60CE.root"
    "DAD0EDCD-C519-E511-A29D-003048D25BA6.root"
)

qcd1000dir=QCD1000-1500
qcd1000prefix="root://cmsxrootd.fnal.gov///store/mc/RunIISpring15DR74/QCD_HT1000to1500_TuneCUETP8M1_13TeV-madgraphMLM-pythia8/MINIAODSIM/Asympt25ns_MCRUN2_74_V9-v2/30000/"
qcd1000files=(
    "68EEF8D1-962E-E511-AC62-003048CB8610.root"
    "6A3403DA-962E-E511-8DFF-00259029E84C.root"
    "728A8495-6F29-E511-BCE5-00259074B2BE.root"
    "74AD5845-5928-E511-8C0B-F45214CEF24A.root"
    "76C105FF-6E27-E511-8C90-00248C0BE014.root"
    "7A414999-552A-E511-82F0-3417EBE6446E.root"
    "809C8872-962E-E511-B571-0025902BD8CE.root"
    "8214D343-882E-E511-ADF6-00259048A8F0.root"
    "8AE8E0E1-962E-E511-ABA4-00304867FD93.root"
    "8C6A908C-352A-E511-BF50-E41D2D08E0D0.root"
    "9231C265-352A-E511-80F0-0025905C2CA4.root"
    "A698A481-4A28-E511-8CF3-002618943925.root"
    "AA45F862-352A-E511-83FA-0002C94D5752.root"
    "B29DA90F-F227-E511-AC1E-0025905C95FA.root"
    "B64C07CF-7B28-E511-B8CC-001E4F1BC725.root"
    "BAC60FEB-962E-E511-B341-00304867FE73.root"
    "C0E1F348-152F-E511-971A-001E673972E7.root"
    "C6D970E9-5627-E511-838A-001E67A42161.root"
    "D8EB7A28-2627-E511-B801-0025905B8572.root"
    "DAE56299-0A2F-E511-873E-002590A3C96C.root"
    "3C681B7D-7827-E511-A818-0002C90B3966.root"
    "DE7EF52D-222B-E511-8A8C-0CC47A13CCEE.root"
    "E2CD28F3-8427-E511-9478-001E67A42175.root"
    "E4D3CBDC-152F-E511-B463-E0DB550BA718.root"
    "EAF97F73-352A-E511-B1B8-000F532734B4.root"
)

ttbardir=TTBarInclusive
#ttbarprefix="root://cmsxrootd.fnal.gov//store/mc/RunIISpring15DR74/TTJets_TuneCUETP8M1_13TeV-madgraphMLM-pythia8/MINIAODSIM/Asympt25ns_MCRUN2_74_V9-v2/"
ttbarprefix="root://cmsxrootd.fnal.gov//store/mc/RunIIAutumn18MiniAOD/TTJets_TuneCP5_13TeV-madgraphMLM-pythia8/MINIAODSIM/102X_upgrade2018_realistic_v15-v1/10000/"
ttbarfiles=(
    "651879F5-2570-B74F-8E92-AB198B625FE9.root"
    "65E5D18B-B8C0-604C-90C7-B578ECD190DE.root"
    "6C33405A-801F-9D46-AB43-C6ECB7263D9B.root"
    "6E31AD2C-51A5-D44F-AE2E-5F60F8D6A77A.root"
    "729D2149-ACFE-C34A-80FF-507FC4E5FF05.root"
    "760CED59-C49D-9A45-94A2-9269150BDB4C.root"
    "761561F5-C4DB-374E-983B-E98F47B0BC5B.root"
    "7A7E5FEC-9D78-D040-A88D-98CCF4F5265A.root"
    "7C790E4E-10BE-F442-8016-57DC60418A18.root"
    "7EE72311-6CAB-DB41-B1BE-AB65FBEA98CC.root"
    "7F22D2D5-9283-4746-AF76-C654C9AA2B40.root"
    "8131D3EB-D723-144B-B27F-08774B52EB7B.root"
    "8183820F-8723-8246-BC89-F0FA224C5D9B.root"
    "85E201A1-E9DF-E74E-A69A-A2118A990FBB.root"
    "86DABED3-0296-044B-966C-3817F8D97C11.root"
    "87C31F85-CA37-474D-B198-BDAF202A3B3B.root"
    "91B92DCA-463A-E344-97A0-184F2FFC929C.root"
    "938E0140-B485-E245-9FEA-DA8B6913F75D.root"
    "94994673-BC4E-3948-978C-2AE39D1307A7.root"
    "9B2F445F-869C-7740-AAF1-770CE9804F16.root"
    "A02E47E5-B6DE-CF43-91DB-2AF6013B4658.root"
    "A0CF4995-2343-154D-AF03-7BE4E7FDA951.root"
    "A196642D-BFC4-F34D-9E75-DAA18BB48D0F.root"
    "A31D0869-930D-BC46-BCF3-252BA0D5ED1B.root"
    "A4A252AC-528E-5045-B1B1-A4B19221EDC4.root"
    # "02CDAB0B-7ED5-7246-AE11-9C3B953C0E8B.root"
    # "0388FEED-CB38-7A48-9FA2-DDA5401E46B2.root"
    # "05134D30-E44E-B649-890A-492D4E85AF3C.root"
    # "11DB2306-209A-6D48-9E02-D35767526D53.root"
    # "1A80C3F0-5820-2F46-8090-780A5C834AF1.root"
    # "1B20A49F-35C7-BC4D-9301-1C3D17D1F894.root"
    # "1CFB0D22-0F18-584B-80D4-AB2F399B64FC.root"
    # "2060403D-256D-734F-8730-463329A16DC7.root"
    # "213B799F-8147-E242-84DF-852BC26D3873.root"
    # "248D5013-264A-0C47-BD38-211BBE805CA7.root"
    # "2BD2ED16-9618-C944-AD54-6C9DAE8549D4.root"
    # "2E577220-7641-4C4E-AA1A-C119F2C4486E.root"
    # "2F6C58BB-4F14-A747-87EE-7064D80D50CF.root"
    # "2F7D3CFE-7FA6-8F4C-B127-C42B8423D48D.root"
    # "30B61225-F0F1-494A-9238-408709B7797B.root"
    # "3329713D-1917-F948-A924-4A9C32A284A9.root"
    # "3526194D-9BD7-9045-B3F1-EEF7141C51AD.root"
    # "3616AD4D-0EA0-B54E-8E20-072CA8B3FDCC.root"
    # "40957D5B-E8F6-7B47-A556-40BD795B5792.root"
    # "41ADD82A-A6DC-424F-8880-1CA77E10E6A3.root"
    # "435D9581-25AA-2441-82E5-DEBA81880837.root"
    # "4718E906-7DD7-D049-A09D-653BA464AF90.root"
    # "495DB150-216D-1740-A1F1-A6878536D25F.root"
    # "4B16500B-6D5C-334A-917B-FCE08FEE6114.root"
    # "4D5BC598-955B-4A4B-BF98-0A3CA7CDF9FE.root"
)

eval 'scramv1 runtime -sh' #cmsenv

mydir=$1dir
myprefix=$1prefix
myfiles=$1files[@]
mycount=0
for i in "${!myfiles}"; do 
    cp condorsubmit_bkgd_makemodmini.jdl condorsubmit_bkgd_makemodmini_$1_$mycount.jdl
    #echo "$mycount ${!mydir} ${!myprefix}$i" 

    filesubmit=condorsubmit_bkgd_makemodmini_$1_$mycount.jdl
    sed -i "s|xxx|$mycount|g" $filesubmit
    sed -i "s|yyy|${!myprefix}$i|g" $filesubmit
    sed -i "s|zzz|${!mydir}|g" $filesubmit

    echo Submitting jobs to condor
    condor_submit $filesubmit
    #cat $filesubmit
    rm $filesubmit

    mycount=$((mycount+1))
done


