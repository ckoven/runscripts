#!/usr/bin/env bash

SRCDIR=$HOME/ctsm
cd ${SRCDIR}
GITHASH1=`git log -n 1 --format=%h`
cd src/fates
GITHASH2=`git log -n 1 --format=%h`

SETUP_CASE=fates_clm5_fullmodel_bci_parameter_ensemble_1pft_v001

if [ "${SETUP_CASE}" == "fates_clm5_fullmodel_bci_parameter_ensemble_1pft_v001" ]; then
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
    project=P93300041
    ./create_newcase -case ${CASE_NAME} -res ${RES} -compset I2000Clm50FatesGs -mach cheyenne -project $project --run-unsupported
    cd ${CASE_NAME}
    export DIN_LOC_ROOT_FORCE=${SITE_BASE_DIR}
    export CLM_SURFDAT_DIR=${SITE_BASE_DIR}/${SITE_NAME}
    export CLM_DOMAIN_DIR=${SITE_BASE_DIR}/${SITE_NAME}

    ./xmlchange STOP_OPTION=nyears
    #./xmlchange STOP_N=200
    ./xmlchange STOP_N=30
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

    ./xmlchange JOB_WALLCLOCK_TIME=05:59:00
    ./xmlchange STOP_OPTION=nyears
    ./xmlchange DATM_CLMNCEP_YR_START=2003
    ./xmlchange DATM_CLMNCEP_YR_END=2016

    ./xmlchange RUN_STARTDATE=0001-06-01

    ./xmlchange NINST_LND=179
    ./xmlchange ROOTPE_LND=1

    for x  in `seq 1 1 179`; do
	expstr=$(printf %04d $x)
	echo $expstr
	cat > user_nl_clm_$expstr <<EOF
fsurdat = '${CLM_SURFDAT_DIR}/${CLM_USRDAT_SURDAT}'
fates_paramfile = '/glade2/scratch2/charlie/parameter_file_sandbox/fates_params_c6ff126_bcitraits_test01_v_${expstr}.c180523.nc'
use_fates_inventory_init = .false.
use_fates_ed_st3 = .false.
hist_mfilt = 60
EOF
    done

    cat >> user_nl_datm <<EOF
taxmode = "cycle", "cycle", "cycle"
EOF

    ./case.setup

    # HERE WE NEED TO MODIFY THE STREAM FILE (DANGER ZONE - USERS BEWARE CHANGING)
    ./preview_namelists
    cp /glade2/scratch2/charlie/$CASE_NAME/run/datm.streams.txt.CLM1PT.CLM_USRDAT user_datm.streams.txt.CLM1PT.CLM_USRDAT
    `sed -i '/FLDS/d' user_datm.streams.txt.CLM1PT.CLM_USRDAT`

    qcmd -A ${project} -- ./case.build
    ./case.submit

fi
