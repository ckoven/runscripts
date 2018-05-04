#!/usr/bin/env bash

SRCDIR=$HOME/ctsm
cd ${SRCDIR}
GITHASH1=`git log -n 1 --format=%h`
cd src/fates
GITHASH2=`git log -n 1 --format=%h`

SETUP_CASE=fates_clm5_fullmodel_bci_control
#SETUP_CASE=fates_clm5_fullmodel_bci_thickcanopy1
#SETUP_CASE=fates_clm5_fullmodel_bci_thickcanopy1_notrim
#SETUP_CASE=fates_clm5_fullmodel_bci_1pftrun_exp1
#SETUP_CASE=fates_clm5_fullmodel_bci_1pftrun_baseline
#SETUP_CASE=fates_clm5_fullmodel_bci_1pftrun_thickcan1
#SETUP_CASE=fates_clm5_fullmodel_bci_1pftrun_thickcan1_invinit
#SETUP_CASE=fates_clm5_fullmodel_bci_1pftrun_thickcan1_notrim
#SETUP_CASE=fates_clm5_fullmodel_bci_1pftrun_baseline_invinit
#SETUP_CASE=fates_clm5_fullmodel_bci_1pftrun_baseline_invinit_radprof
#SETUP_CASE=fates_clm5_fullmodel_bci_1pftrun_baseline_invinit_radprof_leafclumping085
#SETUP_CASE=fates_clm5_fullmodel_bci_1pftrun_baseline_invinit_radprof_leafclumping085_nomaxsize
#SETUP_CASE=fates_clm5_fullmodel_bci_1pftrun_baseline_invinit_radprof_leafclumping085_nomaxsize_nosai
#SETUP_CASE=fates_clm5_fullmodel_bci_1pftrun_baseline_invinit_radprof_leafclumping085_nomaxsize_newsai
#SETUP_CASE=fates_clm5_fullmodel_bci_1pftrun_baseline_invinit_radprof_leafclumping085_nomaxsize_newsai_2xbleaf
#SETUP_CASE=fates_clm5_fullmodel_bci_1pftrun_baseline_invinit_radprof_leafclumping085_nomaxsize_newsai_2xbleaf_newbfrallom
#SETUP_CASE=fates_clm5_fullmodel_bci_1pftrun_baseline_invinit_radprof_noleafclumping085_nomaxsize_oldsai
#SETUP_CASE=fates_clm5_fullmodel_bci_1pftrun_baseline_invinit_st3

if [ "${SETUP_CASE}" == "fates_clm5_fullmodel_bci_control" ]; then
#if [ "${SETUP_CASE}" == "fates_clm5_fullmodel_bci_thickcanopy1" ]; then
#if [ "${SETUP_CASE}" == "fates_clm5_fullmodel_bci_thickcanopy1_notrim" ]; then
#if [ "${SETUP_CASE}" == "fates_clm5_fullmodel_bci_1pftrun_baseline" ]; then
#if [ "${SETUP_CASE}" == "fates_clm5_fullmodel_bci_1pftrun_baseline_invinit_radprof" ]; then
#if [ "${SETUP_CASE}" == "fates_clm5_fullmodel_bci_1pftrun_baseline_invinit_radprof_leafclumping085" ]; then
#if [ "${SETUP_CASE}" == "fates_clm5_fullmodel_bci_1pftrun_baseline_invinit_radprof_leafclumping085_nomaxsize" ]; then
#if [ "${SETUP_CASE}" == "fates_clm5_fullmodel_bci_1pftrun_baseline_invinit_radprof_leafclumping085_nomaxsize_nosai" ]; then
#if [ "${SETUP_CASE}" == "fates_clm5_fullmodel_bci_1pftrun_baseline_invinit_radprof_leafclumping085_nomaxsize_newsai" ]; then
#if [ "${SETUP_CASE}" == "fates_clm5_fullmodel_bci_1pftrun_baseline_invinit_radprof_leafclumping085_nomaxsize_newsai_2xbleaf" ]; then
#if [ "${SETUP_CASE}" == "fates_clm5_fullmodel_bci_1pftrun_baseline_invinit_radprof_leafclumping085_nomaxsize_newsai_2xbleaf_newbfrallom" ]; then
#if [ "${SETUP_CASE}" == "fates_clm5_fullmodel_bci_1pftrun_baseline_invinit_radprof_noleafclumping085_nomaxsize_oldsai" ]; then
#if [ "${SETUP_CASE}" == "fates_clm5_fullmodel_bci_1pftrun_baseline_invinit_st3" ]; then
#if [ "${SETUP_CASE}" == "fates_clm5_fullmodel_bci_1pftrun_thickcan1" ]; then
#if [ "${SETUP_CASE}" == "fates_clm5_fullmodel_bci_1pftrun_thickcan1_invinit" ]; then
#if [ "${SETUP_CASE}" == "fates_clm5_fullmodel_bci_1pftrun_thickcan1_notrim" ]; then
    CASE_NAME=${SETUP_CASE}_${GITHASH1}_${GITHASH2}
    basedir=$HOME/ctsm/cime/scripts
    export SITE_NAME=bci_0.1x0.1_v4.0i                         # Name of folder with site data
    export SITE_BASE_DIR=/glade/u/home/charlie/cesm_input_data/atm/datm7/CLM_USRDAT_datasets/
    export CLM_USRDAT_DOMAIN=domain_bci_sparse_grid_c180227.nc
    export CLM_USRDAT_SURDAT=surfdata_bci_sparse_grid_c180227.nc

    export CIME_MODEL=cesm
    #### load_machine_files
    cd $basedir
    export RES=CLM_USRDAT
    ./create_newcase -case ${CASE_NAME} -res ${RES} -compset I2000Clm50FatesGs -mach cheyenne -project P93300041 --run-unsupported
    cd ${CASE_NAME}
    export DIN_LOC_ROOT_FORCE=${SITE_BASE_DIR}
    export CLM_SURFDAT_DIR=${SITE_BASE_DIR}/${SITE_NAME}
    export CLM_DOMAIN_DIR=${SITE_BASE_DIR}/${SITE_NAME}

    ./xmlchange STOP_OPTION=nyears
    #./xmlchange STOP_N=200
    ./xmlchange STOP_N=5
    ./xmlchange REST_N=10
    ./xmlchange CONTINUE_RUN=FALSE
    #./xmlchange RESUBMIT=2
    ./xmlchange RESUBMIT=0
    ./xmlchange DEBUG=FALSE
    
    ./xmlchange DIN_LOC_ROOT=/glade/u/home/charlie/cesm_input_data

    # SET PATHS TO SCRATCH ROOT, DOMAIN AND MET DATA (USERS WILL PROB NOT CHANGE THESE)
    # =================================================================================
    
    ./xmlchange ATM_DOMAIN_FILE=${CLM_USRDAT_DOMAIN}
    ./xmlchange ATM_DOMAIN_PATH=${CLM_DOMAIN_DIR}
    ./xmlchange LND_DOMAIN_FILE=${CLM_USRDAT_DOMAIN}
    ./xmlchange LND_DOMAIN_PATH=${CLM_DOMAIN_DIR}
    ./xmlchange DATM_MODE=CLM1PT
    ./xmlchange CLM_USRDAT_NAME=${SITE_NAME}
    ./xmlchange DIN_LOC_ROOT_CLMFORC=${DIN_LOC_ROOT_FORCE}

    
    ./xmlchange EXEROOT=/glade2/scratch2/charlie/$CASE_NAME/bld
    ./xmlchange RUNDIR=/glade2/scratch2/charlie/$CASE_NAME/run
    ./xmlchange DOUT_S_ROOT=/glade2/scratch2/charlie/archive/$CASE_NAME

    ./xmlchange JOB_WALLCLOCK_TIME=11:59:00
    ./xmlchange STOP_OPTION=nyears
    ./xmlchange DATM_CLMNCEP_YR_START=2003
    ./xmlchange DATM_CLMNCEP_YR_END=2016

    ./xmlchange RUN_STARTDATE=0001-06-01

    ### generate a fates parameter file for this experiment
    module load matplotlib
    module load scipy
    ncgen -o param_file_${SETUP_CASE}_temp0.nc $HOME/ctsm/src/fates/parameter_files/fates_params_default.cdl


    cat > user_nl_clm <<EOF
fsurdat = '${CLM_SURFDAT_DIR}/${CLM_USRDAT_SURDAT}'
fates_paramfile = '/glade/u/home/charlie/cesm_input_data/lnd/clm2/paramdata/fates_params_default.nc'
use_fates_inventory_init = .true.
fates_inventory_ctrl_filename = '${SITE_BASE_DIR}/bci_inv_file_list.txt'
use_fates_ed_st3 = .false.
EOF

    cat >> user_nl_datm <<EOF
taxmode = "cycle", "cycle", "cycle"
EOF

    ./case.setup

    # HERE WE NEED TO MODIFY THE STREAM FILE (DANGER ZONE - USERS BEWARE CHANGING)
    ./preview_namelists
    cp /glade2/scratch2/charlie/$CASE_NAME/run/datm.streams.txt.CLM1PT.CLM_USRDAT user_datm.streams.txt.CLM1PT.CLM_USRDAT
    `sed -i '/FLDS/d' user_datm.streams.txt.CLM1PT.CLM_USRDAT`

    qcmd -- ./case.build
    ./case.submit

fi
