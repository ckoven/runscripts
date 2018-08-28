#!/usr/bin/env bash

SRCDIR=$HOME/ctsm
cd ${SRCDIR}
GITHASH1=`git log -n 1 --format=%h`
cd src/fates
GITHASH2=`git log -n 1 --format=%h`

SETUP_CASE=fates_clm5_fullmodel_bci_control_frombareground

if [ "${SETUP_CASE}" == "fates_clm5_fullmodel_bci_control_frombareground" ]; then
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

    ### generate a fates parameter file for this experiment
    module load matplotlib
    module load scipy
    ncgen -o param_file_$GITHASH2.nc $HOME/ctsm/src/fates/parameter_files/fates_params_default.cdl

#     #$SRCDIR/src/fates/tools/modify_fates_paramfile.py --fin param_file_$GITHASH2.nc --fout param_file_$GITHASH2.nc --O --var fates_comp_excln --val -1
#     $SRCDIR/src/fates/tools/modify_fates_paramfile.py --fin param_file_$GITHASH2.nc --fout param_file_$GITHASH2.nc --O --var fates_allom_lmode --val 2 --allpfts
# #    $SRCDIR/src/fates/tools/modify_fates_paramfile.py --fin param_file_$GITHASH2.nc --fout param_file_$GITHASH2.nc --O --var fates_allom_d2bl1 --val .14 --allpfts
#     $SRCDIR/src/fates/tools/modify_fates_paramfile.py --fin param_file_$GITHASH2.nc --fout param_file_$GITHASH2.nc --O --var fates_allom_d2bl1 --val .2 --allpfts
#     $SRCDIR/src/fates/tools/modify_fates_paramfile.py --fin param_file_$GITHASH2.nc --fout param_file_$GITHASH2.nc --O --var fates_allom_l2fr --val 0.3 --allpfts

#     ### switch to BCI allometry from martinez-cano et al. for height and AGB
#     $SRCDIR/src/fates/tools/modify_fates_paramfile.py --fin param_file_$GITHASH2.nc --fout param_file_$GITHASH2.nc --O --allpfts --var fates_allom_dbh_maxheight --val 99999
#     $SRCDIR/src/fates/tools/modify_fates_paramfile.py --fin param_file_$GITHASH2.nc --fout param_file_$GITHASH2.nc --O --allpfts --var fates_allom_hmode --val 5
#     $SRCDIR/src/fates/tools/modify_fates_paramfile.py --fin param_file_$GITHASH2.nc --fout param_file_$GITHASH2.nc --O --allpfts --var fates_allom_d2h1 --val 57.6
#     $SRCDIR/src/fates/tools/modify_fates_paramfile.py --fin param_file_$GITHASH2.nc --fout param_file_$GITHASH2.nc --O --allpfts --var fates_allom_d2h2 --val 0.74
#     $SRCDIR/src/fates/tools/modify_fates_paramfile.py --fin param_file_$GITHASH2.nc --fout param_file_$GITHASH2.nc --O --allpfts --var fates_allom_d2h3 --val 21.6

#     $SRCDIR/src/fates/tools/modify_fates_paramfile.py --fin param_file_$GITHASH2.nc --fout param_file_$GITHASH2.nc --O --allpfts --var fates_allom_amode --val 3
#     $SRCDIR/src/fates/tools/modify_fates_paramfile.py --fin param_file_$GITHASH2.nc --fout param_file_$GITHASH2.nc --O --allpfts --var fates_allom_agb1 --val 0.0673
#     $SRCDIR/src/fates/tools/modify_fates_paramfile.py --fin param_file_$GITHASH2.nc --fout param_file_$GITHASH2.nc --O --allpfts --var fates_allom_agb2 --val 0.976
#     $SRCDIR/src/fates/tools/modify_fates_paramfile.py --fin param_file_$GITHASH2.nc --fout param_file_$GITHASH2.nc --O --allpfts --var fates_allom_agb3 --val -999
#     $SRCDIR/src/fates/tools/modify_fates_paramfile.py --fin param_file_$GITHASH2.nc --fout param_file_$GITHASH2.nc --O --allpfts --var fates_allom_agb4 --val -999

    
#     # $SRCDIR/src/fates/tools/modify_fates_paramfile.py --fin param_file_$GITHASH2.nc --fout param_file_$GITHASH2.nc --O --allpfts --var fates_allom_lmode --val 3
#     # $SRCDIR/src/fates/tools/modify_fates_paramfile.py --fin param_file_$GITHASH2.nc --fout param_file_$GITHASH2.nc --O --allpfts --var fates_allom_d2bl1 --val 0.23266
#     # $SRCDIR/src/fates/tools/modify_fates_paramfile.py --fin param_file_$GITHASH2.nc --fout param_file_$GITHASH2.nc --O --allpfts --var fates_allom_d2bl2 --val 1.359
#     # $SRCDIR/src/fates/tools/modify_fates_paramfile.py --fin param_file_$GITHASH2.nc --fout param_file_$GITHASH2.nc --O --allpfts --var fates_allom_d2bl3 --val -999
#     # $SRCDIR/src/fates/tools/modify_fates_paramfile.py --fin param_file_$GITHASH2.nc --fout param_file_$GITHASH2.nc --O --allpfts --var fates_allom_d2ca_coefficient_max --val 0.85
#     # $SRCDIR/src/fates/tools/modify_fates_paramfile.py --fin param_file_$GITHASH2.nc --fout param_file_$GITHASH2.nc --O --allpfts --var fates_allom_d2ca_coefficient_min --val 0.68431

#     # use mean wood density value from Wright et al. (2010)
#     $SRCDIR/src/fates/tools/modify_fates_paramfile.py --fin param_file_$GITHASH2.nc --fout param_file_$GITHASH2.nc --O --allpfts --var fates_wood_density --val 0.581217054263566

    module unload matplotlib
    module unload scipy


    cat > user_nl_clm <<EOF
fsurdat = '${CLM_SURFDAT_DIR}/${CLM_USRDAT_SURDAT}'
fates_paramfile = '${basedir}/${CASE_NAME}/param_file_$GITHASH2.nc'
use_fates_inventory_init = .false.
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

    qcmd -A ${project} -- ./case.build
    ./case.submit

fi
