#!/usr/bin/env bash

SRCDIR=$HOME/acme_source/E3SM
cd ${SRCDIR}
GITHASH1=`git log -n 1 --format=%h`
cd components/clm/src/external_models/fates
GITHASH2=`git log -n 1 --format=%h`

SETUP_CASE=fates_e3sm_fullmodel_california_test2_3pfts_nohydromort_respthrott

if [ "${SETUP_CASE}" == "fates_e3sm_fullmodel_california_test2_3pfts_nohydromort_respthrott" ]; then

    CASE_NAME=${SETUP_CASE}_${GITHASH1}_${GITHASH2}
    basedir=$HOME/acme_source/E3SM/cime/scripts

    export SITE_NAME=california
    export CLM_USRDAT_DOMAIN=domain.lnd.california_0pt5degree_v2.nc
    export CLM_USRDAT_SURDAT=surfdata_california_0pt5degree_16pfts_simyr1850_c180417.nc

    export CIME_MODEL=e3sm
    project=m2975

    #### load_machine_files
    cd $basedir
    export RES=CLM_USRDAT
    ./create_newcase -case ${CASE_NAME} -res ${RES} -compset ICLM45ED -mach edison -project ${project} 
    cd ${CASE_NAME}
    export CLM_SURFDAT_DIR=$HOME/domains
    export CLM_DOMAIN_DIR=$HOME/domains

    ./xmlchange STOP_OPTION=ndays
    #./xmlchange STOP_N=200
    ./xmlchange STOP_N=10
    ./xmlchange REST_N=10
    ./xmlchange CONTINUE_RUN=FALSE
    #./xmlchange RESUBMIT=2
    ./xmlchange RESUBMIT=0
    ./xmlchange DEBUG=FALSE
    
    #./xmlchange DIN_LOC_ROOT=/glade/u/home/charlie/cesm_input_data

    # SET PATHS TO SCRATCH ROOT, DOMAIN AND MET DATA (USERS WILL PROB NOT CHANGE THESE)
    # =================================================================================
    
    ./xmlchange ATM_DOMAIN_FILE=${CLM_USRDAT_DOMAIN}
    ./xmlchange ATM_DOMAIN_PATH=${CLM_DOMAIN_DIR}
    ./xmlchange LND_DOMAIN_FILE=${CLM_USRDAT_DOMAIN}
    ./xmlchange LND_DOMAIN_PATH=${CLM_DOMAIN_DIR}
    ./xmlchange DATM_MODE=CLMGSWP3v1
    ./xmlchange CLM_USRDAT_NAME=${SITE_NAME}
    #./xmlchange DIN_LOC_ROOT_CLMFORC=${DIN_LOC_ROOT_FORCE}

    ./xmlchange NTASKS_LND=144

    ./xmlchange EXEROOT=/scratch1/scratchdirs/cdkoven/$CASE_NAME/bld
    ./xmlchange RUNDIR=/scratch1/scratchdirs/cdkoven/$CASE_NAME/run
    ./xmlchange DOUT_S_ROOT=/scratch1/scratchdirs/cdkoven/archive/$CASE_NAME

    ./xmlchange JOB_WALLCLOCK_TIME=11:59:00
    ./xmlchange STOP_OPTION=nyears
    ./xmlchange DATM_CLMNCEP_YR_START=2003
    ./xmlchange DATM_CLMNCEP_YR_END=2014

    ./xmlchange RUN_STARTDATE=0001-01-01

    ### generate a fates parameter file for this experiment
    module load python/2.7-anaconda-4.4
    module load cray-netcdf/4.4.1.1.6
    ncgen -o param_file_${SETUP_CASE}_temp0.nc $HOME/acme_source/E3SM/components/clm/src/external_models/fates/parameter_files/fates_params_14pfts.cdl
    $HOME/acme_source/E3SM/components/clm/src/external_models/fates/tools/FatesPFTIndexSwapper.py --fin param_file_${SETUP_CASE}_temp0.nc --fout param_file_${SETUP_CASE}.nc --pft-indices 2,7,13
    $HOME/acme_source/E3SM/components/clm/src/external_models/fates/tools/modify_fates_paramfile.py --fin param_file_${SETUP_CASE}.nc --fout param_file_${SETUP_CASE}.nc --O --var fates_mort_scalar_hydrfailure --val 0 --allpfts
    $HOME/acme_source/E3SM/components/clm/src/external_models/fates/tools/modify_fates_paramfile.py --fin param_file_${SETUP_CASE}.nc --fout param_file_${SETUP_CASE}.nc --O --var fates_recruit_initd --val 0.2 --allpfts
    \rm param_file_${SETUP_CASE}_temp0.nc
    module unload python/2.7-anaconda-4.4
    module unload cray-netcdf/4.4.1.1.6

    cat > user_nl_clm <<EOF

fsurdat = '${CLM_SURFDAT_DIR}/${CLM_USRDAT_SURDAT}'
fates_paramfile = '${basedir}/${CASE_NAME}/param_file_${SETUP_CASE}.nc'
hist_fincl1 = 'NPLANT_SCPF','M1_SCPF','M2_SCPF','M3_SCPF','M4_SCPF','M5_SCPF','M6_SCPF','M7_SCPF','M8_SCPF'
use_fates_spitfire = .false.
EOF

    ./case.setup

    ./case.build
    ./case.submit

fi


