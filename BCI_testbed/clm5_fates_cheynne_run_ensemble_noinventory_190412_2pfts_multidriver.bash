#!/usr/bin/env bash

SRCDIR=$HOME/ctsm
cd ${SRCDIR}
GITHASH1=`git log -n 1 --format=%h`
cd src/fates
GITHASH2=`git log -n 1 --format=%h`

SETUP_CASE=fates_clm5_fullmodel_bci_parameter_ensemble_2pfts_190416_multiinst_576inst_purePPAdist_v2_

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
ninst=576
./create_newcase -case ${CASE_NAME} -res ${RES} -compset I2000Clm50FatesGs -mach cheyenne -project $project --run-unsupported --ninst=$ninst --multi-driver
cd ${CASE_NAME}
export DIN_LOC_ROOT_FORCE=${SITE_BASE_DIR}
export CLM_SURFDAT_DIR=${SITE_BASE_DIR}/${SITE_NAME}
export CLM_DOMAIN_DIR=${SITE_BASE_DIR}/${SITE_NAME}

./xmlchange STOP_OPTION=nyears
./xmlchange STOP_N=40
./xmlchange REST_N=5
./xmlchange CONTINUE_RUN=FALSE
./xmlchange DEBUG=FALSE
./xmlchange RESUBMIT=4

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


./xmlchange EXEROOT=/gpfs/fs1/scratch/charlie/$CASE_NAME/bld
./xmlchange RUNDIR=/gpfs/fs1/scratch/charlie/$CASE_NAME/run
./xmlchange DOUT_S_ROOT=/gpfs/fs1/scratch/charlie/archive/$CASE_NAME

./xmlchange JOB_WALLCLOCK_TIME=05:59:00
./xmlchange STOP_OPTION=nyears
./xmlchange DATM_CLMNCEP_YR_START=1986
./xmlchange DATM_CLMNCEP_YR_END=2017

./xmlchange RUN_STARTDATE=0001-06-01

./xmlchange MAX_TASKS_PER_NODE=18
./xmlchange MAX_MPITASKS_PER_NODE=18


for x  in `seq 1 1 $ninst`; do
    expstr=$(printf %04d $x)
    echo $expstr
    cat > user_nl_clm_$expstr <<EOF
fsurdat = '${CLM_SURFDAT_DIR}/${CLM_USRDAT_SURDAT}'
fates_paramfile = '/glade/scratch/charlie/parameter_file_sandbox/fates_params_default_0bc7a5d_mod2PFTs_purePPAdist_exp4_${expstr}.c190513.nc'
use_fates_inventory_init = .true.
fates_inventory_ctrl_filename = '${SITE_BASE_DIR}/bci_inv_file_list_2identicalpfts.txt'
use_fates_ed_st3 = .false.
hist_empty_htapes = .false.
hist_mfilt = 60, 10
hist_nhtfrq = 0, -8760
hist_fexcl1 = 'AGB_SCLS','BA_SCLS','CANOPY_AREA_BY_AGE','CANOPY_HEIGHT_DIST','CROWNAREA_CAN','DDBH_CANOPY_SCLS','DDBH_UNDERSTORY_SCLS','FATES_c_to_litr_cel_c','FATES_c_to_litr_lab_c','FATES_c_to_litr_lig_c','FUEL_MOISTURE_NFSC','H2OSOI','HR_vr','LAI_BY_AGE','LAI_CANOPY_SCLS','LAI_UNDERSTORY_SCLS','LEAF_HEIGHT_DIST','LITR1C_vr','LITR1N_vr','LITR2C_vr','LITR2N_vr','LITR3C_vr','LITR3N_vr','M1_SCLS','M2_SCLS','M3_SCLS','M4_SCLS','M5_SCLS','M6_SCLS','M7_SCLS','M8_SCLS','MORTALITY','MORTALITY_CANOPY_SCLS','MORTALITY_UNDERSTORY_SCLS','NPLANT_CANOPY_SCLS','NPLANT_SCAG','NPLANT_SCLS','NPLANT_UNDERSTORY_SCLS','O_SCALAR','PATCH_AREA_BY_AGE','PCT_GLC_MEC','PCT_LANDUNIT','PFTbiomass','PFTleafbiomass','PFTnindivs','PFTstorebiomass','RECRUITMENT','SMINN_vr','SMP','SOIL1C_vr','SOIL1N_vr','SOIL2C_vr','SOIL2N_vr','SOIL3C_vr','SOIL3N_vr','SOILICE','SOILLIQ','TLAKE','TSOI','TSOI_ICE','T_SCALAR','W_SCALAR','ZSTAR_BY_AGE'
hist_fincl2 = 'ZSTAR_BY_AGE','RECRUITMENT','PFTbiomass','PATCH_AREA_BY_AGE','NPLANT_UNDERSTORY_SCPF','NPLANT_SCPF','NPLANT_SCAG','NPLANT_CANOPY_SCPF','MORTALITY_UNDERSTORY_SCPF','MORTALITY_CANOPY_SCPF','MORTALITY','M8_SCPF','M7_SCPF','M6_SCPF','M5_SCPF','M4_SCPF','M3_SCPF','M2_SCPF','M1_SCPF','LEAF_HEIGHT_DIST','LAI_UNDERSTORY_SCLS','LAI_CANOPY_SCLS','LAI_BY_AGE','FUEL_MOISTURE_NFSC','DDBH_UNDERSTORY_SCPF','DDBH_CANOPY_SCPF','CROWNAREA_CAN','CANOPY_HEIGHT_DIST','CANOPY_AREA_BY_AGE','BA_SCPF','GROWTHFLUX_SCPF','GROWTHFLUX_FUSION_SCPF','PFTcrownarea','PFTcanopycrownarea','NPLANT_UNDERSTORY_SCLS','NPLANT_SCLS','NPLANT_CANOPY_SCLS','CROWN_AREA_CANOPY_SCLS','CROWN_AREA_UNDERSTORY_SCLS'
EOF


    cat >> user_nl_datm_$expstr <<EOF
taxmode = "cycle", "cycle", "cycle"
EOF
done

sed -i -- 's/cs={{ tasks_per_node }}:ompthreads={{ thread_count }}/cs={{ tasks_per_node }}:ompthreads={{ thread_count }}:mem=109GB/g' env_batch.xml

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

qcmd -A ${project} -- ./case.build
./case.submit --skip-preview-namelist


