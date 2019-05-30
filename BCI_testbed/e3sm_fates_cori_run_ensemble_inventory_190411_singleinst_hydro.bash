#!/usr/bin/env bash

SRCDIR=$HOME/E3SM
cd ${SRCDIR}
GITHASH1=`git log -n 1 --format=%h`
cd components/clm/src/external_models/fates/
GITHASH2=`git log -n 1 --format=%h`

SETUP_CASE=fates_e3sm_fullmodel_bci_parameter_ensemble_1pft_190411_singleinst_hydro

if [ "${SETUP_CASE}" == "fates_e3sm_fullmodel_bci_parameter_ensemble_1pft_190411_singleinst_hydro" ]; then
    CASE_NAME=${SETUP_CASE}_${GITHASH1}_${GITHASH2}
    basedir=$HOME/E3SM/cime/scripts
    export SITE_NAME=bci_0.1x0.1_v4.0i                         # Name of folder with site data
    export SITE_BASE_DIR=$HOME/cesm_input_data/atm/datm7/CLM_USRDAT_datasets/
    export CLM_USRDAT_DOMAIN=domain_bci_sparse_grid_c180227.nc
    export CLM_USRDAT_SURDAT=surfdata_bci_sparse_grid_c180227.nc

    export CIME_MODEL=e3sm
    project=m2975

    export CIME_MODEL=cesm
    #### load_machine_files
    cd $basedir
    export RES=CLM_USRDAT
    ninst=1
    ./create_newcase -case ${CASE_NAME} -res ${RES} -compset ICLM45ED -mach cori-haswell -project $project --run-unsupported
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

    
    ./xmlchange EXEROOT=$SCRATCH/$CASE_NAME/bld
    ./xmlchange RUNDIR=$SCRATCH/$CASE_NAME/run
    ./xmlchange DOUT_S_ROOT=$SCRATCH/archive/$CASE_NAME

    ./xmlchange JOB_WALLCLOCK_TIME=00:29:00
    ./xmlchange STOP_OPTION=nyears
    ./xmlchange DATM_CLMNCEP_YR_START=2003
    ./xmlchange DATM_CLMNCEP_YR_END=2016

    ./xmlchange RUN_STARTDATE=0001-06-01

    # # ./xmlchange NINST_LND=575
    # # ./xmlchange ROOTPE_LND=1
#,'AREA_PLANT','AREA_TREES','AR_CANOPY','AR_UNDERSTORY','BIOMASS_CANOPY','BIOMASS_STOCK_COL','BIOMASS_UNDERSTORY','BTRAN','BTRAN2','BTRANMN','CANOPY_SPREAD','CBALANCE_ERROR_BGC','CBALANCE_ERROR_ED','CBALANCE_ERROR_TOTAL','CWD_STOCK_COL','ED_LITTER_STOCK_COL','ED_NCOHORTS','ED_NPATCHES','ED_balive','ED_bdead','ED_bfineroot','ED_biomass','ED_bleaf','ED_bsapwood','ED_bstore','ELAI','ESAI','FCEV','FCOV','FCTR','FGEV','FGR','FH2OSFC','FLDS','FSA','FSAT','FSDS','FSDSND','FSDSNDLN','FSDSNI','FSDSVD','FSDSVDLN','FSDSVI','FSDSVILN','FSH','FSH_G','FSH_R','FSH_V','FSM','FSR','FSRND','FSRNDLN','FSRNI','FSRVD','FSRVDLN','FSRVI','Fire_Closs','GPP','GPP_CANOPY','GPP_UNDERSTORY','GROWTH_RESP','GSSHA','GSSUN','H2OCAN','H2OSFC','H2OSNO','H2OSNO_TOP','H2OSOI','HR','LAISHA','LAISUN','LITTERC_HR','LITTER_IN','LITTER_OUT','MAINT_RESP','MORTALITY_CARBONFLUX_CANOPY','MORTALITY_CARBONFLUX_UNDERSTORY','NBP','NEP','NPP','NPP_column','PARVEGLN','PBOT','PCO2','PROMOTION_CARBONFLUX','Q2M','QBOT','QCHARGE','QDRAI','QDRAI_PERCH','QDRIP','QFLOOD','QINFL','QINTR','QIRRIG','QOVER','QRGWL','QRUNOFF','QSOIL','QSOIL_ICE','QVEGE','QVEGT','RAIN','RAIN_FROM_ATM','RH2M','RSCANOPY','RSSHA','RSSUN','SABG','SABV','SCORCH_HEIGHT','SEEDS_IN','SEED_BANK','SEED_DECAY','SEED_GERMINATION','SMP','SOILC_HR','SOILICE','SOILLIQ','SOILRESIS','SOILWATER_10CM','SUM_FUEL','SWBGT','SWBGT_R','SWBGT_U','TAUX','TAUY','TBOT','TBUILD','TG','TH2OSFC','THBOT','TKE1','TLAI','TLAKE','TOTECOSYSC','TOTLITC','TOTLITC_1m','TOTLITN','TOTLITN_1m','TOTSOILICE','TOTSOILLIQ','TOTSOMC','TOTSOMC_1m','TOTSOMN','TOTSOMN_1m','TREFMNAV','TREFMXAV','TRIMMING','TSA','TSAI','TSOI','TSOI_10CM','TV','TWS','U10','U10_DUST','VOLR','VOLRMCH','WA','WBT','WBT_R','WBT_U','WIND','ZBOT','ZWT','NPP_LEAF','NPP_SEED','NPP_STEM','NPP_FROOT','NPP_CROOT','NPP_STOR','LEAF_MR','FROOT_MR','LIVECROOT_MR','LIVESTEM_MR'

    for x  in `seq 1 1 $ninst`; do
	expstr=$(printf %04d $x)
	echo $expstr
	cat > user_nl_clm <<EOF
 fsurdat = '${CLM_SURFDAT_DIR}/${CLM_USRDAT_SURDAT}'
 fates_paramfile = '/global/homes/c/cdkoven/fates_params_default_82498d5_mod2PFTs_exp1.nc'
 use_fates_inventory_init = .true.
 use_fates_planthydro = .true.
 fates_inventory_ctrl_filename = '${SITE_BASE_DIR}/bci_inv_file_list.txt'
 use_fates_ed_st3 = .false.
 hist_empty_htapes = .false.
 hist_mfilt = 60
 hist_nhtfrq = 0
 hist_fincl1 = 'ZSTAR_BY_AGE','RECRUITMENT','PFTbiomass','PATCH_AREA_BY_AGE','NPLANT_UNDERSTORY_SCLS','NPLANT_SCLS','NPLANT_SCAG','NPLANT_CANOPY_SCLS','MORTALITY_UNDERSTORY_SCLS','MORTALITY_CANOPY_SCLS','MORTALITY','M8_SCLS','M7_SCLS','M6_SCLS','M5_SCLS','M4_SCLS','M3_SCLS','M2_SCLS','M1_SCLS','LEAF_HEIGHT_DIST','LAI_UNDERSTORY_SCLS','LAI_CANOPY_SCLS','LAI_BY_AGE','FUEL_MOISTURE_NFSC','DDBH_UNDERSTORY_SCLS','DDBH_CANOPY_SCLS','CROWNAREA_CAN','CANOPY_HEIGHT_DIST','CANOPY_AREA_BY_AGE','BA_SCLS','AGB_SCLS','GROWTHFLUX_SCPF','GROWTHFLUX_FUSION_SCPF','FATES_ERRH2O_SCPF','FATES_TRAN_SCPF','FATES_ROOTUPTAKE_SCPF','FATES_ROOTUPTAKE01_SCPF','FATES_ROOTUPTAKE02_SCPF','FATES_ROOTUPTAKE03_SCPF','FATES_ROOTUPTAKE04_SCPF','FATES_ROOTUPTAKE05_SCPF','FATES_ROOTUPTAKE06_SCPF','FATES_ROOTUPTAKE07_SCPF','FATES_ROOTUPTAKE08_SCPF','FATES_ROOTUPTAKE09_SCPF','FATES_ROOTUPTAKE10_SCPF','FATES_H2OSOI_COL_SHSL','FATES_SAPFLOW_COL_SCPF','FATES_ITERH1_COL_SCPF','FATES_ITERH2_COL_SCPF','FATES_ATH_COL_SCPF','FATES_TTH_COL_SCPF','FATES_STH_COL_SCPF','FATES_LTH_COL_SCPF','FATES_AWP_COL_SCPF','FATES_TWP_COL_SCPF','FATES_SWP_COL_SCPF','FATES_LWP_COL_SCPF','FATES_AFLC_COL_SCPF','FATES_TFLC_COL_SCPF','FATES_SFLC_COL_SCPF','FATES_LFLC_COL_SCPF','FATES_BTRAN_COL_SCPF','H2OVEG','H2OVEG_DEAD','H2OVEG_RECRUIT','H2OVEG_GROWTURN_ERR','H2OVEG_PHENO_ERR','H2OVEG_HYDRO_ERR'
EOF


    cat >> user_nl_datm <<EOF
taxmode = "cycle", "cycle", "cycle"
EOF
    done

    # ./case.setup

    # HERE WE NEED TO MODIFY THE STREAM FILE (DANGER ZONE - USERS BEWARE CHANGING)
    ./preview_namelists

    for x  in `seq 1 1 $ninst`; do
    	expstr=$(printf %04d $x)
    	echo $expstr
	
    	cp $HOME/scratch/$CASE_NAME/run/datm.streams.txt.CLM1PT.CLM_USRDAT user_datm.streams.txt.CLM1PT.CLM_USRDAT
    	`sed -i '/FLDS/d' user_datm.streams.txt.CLM1PT.CLM_USRDAT`
    	`sed -i '/FLDS/d' $HOME/scratch/$CASE_NAME/run/datm.streams.txt.CLM1PT.CLM_USRDAT`
    done
    
    ./case.build
    ./case.submit


fi
