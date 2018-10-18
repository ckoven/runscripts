#!/usr/bin/env bash

# SRCDIR=$HOME/cesm/components/clm
# cd ${SRCDIR}
# GITHASH1=`git log -n 1 --format=%h`
# cd src/fates
# GITHASH2=`git log -n 1 --format=%h`

SRCDIR=$HOME/ctsm/src/
cd ${SRCDIR}
GITHASH1=`git log -n 1 --format=%h`
cd fates
GITHASH2=`git log -n 1 --format=%h`


SETUP_CASE=fates_ctsm_edison_fullmodel_bci_parameter_ensemble_1pft_v009_set09

CASE_NAME=${SETUP_CASE}_${GITHASH1}_${GITHASH2}
basedir=$HOME/ctsm/cime/scripts
export SITE_NAME=bci_0.1x0.1_v4.0i                         # Name of folder with site data
export SITE_BASE_DIR=/global/cscratch1/sd/cdkoven/cesm_inputdata/atm/datm7/CLM_USRDAT_datasets/
export CLM_USRDAT_DOMAIN=domain_bci_sparse_grid_c180227.nc
export CLM_USRDAT_SURDAT=surfdata_bci_sparse_grid_c180227.nc

export CIME_MODEL=cesm
#### load_machine_files
cd $basedir
export RES=CLM_USRDAT
project=m2420
ninst=767
./create_newcase -case ${CASE_NAME} -res ${RES} -compset I2000Clm50FatesGs -mach edison -project $project --run-unsupported ##--ninst=$ninst --multi-driver
cd ${CASE_NAME}
 export DIN_LOC_ROOT_FORCE=${SITE_BASE_DIR}
 export CLM_SURFDAT_DIR=${SITE_BASE_DIR}/${SITE_NAME}
export CLM_DOMAIN_DIR=${SITE_BASE_DIR}/${SITE_NAME}

 ./xmlchange STOP_OPTION=nyears
 ./xmlchange STOP_N=10
 ./xmlchange REST_N=10
 ./xmlchange CONTINUE_RUN=FALSE
./xmlchange RESUBMIT=0
./xmlchange DEBUG=FALSE

./xmlchange DIN_LOC_ROOT=/global/cscratch1/sd/cdkoven/cesm_inputdata

# SET PATHS TO SCRATCH ROOT, DOMAIN AND MET DATA (USERS WILL PROB NOT CHANGE THESE)
# =================================================================================

./xmlchange ATM_DOMAIN_FILE=${CLM_USRDAT_DOMAIN}
./xmlchange ATM_DOMAIN_PATH=${CLM_DOMAIN_DIR}
./xmlchange LND_DOMAIN_FILE=${CLM_USRDAT_DOMAIN}
./xmlchange LND_DOMAIN_PATH=${CLM_DOMAIN_DIR}
./xmlchange DATM_MODE=CLM1PT
./xmlchange CLM_USRDAT_NAME=${SITE_NAME}
./xmlchange DIN_LOC_ROOT_CLMFORC=${DIN_LOC_ROOT_FORCE}


./xmlchange EXEROOT=/global/homes/c/cdkoven/scratch/$CASE_NAME/bld
./xmlchange RUNDIR=/global/homes/c/cdkoven/scratch/$CASE_NAME/run
./xmlchange DOUT_S_ROOT=/global/homes/c/cdkoven/scratch/archive/$CASE_NAME

./xmlchange JOB_WALLCLOCK_TIME=00:29:00
./xmlchange STOP_OPTION=nyears
./xmlchange DATM_CLMNCEP_YR_START=2003
./xmlchange DATM_CLMNCEP_YR_END=2016

./xmlchange RUN_STARTDATE=0001-06-01

./xmlchange NINST_LND=$ninst
./xmlchange ROOTPE_LND=1

# ./xmlchange NINST_ICE=767
# ./xmlchange NINST_ATM=767
# ./xmlchange NINST_ROF=767
# ./xmlchange NINST_GLC=767
# ./xmlchange NINST_OCN=767
# ./xmlchange MULTI_DRIVER=TRUE


for x  in `seq 1 1 $ninst`; do
    expstr=$(printf %04d $x)
    echo $expstr
    cat > user_nl_clm_$expstr <<EOF
fsurdat = '${CLM_SURFDAT_DIR}/${CLM_USRDAT_SURDAT}'
fates_paramfile = '/global/homes/c/cdkoven/scratch/parameter_file_sandbox/fates_params_358720c_bcitraits_test02_v_${expstr}.c180925.nc'
use_fates_inventory_init = .false.
use_fates_ed_st3 = .false.
hist_empty_htapes = .true.
hist_mfilt = 60, 10
hist_nhtfrq = 0, -8760
hist_fincl1 = 'AR','AREA_PLANT','AREA_TREES','AR_CANOPY','AR_UNDERSTORY','BIOMASS_CANOPY','BIOMASS_STOCK_COL','BIOMASS_UNDERSTORY','BTRAN','BTRAN2','BTRANMN','CANOPY_SPREAD','CBALANCE_ERROR_BGC','CBALANCE_ERROR_ED','CBALANCE_ERROR_TOTAL','CWD_STOCK_COL','ED_LITTER_STOCK_COL','ED_NCOHORTS','ED_NPATCHES','ED_balive','ED_bdead','ED_bfineroot','ED_biomass','ED_bleaf','ED_bsapwood','ED_bstore','ELAI','ESAI','FCEV','FCOV','FCTR','FGEV','FGR','FH2OSFC','FLDS','FSA','FSAT','FSDS','FSDSND','FSDSNDLN','FSDSNI','FSDSVD','FSDSVDLN','FSDSVI','FSDSVILN','FSH','FSH_G','FSH_R','FSH_V','FSM','FSR','FSRND','FSRNDLN','FSRNI','FSRVD','FSRVDLN','FSRVI','Fire_Closs','GPP','GPP_CANOPY','GPP_UNDERSTORY','GROWTH_RESP','GSSHA','GSSUN','H2OCAN','H2OSFC','H2OSNO','H2OSNO_TOP','H2OSOI','HR','LAISHA','LAISUN','LITTERC_HR','LITTER_IN','LITTER_OUT','MAINT_RESP','MORTALITY_CARBONFLUX_CANOPY','MORTALITY_CARBONFLUX_UNDERSTORY','NBP','NEP','NPP','NPP_column','PARVEGLN','PBOT','PCO2','PROMOTION_CARBONFLUX','Q2M','QBOT','QCHARGE','QDRAI','QDRAI_PERCH','QDRIP','QFLOOD','QINFL','QINTR','QIRRIG','QOVER','QRGWL','QRUNOFF','QSOIL','QSOIL_ICE','QVEGE','QVEGT','RAIN','RAIN_FROM_ATM','RH2M','RSCANOPY','RSSHA','RSSUN','SABG','SABV','SCORCH_HEIGHT','SEEDS_IN','SEED_BANK','SEED_DECAY','SEED_GERMINATION','SMP','SOILC_HR','SOILICE','SOILLIQ','SOILRESIS','SOILWATER_10CM','SUM_FUEL','SWBGT','SWBGT_R','SWBGT_U','TAUX','TAUY','TBOT','TBUILD','TG','TH2OSFC','THBOT','TKE1','TLAI','TLAKE','TOTECOSYSC','TOTLITC','TOTLITC_1m','TOTLITN','TOTLITN_1m','TOTSOILICE','TOTSOILLIQ','TOTSOMC','TOTSOMC_1m','TOTSOMN','TOTSOMN_1m','TREFMNAV','TREFMXAV','TRIMMING','TSA','TSAI','TSOI','TSOI_10CM','TV','TWS','U10','U10_DUST','VOLR','VOLRMCH','WA','WBT','WBT_R','WBT_U','WIND','ZBOT','ZWT','NPP_LEAF','NPP_SEED','NPP_STEM','NPP_FROOT','NPP_CROOT','NPP_STOR','LEAF_MR','FROOT_MR','LIVECROOT_MR','LIVESTEM_MR'
hist_fincl2 = 'ZSTAR_BY_AGE','RECRUITMENT','PFTbiomass','PATCH_AREA_BY_AGE','NPLANT_UNDERSTORY_SCLS','NPLANT_SCLS','NPLANT_SCAG','NPLANT_CANOPY_SCLS','MORTALITY_UNDERSTORY_SCLS','MORTALITY_CANOPY_SCLS','MORTALITY','M8_SCLS','M7_SCLS','M6_SCLS','M5_SCLS','M4_SCLS','M3_SCLS','M2_SCLS','M1_SCLS','LEAF_HEIGHT_DIST','LAI_UNDERSTORY_SCLS','LAI_CANOPY_SCLS','LAI_BY_AGE','FUEL_MOISTURE_NFSC','DDBH_UNDERSTORY_SCLS','DDBH_CANOPY_SCLS','CROWNAREA_CAN','CANOPY_HEIGHT_DIST','CANOPY_AREA_BY_AGE','BA_SCLS','AGB_SCLS','RECRUITMENT_AGEPFT','GROWTHFLUX_SCPF','GROWTHFLUX_FUSION_SCPF','BIOMASS_BY_AGE'
EOF
done
    cat >> user_nl_datm <<EOF
taxmode = "cycle", "cycle", "cycle"
EOF


./case.setup

# HERE WE NEED TO MODIFY THE STREAM FILE (DANGER ZONE - USERS BEWARE CHANGING)
./preview_namelists

cp /global/homes/c/cdkoven/scratch/$CASE_NAME/run/datm.streams.txt.CLM1PT.CLM_USRDAT user_datm.streams.txt.CLM1PT.CLM_USRDAT
`sed -i '/FLDS/d' user_datm.streams.txt.CLM1PT.CLM_USRDAT`
`sed -i '/FLDS/d' /global/homes/c/cdkoven/scratch/$CASE_NAME/run/datm.streams.txt.CLM1PT.CLM_USRDAT`

# for x  in `seq 1 1 $ninst`; do
#     expstr=$(printf %04d $x)
#     echo $expstr

#     cp /global/homes/c/cdkoven/scratch/$CASE_NAME/run/datm.streams.txt.CLM1PT.CLM_USRDAT_${expstr} user_datm.streams.txt.CLM1PT.CLM_USRDAT_${expstr}
#     `sed -i '/FLDS/d' user_datm.streams.txt.CLM1PT.CLM_USRDAT_${expstr}`
#     `sed -i '/FLDS/d' /global/homes/c/cdkoven/scratch/$CASE_NAME/run/datm.streams.txt.CLM1PT.CLM_USRDAT_${expstr}`
# done

./case.build
./case.submit #--skip-preview-namelist


