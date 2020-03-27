#!/usr/bin/env bash

SRCDIR=$HOME/ctsm
cd ${SRCDIR}
GITHASH1=`git log -n 1 --format=%h`
cd src/fates
GITHASH2=`git log -n 1 --format=%h`

SETUP_CASE=fates_clm50_fullmodel_california_test4_5pfts_v1

CASE_NAME=${SETUP_CASE}_${GITHASH1}_${GITHASH2}
basedir=$HOME/ctsm/cime/scripts

export SITE_NAME=california
export CLM_USRDAT_DOMAIN=domain.lnd.california_0pt5degree_v2.nc
export CLM_USRDAT_SURDAT=surfdata_california_0pt5degree_1850.nc

export CIME_MODEL=cesm
project=P93300041

#### load_machine_files
cd $basedir
export RES=CLM_USRDAT
./create_newcase -case ${CASE_NAME} -res ${RES} -compset I2000Clm50FatesGs -mach cheyenne -project ${project} --run-unsupported
cd ${CASE_NAME}
export CLM_SURFDAT_DIR=$HOME/domains
export CLM_DOMAIN_DIR=$HOME/domains

./xmlchange STOP_OPTION=nyears
./xmlchange STOP_N=7
./xmlchange REST_N=1
./xmlchange REST_OPTION=nyears
#./xmlchange CONTINUE_RUN=FALSE
#./xmlchange RESUBMIT=0
#./xmlchange DEBUG=FALSE

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

./xmlchange DIN_LOC_ROOT_CLMFORC=/glade/p/cgd/tss/CTSM_datm_forcing_data

./xmlchange NTASKS_LND=144

./xmlchange EXEROOT=/glade/scratch/charlie/$CASE_NAME/bld
./xmlchange RUNDIR=/glade/scratch/charlie/$CASE_NAME/run
./xmlchange DOUT_S_ROOT=/glade/scratch/charlie/archive/$CASE_NAME

./xmlchange JOB_WALLCLOCK_TIME=11:59:00
./xmlchange DATM_CLMNCEP_YR_START=2003
./xmlchange DATM_CLMNCEP_YR_END=2014

./xmlchange RUN_STARTDATE=0001-01-01

### generate a fates parameter file for this experiment
module load python/2.7.13
module load numpy/1.13.3
module load scipy/0.19.1
module load ncarenv
#ncar_pylib
#module load matplotlib
#ncgen -o param_file_${SETUP_CASE}_temp0.nc $HOME/ctsm/src/fates/parameter_files/fates_params_default.cdl
# $HOME/ctsm/src/fates/tools/FatesPFTIndexSwapper.py --fin param_file_${SETUP_CASE}_temp0.nc --fout param_file_${SETUP_CASE}.nc --pft-indices 9,7,13
# $HOME/ctsm/src/fates/tools/modify_fates_paramfile.py --fin param_file_${SETUP_CASE}.nc --fout param_file_${SETUP_CASE}.nc --O --var fates_mort_scalar_hydrfailure --val 0 --allpfts
# $HOME/ctsm/src/fates/tools/modify_fates_paramfile.py --fin param_file_${SETUP_CASE}.nc --fout param_file_${SETUP_CASE}.nc --O --var fates_recruit_initd --val 0.2 --allpfts
# $HOME/ctsm/src/fates/tools/modify_fates_paramfile.py --fin param_file_${SETUP_CASE}.nc --fout param_file_${SETUP_CASE}.nc --O --var fates_alloc_storage_cushion --val 1.8 --PFT 1
# $HOME/ctsm/src/fates/tools/modify_fates_paramfile.py --fin param_file_${SETUP_CASE}.nc --fout param_file_${SETUP_CASE}.nc --O --var fates_alloc_storage_cushion --val 1.8 --PFT 2
# $HOME/ctsm/src/fates/tools/modify_fates_paramfile.py --fin param_file_${SETUP_CASE}.nc --fout param_file_${SETUP_CASE}.nc --O --var fates_smpsc --val -355000 --PFT 1
# $HOME/ctsm/src/fates/tools/modify_fates_paramfile.py --fin param_file_${SETUP_CASE}.nc --fout param_file_${SETUP_CASE}.nc --O --var fates_smpso --val -76000 --PFT 1
# $HOME/ctsm/src/fates/tools/modify_fates_paramfile.py --fin param_file_${SETUP_CASE}.nc --fout param_file_${SETUP_CASE}.nc --O --var fates_allom_d2bl1 --val 0.2 --PFT 1
#$HOME/ctsm/src/fates/tools/FatesPFTIndexSwapper.py --fin param_file_${SETUP_CASE}_temp0.nc --fout param_file_${SETUP_CASE}.nc --pft-indices 2,7,11
#$HOME/ctsm/src/fates/tools/modify_fates_paramfile.py --fin param_file_${SETUP_CASE}.nc --fout param_file_${SETUP_CASE}.nc --O --var fates_mort_scalar_hydrfailure --val 0 --allpfts
#$HOME/ctsm/src/fates/tools/modify_fates_paramfile.py --fin param_file_${SETUP_CASE}.nc --fout param_file_${SETUP_CASE}.nc --O --var fates_recruit_initd --val 0.2 --allpfts
#$HOME/ctsm/src/fates/tools/modify_fates_paramfile.py --fin param_file_${SETUP_CASE}.nc --fout param_file_${SETUP_CASE}.nc --O --var fates_alloc_storage_cushion --val 1.8 --PFT 1
#$HOME/ctsm/src/fates/tools/modify_fates_paramfile.py --fin param_file_${SETUP_CASE}.nc --fout param_file_${SETUP_CASE}.nc --O --var fates_alloc_storage_cushion --val 1.8 --PFT 2
#    $HOME/ctsm/src/fates/tools/modify_fates_paramfile.py --fin param_file_${SETUP_CASE}.nc --fout param_file_${SETUP_CASE}.nc --O --var fates_fire_alpha_SH --val 0.06 --allpfts
#    $HOME/ctsm/src/fates/tools/modify_fates_paramfile.py --fin param_file_${SETUP_CASE}.nc --fout param_file_${SETUP_CASE}.nc --O --var fates_fire_bark_scaler --val 0.1085 --allpfts
#mv param_file_${SETUP_CASE}.nc param_file.nc
#\rm param_file_${SETUP_CASE}_temp0.nc

module unload scipy
module unload numpy
module load python/3.6.8

cat > user_nl_clm <<EOF

fsurdat = '${CLM_SURFDAT_DIR}/${CLM_USRDAT_SURDAT}'
fates_paramfile = '/glade/scratch/charlie/parameter_file_sandbox/fates_params_mod_e88c06b_calif_5pfts_20200326.nc'
hist_fincl1 = 'NPLANT_SCPF','M1_SCPF','M2_SCPF','M3_SCPF','M4_SCPF','M5_SCPF','M6_SCPF','M7_SCPF','M8_SCPF','PFTcrownarea','CROWNFIREMORT_SCPF','CAMBIALFIREMORT_SCPF','SCORCH_HEIGHT'
use_fates_spitfire = .true.
EOF

./case.setup

qcmd -A ${project} -- ./case.build
./case.submit




