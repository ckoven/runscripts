#!/usr/bin/env bash

SRCDIR=$HOME/E3SM
cd ${SRCDIR}
GITHASH1=`git log -n 1 --format=%h`
cd components/clm/src/external_models/fates
GITHASH2=`git log -n 1 --format=%h`

SETUP_CASE=fates_e3sm_fullmodel_bci_parameter_ensemble_1pft_190329_multiinst_576inst

CASE_NAME=${SETUP_CASE}_${GITHASH1}_${GITHASH2}
basedir=$HOME/E3SM/cime/scripts
export SITE_NAME=bci_0.1x0.1_v4.0i                         # Name of folder with site data
export SITE_BASE_DIR=/global/home/users/cdkoven/cesm_input_data/atm/datm7/CLM_USRDAT_datasets
export CLM_USRDAT_DOMAIN=domain_bci_1pt_sparsegrid_c190603.nc
export CLM_USRDAT_SURDAT=surfdata_bci_1pt_sparsegrid_c190603.nc

export CIME_MODEL=e3sm
#### load_machine_files
cd $basedir
export RES=CLM_USRDAT
project=ac_ngeet
ninst=576
./create_newcase -case ${CASE_NAME} -res ${RES} -compset ICLM45ED -mach lawrencium-lr3 -project $project --ninst=$ninst --multi-driver
cd ${CASE_NAME}
export DIN_LOC_ROOT_FORCE=${SITE_BASE_DIR}
export CLM_SURFDAT_DIR=${SITE_BASE_DIR}/${SITE_NAME}
export CLM_DOMAIN_DIR=${SITE_BASE_DIR}/${SITE_NAME}

./xmlchange STOP_OPTION=nyears
./xmlchange STOP_N=200
./xmlchange REST_N=50
./xmlchange CONTINUE_RUN=FALSE
./xmlchange DEBUG=FALSE
./xmlchange RESUBMIT=0

./xmlchange DIN_LOC_ROOT=/clusterfs/esd/esd01/climes/CESM_Inputdata/inputdata/

# SET PATHS TO SCRATCH ROOT, DOMAIN AND MET DATA (USERS WILL PROB NOT CHANGE THESE)
# =================================================================================

./xmlchange ATM_DOMAIN_FILE=${CLM_USRDAT_DOMAIN}
./xmlchange ATM_DOMAIN_PATH=${CLM_DOMAIN_DIR}
./xmlchange LND_DOMAIN_FILE=${CLM_USRDAT_DOMAIN}
./xmlchange LND_DOMAIN_PATH=${CLM_DOMAIN_DIR}
./xmlchange DATM_MODE=CLM1PT
./xmlchange CLM_USRDAT_NAME=${SITE_NAME}
./xmlchange DIN_LOC_ROOT_CLMFORC=${DIN_LOC_ROOT_FORCE}

./xmlchange MAX_TASKS_PER_NODE=16     # for lawrencium-lr3
./xmlchange MAX_MPITASKS_PER_NODE=16  # for lawrencium-lr3

./xmlchange EXEROOT=/global/scratch/cdkoven/$CASE_NAME/bld
./xmlchange RUNDIR=/global/scratch/cdkoven/$CASE_NAME/run
./xmlchange DOUT_S_ROOT=/global/scratch/cdkoven/archive/$CASE_NAME

./xmlchange JOB_WALLCLOCK_TIME=11:59:00
./xmlchange STOP_OPTION=nyears
./xmlchange DATM_CLMNCEP_YR_START=1986
./xmlchange DATM_CLMNCEP_YR_END=2017

./xmlchange RUN_STARTDATE=0001-06-01

./xmlchange NTASKS_ATM=1
./xmlchange NTASKS_CPL=1
./xmlchange NTASKS_OCN=1
./xmlchange NTASKS_WAV=1
./xmlchange NTASKS_GLC=1
./xmlchange NTASKS_ICE=1
./xmlchange NTASKS_ROF=1
./xmlchange NTASKS_LND=1


for x  in `seq 1 1 $ninst`; do
    expstr=$(printf %04d $x)
    echo $expstr
    cat > user_nl_clm_$expstr <<EOF
fsurdat = '${CLM_SURFDAT_DIR}/${CLM_USRDAT_SURDAT}'
fates_paramfile = '/global/home/users/cdkoven/scratch/parameter_file_sandbox/fates_params_default_106ac7a_mod1PFT_exp1_${expstr}.c190329.moredbhbins.nc'
use_fates_inventory_init = .false.
fates_inventory_ctrl_filename = '${SITE_BASE_DIR}/bci_inv_file_list.txt'
use_fates_ed_st3 = .false.
hist_empty_htapes = .false.
hist_mfilt = 60, 10
hist_nhtfrq = 0, -8760
hist_fexcl1 = 'AGB_SCLS','BA_SCLS','CANOPY_AREA_BY_AGE','CANOPY_HEIGHT_DIST','CROWNAREA_CAN','DDBH_CANOPY_SCLS','DDBH_UNDERSTORY_SCLS','FUEL_MOISTURE_NFSC','H2OSOI','HR_vr','LAI_BY_AGE','LAI_CANOPY_SCLS','LAI_UNDERSTORY_SCLS','LEAF_HEIGHT_DIST','M1_SCLS','M2_SCLS','M3_SCLS','M4_SCLS','M5_SCLS','M6_SCLS','M7_SCLS','M8_SCLS','MORTALITY','MORTALITY_CANOPY_SCLS','MORTALITY_UNDERSTORY_SCLS','NPLANT_CANOPY_SCLS','NPLANT_SCAG','NPLANT_SCLS','NPLANT_UNDERSTORY_SCLS','PATCH_AREA_BY_AGE',,'RECRUITMENT','SMP','SOILICE','SOILLIQ','TLAKE','TSOI','TSOI_ICE','ZSTAR_BY_AGE'
hist_fincl2 = 'ZSTAR_BY_AGE','RECRUITMENT','PATCH_AREA_BY_AGE','NPLANT_UNDERSTORY_SCLS','NPLANT_SCLS','NPLANT_SCAG','NPLANT_CANOPY_SCLS','MORTALITY_UNDERSTORY_SCLS','MORTALITY_CANOPY_SCLS','MORTALITY','M8_SCLS','M7_SCLS','M6_SCLS','M5_SCLS','M4_SCLS','M3_SCLS','M2_SCLS','M1_SCLS','LEAF_HEIGHT_DIST','LAI_UNDERSTORY_SCLS','LAI_CANOPY_SCLS','LAI_BY_AGE','FUEL_MOISTURE_NFSC','DDBH_UNDERSTORY_SCLS','DDBH_CANOPY_SCLS','CROWNAREA_CAN','CANOPY_HEIGHT_DIST','CANOPY_AREA_BY_AGE','BA_SCLS','NPLANT_UNDERSTORY_SCLS','NPLANT_SCLS','NPLANT_CANOPY_SCLS','CROWN_AREA_CANOPY_SCLS','CROWN_AREA_UNDERSTORY_SCLS'
EOF


    cat >> user_nl_datm_$expstr <<EOF
taxmode = "cycle", "cycle", "cycle"
EOF
done

./case.setup

# HERE WE NEED TO MODIFY THE STREAM FILE (DANGER ZONE - USERS BEWARE CHANGING)
./preview_namelists

for x  in `seq 1 1 $ninst`; do
    expstr=$(printf %04d $x)
    echo $expstr
    
    cp $HOME/scratch/$CASE_NAME/run/datm.streams.txt.CLM1PT.CLM_USRDAT_${expstr} user_datm.streams.txt.CLM1PT.CLM_USRDAT_${expstr}
    `sed -i '/FLDS/d' user_datm.streams.txt.CLM1PT.CLM_USRDAT_${expstr}`
    `sed -i '/FLDS/d' $HOME/scratch/$CASE_NAME/run/datm.streams.txt.CLM1PT.CLM_USRDAT_${expstr}`
done

./case.build
./case.submit --skip-preview-namelist

