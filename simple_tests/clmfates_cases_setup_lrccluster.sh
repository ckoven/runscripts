#!/usr/bin/env bash

SRCDIR=$HOME/clmed/fates-clm/
cd ${SRCDIR}
GITHASH1=`git log -n 1 --format=%h`
cd components/clm/src/fates
GITHASH2=`git log -n 1 --format=%h`

#SETUP_CASE=ngtedv0_1x1brazil_baseline
#SETUP_CASE=ngtedv0_prescribedphys_baseline1
#SETUP_CASE=fates_1x1brazil_pairedpft_multivarsuccess_exp01_v09_lrgcmplexcln
#SETUP_CASE=ngtedv0_1x1brazil_noseedrain_thincan_ctrl_newmortroutine
# SETUP_CASE=ngtedv0_1x1brazil_noseedrain_thincan_latesuccesstry1
# SETUP_CASE=ngtedv0_1x1brazil_noseedrain_thincan_latesuccesstry2
# SETUP_CASE=ngtedv0_1x1brazil_noseedrain_thincan_latesuccesstry6
# SETUP_CASE=ngtedv0_1x1brazil_debug
#SETUP_CASE=ngtedv0_1x1brazil_mod1_thincanopies
#SETUP_CASE=ngtedv0_1x1brazil_mod2_thincanopiespt023
#SETUP_CASE=ngtedv0_1x1brazil_mod3_thincanopiespt021
#SETUP_CASE=ngtedv0_1x1brazil_satm_test
#SETUP_CASE=fates_prescribedphys_exp01
#SETUP_CASE=fates_prescribedphys_exp01b
#SETUP_CASE=fates_pairedpft_dens_btran_exp01
SETUP_CASE=fates_prescribedphys_agedistexp_control

# cp ed-clm/cime/machines/config_batch.xml ../ccsm_source/clm4_5_1_r120/cime/machines/config_batch.xml
# cp ed-clm/cime/machines/config_batch.xml ../ccsm_source/clm4_5_1_r120/cime/machines/config_batch.xml
# cp ed-clm/cime/machines/config_machines.xml ../ccsm_source/clm4_5_1_r120/cime/machines/config_machines.xml

################################################################################
if [ "${SETUP_CASE}" == "fates_1x1brazil_pairedpft_multivarsuccess_exp01_v09_lrgcmplexcln" ]; then

	CASE_NAME=${SETUP_CASE}_${GITHASH1}_${GITHASH2}
	basedir=$HOME/clmed/fates-clm/cime/scripts
    #### load_machine_files
	cd $basedir
	./create_newcase -case ${CASE_NAME} -res 1x1_brazil -compset ICLM45ED -mach lbl-lr3 -project ac_ngeet
	cd ${CASE_NAME}

	./xmlchange -file env_run.xml -id STOP_OPTION -val nyears
	./xmlchange -file env_run.xml -id STOP_N -val 250
	./xmlchange -file env_run.xml -id REST_N -val 10
	./xmlchange -file env_run.xml -id CONTINUE_RUN -val FALSE
	./xmlchange -file env_run.xml -id RESUBMIT -val 1
	./xmlchange -file env_build.xml -id DEBUG -val FALSE
	
	./xmlchange -file env_run.xml -id DIN_LOC_ROOT -val /global/home/users/cdkoven/cesm_input_data
    
	./xmlchange -file env_build.xml -id EXEROOT -val /global/scratch/cdkoven//$CASE_NAME/bld
	./xmlchange -file env_run.xml -id RUNDIR -val /global/scratch/cdkoven//$CASE_NAME/run
	./xmlchange -file env_run.xml -id DOUT_S_ROOT -val /global/scratch/cdkoven//archive/$CASE_NAME

	./xmlchange -file env_batch.xml -id JOB_WALLCLOCK_TIME -val 11:59:00
	./xmlchange -file env_run.xml -id STOP_OPTION -val nyears

	./case.setup

     cat > user_nl_clm <<EOF
fates_paramfile = '/global/home/users/cdkoven/cesm_input_data/lnd/clm2/paramdata/tropical_params_ckmod_2pfts_v9_lrgecmplexcln_19jul2017.nc'
hist_fincl1 = 'BA_SCLS', 'DEMOTION_RATE_SCLS', 'PROMOTION_RATE_SCLS', 'NPLANT_CANOPY_SCPF', 'MORTALITY_CANOPY_SCPF','NPLANT_UNDERSTORY_SCPF', 'MORTALITY_UNDERSTORY_SCPF', 'DDBH_SCPF', 'DDBH_CANOPY_SCPF', 'DDBH_UNDERSTORY_SCPF','NPLANT_SCAG','YESTERDAYCANLEV_CANOPY_SCLS', 'YESTERDAYCANLEV_UNDERSTORY_SCLS','M1_SCPF', 'M2_SCPF', 'M3_SCPF', 'M4_SCPF', 'M5_SCPF', 'M6_SCPF','GPP_CANOPY_SCPF','AR_CANOPY_SCPF','GPP_UNDERSTORY_SCPF','AR_UNDERSTORY_SCPF'
EOF

# ,'MORTALITY_CANOPY_SCAG','NPLANT_UNDERSTORY_SCAG','MORTALITY_UNDERSTORY_SCAG','DDBH_CANOPY_SCAG', 'DDBH_UNDERSTORY_SCAG','NPLANT_CANOPY_SCAG','CROWN_AREA_CANOPY_SCLS','CROWN_AREA_UNDERSTORY_SCLS','TRIMMING_CANOPY_SCLS','TRIMMING_UNDERSTORY_SCLS','BA_SCPF'

#     cat > user_nl_clm <<EOF
# fates_paramfile = '/global/home/users/cdkoven/cesm_input_data/lnd/clm2/paramdata/fates_params.presc_mort_growthmode.crownexp1.28.cmpexcln0pt1.pt0194canmort.nomaxdbh.pt02recr.nobleaf.50pctnpp.50pctundnpp.170503.nc'
# hist_empty_htapes = .true.
# hist_fincl1 = 'BA_SCLS', 'DEMOTION_RATE_SCLS', 'PROMOTION_RATE_SCLS', 'NPLANT_CANOPY_SCLS', 'MORTALITY_CANOPY_SCLS','NPLANT_UNDERSTORY_SCLS', 'MORTALITY_UNDERSTORY_SCLS', 'DDBH_SCPF', 'DDBH_CANOPY_SCPF', 'DDBH_UNDERSTORY_SCPF','NPLANT_SCAG', 'YESTERDAYCANLEV_CANOPY_SCLS', 'YESTERDAYCANLEV_UNDERSTORY_SCLS','M1_SCPF', 'M2_SCPF', 'M3_SCPF', 'M4_SCPF', 'M5_SCPF', 'M6_SCPF','RDARK_CANOPY_SCLS','RDARK_UNDERSTORY_SCLS','CARBON_BALANCE_CANOPY_SCLS','CARBON_BALANCE_UNDERSTORY_SCLS','GPP_CANOPY_SCPF','AR_CANOPY_SCPF','GPP_UNDERSTORY_SCPF','AR_UNDERSTORY_SCPF','ED_NCOHORTS','ED_NPATCHES'
# EOF

	 ./case.build
	 ./case.submit

fi


################################################################################
if [ "${SETUP_CASE}" == "fates_prescribedphys_agedistexp_control" ]; then

	CASE_NAME=${SETUP_CASE}_${GITHASH1}_${GITHASH2}
	basedir=$HOME/clmed/fates-clm/cime/scripts
    #### load_machine_files
	cd $basedir
	./create_newcase -case ${CASE_NAME} -res 1x1_brazil -compset ICLM45ED -mach lbl-lr3 -project ac_ngeet
	cd ${CASE_NAME}

	./xmlchange -file env_run.xml -id STOP_OPTION -val nyears
	./xmlchange -file env_run.xml -id STOP_N -val 150
	./xmlchange -file env_run.xml -id REST_N -val 10
	./xmlchange -file env_run.xml -id CONTINUE_RUN -val FALSE
	./xmlchange -file env_run.xml -id RESUBMIT -val 0
	./xmlchange -file env_build.xml -id DEBUG -val FALSE
	
	./xmlchange -file env_run.xml -id DIN_LOC_ROOT -val /global/home/users/cdkoven/cesm_input_data
    
	./xmlchange -file env_build.xml -id EXEROOT -val /global/scratch/cdkoven//$CASE_NAME/bld
	./xmlchange -file env_run.xml -id RUNDIR -val /global/scratch/cdkoven//$CASE_NAME/run
	./xmlchange -file env_run.xml -id DOUT_S_ROOT -val /global/scratch/cdkoven//archive/$CASE_NAME

	./xmlchange -file env_batch.xml -id JOB_WALLCLOCK_TIME -val 11:59:00
	./xmlchange -file env_run.xml -id STOP_OPTION -val nyears

	./case.setup

     cat > user_nl_clm <<EOF
use_fates_ed_prescribed_phys = .true.
fates_paramfile = '/global/home/users/cdkoven/cesm_input_data/lnd/clm2/paramdata/fates_params_2troppftclones.prescribedphys.c170911.nc'
hist_fincl1 = 'BA_SCLS', 'DEMOTION_RATE_SCLS', 'PROMOTION_RATE_SCLS', 'NPLANT_CANOPY_SCLS', 'MORTALITY_CANOPY_SCLS','NPLANT_UNDERSTORY_SCLS', 'MORTALITY_UNDERSTORY_SCLS', 'DDBH_SCPF', 'DDBH_CANOPY_SCPF', 'DDBH_UNDERSTORY_SCPF','NPLANT_SCAG', 'YESTERDAYCANLEV_CANOPY_SCLS', 'YESTERDAYCANLEV_UNDERSTORY_SCLS','PATCH_AREA_BY_AGE','CANOPY_AREA_BY_AGE','NPATCH_BY_AGE'
EOF

#fates_paramfile = '/global/home/users/cdkoven/cesm_input_data/lnd/clm2/paramdata/tropical_params_ckmod_thincanopiespt021_05jul2017.nc'

#     cat > user_nl_clm <<EOF
# fates_paramfile = '/global/home/users/cdkoven/cesm_input_data/lnd/clm2/paramdata/fates_params.presc_mort_growthmode.crownexp1.28.cmpexcln0pt1.pt0194canmort.nomaxdbh.pt02recr.nobleaf.50pctnpp.50pctundnpp.170503.nc'
# hist_empty_htapes = .true.
# hist_fincl1 = 'BA_SCLS', 'DEMOTION_RATE_SCLS', 'PROMOTION_RATE_SCLS', 'NPLANT_CANOPY_SCLS', 'MORTALITY_CANOPY_SCLS','NPLANT_UNDERSTORY_SCLS', 'MORTALITY_UNDERSTORY_SCLS', 'DDBH_SCPF', 'DDBH_CANOPY_SCPF', 'DDBH_UNDERSTORY_SCPF','NPLANT_SCAG', 'YESTERDAYCANLEV_CANOPY_SCLS', 'YESTERDAYCANLEV_UNDERSTORY_SCLS','M1_SCPF', 'M2_SCPF', 'M3_SCPF', 'M4_SCPF', 'M5_SCPF', 'M6_SCPF','RDARK_CANOPY_SCLS','RDARK_UNDERSTORY_SCLS','CARBON_BALANCE_CANOPY_SCLS','CARBON_BALANCE_UNDERSTORY_SCLS','GPP_CANOPY_SCPF','AR_CANOPY_SCPF','GPP_UNDERSTORY_SCPF','AR_UNDERSTORY_SCPF','ED_NCOHORTS','ED_NPATCHES'
# EOF

	 ./case.build
	 ./case.submit

fi


################################################################################
if [ "${SETUP_CASE}" == "fates_pairedpft_dens_btran_exp01" ]; then

    #number_array=(00)
    # 01
    #number_array=(02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29)
    #number_array=(30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 
    number_array=(50 51 52 53 54 55 56 57 58 59)
    for i in ${number_array[@]}; do
	CASE_NAME=${SETUP_CASE}_${GITHASH1}_${GITHASH2}_v${i}
	basedir=$HOME/clmed/fates-clm/cime/scripts
	
	cd $basedir
#	./create_newcase -case ${CASE_NAME} -res 1x1_brazil -compset ICLM45ED -mach lbl-lr2 -project ac_ngeet
	./create_clone -case ${CASE_NAME} -clone  /global/home/users/cdkoven/clmed/fates-clm/cime/scripts/fates_pairedpft_dens_btran_exp01_3a5d965_791071f_v00 -project ac_ngeet --keepexe
	cd ${CASE_NAME}

	./xmlchange -file env_run.xml -id STOP_OPTION -val nyears
	./xmlchange -file env_run.xml -id STOP_N -val 150
	./xmlchange -file env_run.xml -id REST_N -val 10
	./xmlchange -file env_run.xml -id CONTINUE_RUN -val FALSE
	
	./xmlchange -file env_run.xml -id DIN_LOC_ROOT -val /global/home/users/cdkoven/cesm_input_data
	
	./xmlchange -file env_build.xml -id EXEROOT -val /global/scratch/cdkoven//$CASE_NAME/bld
	./xmlchange -file env_run.xml -id RUNDIR -val /global/scratch/cdkoven//$CASE_NAME/run
	./xmlchange -file env_run.xml -id DOUT_S_ROOT -val /global/scratch/cdkoven//archive/$CASE_NAME
	
	./xmlchange -file env_batch.xml -id JOB_WALLCLOCK_TIME -val 11:59:00
	
	#./case.setup
	
	cat > user_nl_clm <<EOF
hist_fincl1 = 'BA_SCLS','DEMOTION_RATE_SCLS','PROMOTION_RATE_SCLS','NPLANT_CANOPY_SCLS','MORTALITY_CANOPY_SCLS','NPLANT_UNDERSTORY_SCLS','MORTALITY_UNDERSTORY_SCLS','NPLANT_SCAG','YESTERDAYCANLEV_CANOPY_SCLS','YESTERDAYCANLEV_UNDERSTORY_SCLS','CROWN_AREA_CANOPY_SCLS','CROWN_AREA_UNDERSTORY_SCLS','NPLANT_SCPF','MORTALITY_CANOPY_SCPF','MORTALITY_UNDERSTORY_SCPF','DDBH_CANOPY_SCPF','DDBH_UNDERSTORY_SCPF'
fates_paramfile = '/global/home/users/cdkoven/cesm_input_data/lnd/clm2/paramdata/fatesparams.cdk.successionalpft.bmortdens.double.v${i}.c170702.nc'
EOF
	./case.build
	./case.submit
    done
fi

################################################################################
if [ "${SETUP_CASE}" == "fates_prescribedphys_exp01b" ]; then

    canmort_array=(0.01 0.02 0.03 0.04 0.05)
    undmort_array=(0.0 0.01 0.02 0.03 0.04 0.05)
    for i in ${canmort_array[@]}; do
	for j in ${undmort_array[@]}; do 
	    CASE_NAME=${SETUP_CASE}_${GITHASH1}_${GITHASH2}_cm${i//./_}_um${j//./_}
	    PRIOR_CASE_NAME=fates_prescribedphys_exp01_d1b0752_4374ee8_cm${i//./_}_um${j//./_}
	    basedir=$HOME/clmed/fates-clm/cime/scripts

	    cd $basedir
	    ./create_newcase -case ${CASE_NAME} -res 1x1_brazil -compset ICLM45ED -mach lbl-lr2 -project ac_ngeet
	    cd ${CASE_NAME}

	    ./xmlchange -file env_run.xml -id STOP_OPTION -val nyears
	    ./xmlchange -file env_run.xml -id STOP_N -val 150
	    ./xmlchange -file env_run.xml -id REST_N -val 10
	    ./xmlchange -file env_run.xml -id CONTINUE_RUN -val FALSE
	    
	    ./xmlchange -file env_run.xml -id DIN_LOC_ROOT -val /global/home/users/cdkoven/cesm_input_data
	    
	    ./xmlchange -file env_build.xml -id EXEROOT -val /global/scratch/cdkoven//$CASE_NAME/bld
	    ./xmlchange -file env_run.xml -id RUNDIR -val /global/scratch/cdkoven//$CASE_NAME/run
	    ./xmlchange -file env_run.xml -id DOUT_S_ROOT -val /global/scratch/cdkoven//archive/$CASE_NAME

	    ./xmlchange -file env_batch.xml -id JOB_WALLCLOCK_TIME -val 11:59:00
	    ./xmlchange -file env_run.xml -id STOP_OPTION -val nyears

	    ./case.setup

	    cat > user_nl_clm <<EOF
hist_fincl1 = 'BA_SCLS','DEMOTION_RATE_SCLS','PROMOTION_RATE_SCLS','NPLANT_CANOPY_SCLS','MORTALITY_CANOPY_SCLS','NPLANT_UNDERSTORY_SCLS','MORTALITY_UNDERSTORY_SCLS','DDBH_CANOPY_SCLS','DDBH_UNDERSTORY_SCLS','NPLANT_SCAG','YESTERDAYCANLEV_CANOPY_SCLS','YESTERDAYCANLEV_UNDERSTORY_SCLS','CROWN_AREA_CANOPY_SCLS','CROWN_AREA_UNDERSTORY_SCLS'
fates_paramfile = '/global/home/users/cdkoven/cesm_input_data/lnd/clm2/paramdata/fates_params.perturbedmortexp01.npp125pct.170607.cmort_${i}_umortinc_${j}.nc'
hist_fexcl1 = 'AR','HR','CBALANCE_ERROR_BGC','LITR1C','AR_CANOPY','AR_UNDERSTORY','GROWTH_RESP','HR_vr','MAINT_RESP','SOMHR','LITR2C','LITR3C','LITHR','CBALANCE_ERROR_TOTAL'
finidat = '/global/home/users/cdkoven/scratch/archive/${PRIOR_CASE_NAME}/rest/0301-01-01-00000/${PRIOR_CASE_NAME}.clm2.r.0301-01-01-00000.nc'
EOF
	    ./case.build
	    ./case.submit
	done
    done
fi

################################################################################
if [ "${SETUP_CASE}" == "fates_prescribedphys_exp01" ]; then

    canmort_array=(0.01 0.02 0.03 0.04 0.05)
    undmort_array=(0.0 0.01 0.02 0.03 0.04 0.05)
    for i in ${canmort_array[@]}; do
	for j in ${undmort_array[@]}; do 
	    CASE_NAME=${SETUP_CASE}_${GITHASH1}_${GITHASH2}_cm${i//./_}_um${j//./_}
	    basedir=$HOME/clmed/fates-clm/cime/scripts

	    cd $basedir
	    ./create_newcase -case ${CASE_NAME} -res 1x1_brazil -compset ICLM45ED -mach lbl-lr2 -project ac_ngeet
	    cd ${CASE_NAME}

	    ./xmlchange -file env_run.xml -id STOP_OPTION -val nyears
	    ./xmlchange -file env_run.xml -id STOP_N -val 150
	    ./xmlchange -file env_run.xml -id REST_N -val 10
	    ./xmlchange -file env_run.xml -id CONTINUE_RUN -val FALSE
	    
	    ./xmlchange -file env_run.xml -id DIN_LOC_ROOT -val /global/home/users/cdkoven/cesm_input_data
	    
	    ./xmlchange -file env_build.xml -id EXEROOT -val /global/scratch/cdkoven//$CASE_NAME/bld
	    ./xmlchange -file env_run.xml -id RUNDIR -val /global/scratch/cdkoven//$CASE_NAME/run
	    ./xmlchange -file env_run.xml -id DOUT_S_ROOT -val /global/scratch/cdkoven//archive/$CASE_NAME

	    ./xmlchange -file env_batch.xml -id JOB_WALLCLOCK_TIME -val 11:59:00
	    ./xmlchange -file env_run.xml -id STOP_OPTION -val nyears

	    ./case.setup

	    cat > user_nl_clm <<EOF
hist_fincl1 = 'BA_SCLS','DEMOTION_RATE_SCLS','PROMOTION_RATE_SCLS','NPLANT_CANOPY_SCLS','MORTALITY_CANOPY_SCLS','NPLANT_UNDERSTORY_SCLS','MORTALITY_UNDERSTORY_SCLS','DDBH_CANOPY_SCLS','DDBH_UNDERSTORY_SCLS','NPLANT_SCAG','YESTERDAYCANLEV_CANOPY_SCLS','YESTERDAYCANLEV_UNDERSTORY_SCLS','CROWN_AREA_CANOPY_SCLS','CROWN_AREA_UNDERSTORY_SCLS'
fates_paramfile = '/global/home/users/cdkoven/cesm_input_data/lnd/clm2/paramdata/fates_params.perturbedmortexp01.170526.cmort_${i}_umortinc_${j}.nc'
EOF
	    ./case.build
	    ./case.submit
	done
    done
fi

################################################################################
if [ "${SETUP_CASE}" == "ngtedv0_prescribedphys_baseline1" ]; then

	CASE_NAME=${SETUP_CASE}_${GITHASH1}_${GITHASH2}
	basedir=$HOME/clmed/fates-clm/cime/scripts
    #### load_machine_files
	cd $basedir
	./create_newcase -case ${CASE_NAME} -res 1x1_brazil -compset ICLM45ED -mach lbl-lr2 -project ac_ngeet
	cd ${CASE_NAME}

	./xmlchange -file env_run.xml -id STOP_OPTION -val nyears
	./xmlchange -file env_run.xml -id STOP_N -val 50
	./xmlchange -file env_run.xml -id REST_N -val 10
	./xmlchange -file env_run.xml -id CONTINUE_RUN -val FALSE
	
	./xmlchange -file env_run.xml -id DIN_LOC_ROOT -val /global/home/users/cdkoven/cesm_input_data
    
	./xmlchange -file env_build.xml -id EXEROOT -val /global/scratch/cdkoven//$CASE_NAME/bld
	./xmlchange -file env_run.xml -id RUNDIR -val /global/scratch/cdkoven//$CASE_NAME/run
	./xmlchange -file env_run.xml -id DOUT_S_ROOT -val /global/scratch/cdkoven//archive/$CASE_NAME

	./xmlchange -file env_batch.xml -id JOB_WALLCLOCK_TIME -val 11:59:00
	./xmlchange -file env_run.xml -id STOP_OPTION -val nyears

	./case.setup

     cat > user_nl_clm <<EOF
hist_fincl1 = 'BA_SCLS','DEMOTION_RATE_SCLS','PROMOTION_RATE_SCLS','NPLANT_CANOPY_SCLS','MORTALITY_CANOPY_SCLS','NPLANT_UNDERSTORY_SCLS','MORTALITY_UNDERSTORY_SCLS','DDBH_CANOPY_SCLS','DDBH_UNDERSTORY_SCLS','NPLANT_SCAG','YESTERDAYCANLEV_CANOPY_SCLS','YESTERDAYCANLEV_UNDERSTORY_SCLS','CROWN_AREA_CANOPY_SCLS','CROWN_AREA_UNDERSTORY_SCLS'
fates_paramfile = '/global/home/users/cdkoven/cesm_input_data/lnd/clm2/paramdata/fates_params.presc_mort_growthmode.crownexp1.28.strictppa.pt0194canmort.nomaxdbh.pt02recr.nobleaf.50pctnpp.50pctundnpp.170503.nc'
EOF
	 ./case.build
	 ./case.submit

fi


################################################################################
if [ "${SETUP_CASE}" == "ngtedv0_1x1brazil_baseline" ]; then

	CASE_NAME=${SETUP_CASE}_${GITHASH1}_${GITHASH2}
	basedir=$HOME/clmed/fates-clm/cime/scripts
    #### load_machine_files
	cd $basedir
	./create_newcase -case ${CASE_NAME} -res 1x1_brazil -compset ICLM45ED -mach lbl-lr2 -project ac_ngeet
	cd ${CASE_NAME}

	./xmlchange -file env_run.xml -id STOP_OPTION -val nyears
	./xmlchange -file env_run.xml -id STOP_N -val 10
	./xmlchange -file env_run.xml -id REST_N -val 10
	./xmlchange -file env_run.xml -id CONTINUE_RUN -val FALSE
	
	./xmlchange -file env_run.xml -id DIN_LOC_ROOT -val /global/home/users/cdkoven/cesm_input_data
    
	./xmlchange -file env_build.xml -id EXEROOT -val /global/scratch/cdkoven//$CASE_NAME/bld
	./xmlchange -file env_run.xml -id RUNDIR -val /global/scratch/cdkoven//$CASE_NAME/run
	./xmlchange -file env_run.xml -id DOUT_S_ROOT -val /global/scratch/cdkoven//archive/$CASE_NAME

	./xmlchange -file env_batch.xml -id JOB_WALLCLOCK_TIME -val 11:59:00
	./xmlchange -file env_run.xml -id STOP_OPTION -val nyears
	./xmlchange -file env_run.xml -id RESUBMIT -val 0

	./case.setup

#      cat > user_nl_clm <<EOF
# hist_fincl1 = 'BA_SCLS', 'DEMOTION_RATE_SCLS', 'PROMOTION_RATE_SCLS', 'NPLANT_CANOPY_SCLS', 'MORTALITY_CANOPY_SCLS','NPLANT_UNDERSTORY_SCLS', 'MORTALITY_UNDERSTORY_SCLS', 'DDBH_SCPF', 'DDBH_CANOPY_SCPF', 'DDBH_UNDERSTORY_SCPF','NPLANT_SCAG', 'YESTERDAYCANLEV_CANOPY_SCLS', 'YESTERDAYCANLEV_UNDERSTORY_SCLS','M1_SCPF', 'M2_SCPF', 'M3_SCPF', 'M4_SCPF', 'M5_SCPF', 'M6_SCPF','RDARK_CANOPY_SCLS','RDARK_UNDERSTORY_SCLS','CARBON_BALANCE_CANOPY_SCLS','CARBON_BALANCE_UNDERSTORY_SCLS','GPP_CANOPY_SCPF','AR_CANOPY_SCPF','GPP_UNDERSTORY_SCPF','AR_UNDERSTORY_SCPF','TRIMMING_CANOPY_SCLS','TRIMMING_UNDERSTORY_SCLS','CROWN_AREA_CANOPY_SCLS','CROWN_AREA_UNDERSTORY_SCLS','TS_NET_UPTAKE_CNLF','YEAR_NET_UPTAKE_CNLF','CROWNAREA_CNLF','LEAF_MD_CANOPY_SCLS','ROOT_MD_CANOPY_SCLS','CARBON_BALANCE_CANOPY_SCLS','SEED_PROD_CANOPY_SCLS','DBALIVEDT_CANOPY_SCLS','DBDEADDT_CANOPY_SCLS','DBSTOREDT_CANOPY_SCLS','STORAGE_FLUX_CANOPY_SCLS','NPP_LEAF_CANOPY_SCLS','NPP_FROOT_CANOPY_SCLS','NPP_BSW_CANOPY_SCLS','NPP_BDEAD_CANOPY_SCLS','NPP_BSEED_CANOPY_SCLS','NPP_STORE_CANOPY_SCLS','RDARK_CANOPY_SCLS','LIVESTEM_MR_CANOPY_SCLS','LIVECROOT_MR_CANOPY_SCLS','FROOT_MR_CANOPY_SCLS','RESP_G_CANOPY_SCLS','RESP_M_CANOPY_SCLS','LEAF_MD_UNDERSTORY_SCLS','ROOT_MD_UNDERSTORY_SCLS','CARBON_BALANCE_UNDERSTORY_SCLS','SEED_PROD_UNDERSTORY_SCLS','DBALIVEDT_UNDERSTORY_SCLS','DBDEADDT_UNDERSTORY_SCLS','DBSTOREDT_UNDERSTORY_SCLS','STORAGE_FLUX_UNDERSTORY_SCLS','NPP_LEAF_UNDERSTORY_SCLS','NPP_FROOT_UNDERSTORY_SCLS','NPP_BSW_UNDERSTORY_SCLS','NPP_BDEAD_UNDERSTORY_SCLS','NPP_BSEED_UNDERSTORY_SCLS','NPP_STORE_UNDERSTORY_SCLS','RDARK_UNDERSTORY_SCLS','LIVESTEM_MR_UNDERSTORY_SCLS','LIVECROOT_MR_UNDERSTORY_SCLS','FROOT_MR_UNDERSTORY_SCLS','RESP_G_UNDERSTORY_SCLS','RESP_M_UNDERSTORY_SCLS','BLEAF_UNDERSTORY_SCPF','BLEAF_CANOPY_SCPF','BSTOR_CANOPY_SCPF','BSTOR_UNDERSTORY_SCPF'
# fates_paramfile = '/global/home/users/cdkoven/cesm_input_data/lnd/clm2/paramdata/tropical_params_ckmod_26Apr2017_v7.nc'
# finidat = '/global/home/users/cdkoven/scratch/restfiles/ngtedv0_1x1brazil_longrun5_cush2_cbh2blexp1pt3_dbh2blcoefpt021_9ee8751_bcc5865.clm2.r.0151-01-01-00000.nc'
# EOF

#     cat > user_nl_clm <<EOF
#  hist_fincl1 = 'BA_SCLS', 'DEMOTION_RATE_SCLS', 'PROMOTION_RATE_SCLS', 'NPLANT_CANOPY_SCLS', 'MORTALITY_CANOPY_SCLS','NPLANT_UNDERSTORY_SCLS', 'MORTALITY_UNDERSTORY_SCLS', 'DDBH_SCPF', 'DDBH_CANOPY_SCPF', 'DDBH_UNDERSTORY_SCPF','NPLANT_SCAG', 'YESTERDAYCANLEV_CANOPY_SCLS', 'YESTERDAYCANLEV_UNDERSTORY_SCLS','M1_SCPF', 'M2_SCPF', 'M3_SCPF', 'M4_SCPF', 'M5_SCPF', 'M6_SCPF','RDARK_CANOPY_SCLS','RDARK_UNDERSTORY_SCLS','CARBON_BALANCE_CANOPY_SCLS','CARBON_BALANCE_UNDERSTORY_SCLS','GPP_CANOPY_SCPF','AR_CANOPY_SCPF','GPP_UNDERSTORY_SCPF','AR_UNDERSTORY_SCPF','TRIMMING_CANOPY_SCLS','TRIMMING_UNDERSTORY_SCLS','CROWN_AREA_CANOPY_SCLS','CROWN_AREA_UNDERSTORY_SCLS'
# fates_paramfile = '/global/home/users/cdkoven/cesm_input_data/lnd/clm2/paramdata/tropical_params_ckmod_26Apr2017_v7.nc'
# finidat = '/global/home/users/cdkoven/scratch/restfiles/ngtedv0_1x1brazil_longrun5_cush2_cbh2blexp1pt3_dbh2blcoefpt021_9ee8751_bcc5865.clm2.r.0151-01-01-00000.nc'
# EOF



	 ./case.build
	 ./case.submit

fi

################################################################################
if [ "${SETUP_CASE}" == "ngtedv0_1x1brazil_mod1_thincanopies" ]; then
#if [ "${SETUP_CASE}" == "ngtedv0_1x1brazil_mod2_thincanopiespt023" ]; then
#if [ "${SETUP_CASE}" == "ngtedv0_1x1brazil_mod3_thincanopiespt021" ]; then

	CASE_NAME=${SETUP_CASE}_${GITHASH1}_${GITHASH2}
	basedir=$HOME/clmed/fates-clm/cime/scripts
    #### load_machine_files
	cd $basedir
	./create_newcase -case ${CASE_NAME} -res 1x1_brazil -compset ICLM45ED -mach lbl-lr2 -project ac_ngeet
	cd ${CASE_NAME}

	./xmlchange -file env_run.xml -id STOP_OPTION -val nyears
	./xmlchange -file env_run.xml -id STOP_N -val 150
	./xmlchange -file env_run.xml -id REST_N -val 10
	./xmlchange -file env_run.xml -id CONTINUE_RUN -val FALSE
	./xmlchange -file env_run.xml -id RESUBMIT -val 0
	./xmlchange -file env_build.xml -id DEBUG -val TRUE
	
	./xmlchange -file env_run.xml -id DIN_LOC_ROOT -val /global/home/users/cdkoven/cesm_input_data
    
	./xmlchange -file env_build.xml -id EXEROOT -val /global/scratch/cdkoven//$CASE_NAME/bld
	./xmlchange -file env_run.xml -id RUNDIR -val /global/scratch/cdkoven//$CASE_NAME/run
	./xmlchange -file env_run.xml -id DOUT_S_ROOT -val /global/scratch/cdkoven//archive/$CASE_NAME

	./xmlchange -file env_batch.xml -id JOB_WALLCLOCK_TIME -val 11:59:00
	./xmlchange -file env_run.xml -id STOP_OPTION -val nyears

	./case.setup

     cat > user_nl_clm <<EOF
finidat='/global/home/users/cdkoven/scratch/ngtedv0_1x1brazil_mod1_thincanopies_6dc576d_791071f/run/ngtedv0_1x1brazil_mod1_thincanopies_6dc576d_791071f.clm2.r.0061-01-01-00000.nc' 
fates_paramfile = '/global/home/users/cdkoven/cesm_input_data/lnd/clm2/paramdata/tropical_params_ckmod_thincanopies_05jul2017.nc'
hist_fincl1 = 'BA_SCLS', 'DEMOTION_RATE_SCLS', 'PROMOTION_RATE_SCLS', 'NPLANT_CANOPY_SCLS', 'MORTALITY_CANOPY_SCLS','NPLANT_UNDERSTORY_SCLS', 'MORTALITY_UNDERSTORY_SCLS', 'DDBH_SCPF', 'DDBH_CANOPY_SCPF', 'DDBH_UNDERSTORY_SCPF','NPLANT_SCAG', 'YESTERDAYCANLEV_CANOPY_SCLS', 'YESTERDAYCANLEV_UNDERSTORY_SCLS','M1_SCPF', 'M2_SCPF', 'M3_SCPF', 'M4_SCPF', 'M5_SCPF', 'M6_SCPF','RDARK_CANOPY_SCLS','RDARK_UNDERSTORY_SCLS','CARBON_BALANCE_CANOPY_SCLS','CARBON_BALANCE_UNDERSTORY_SCLS','GPP_CANOPY_SCPF','AR_CANOPY_SCPF','GPP_UNDERSTORY_SCPF','AR_UNDERSTORY_SCPF','MORTALITY_CANOPY_SCAG','NPLANT_UNDERSTORY_SCAG','MORTALITY_UNDERSTORY_SCAG','DDBH_CANOPY_SCAG', 'DDBH_UNDERSTORY_SCAG','NPLANT_CANOPY_SCAG','CROWN_AREA_CANOPY_SCLS','CROWN_AREA_UNDERSTORY_SCLS','LEAF_MD_CANOPY_SCLS','ROOT_MD_CANOPY_SCLS','CARBON_BALANCE_CANOPY_SCLS','SEED_PROD_CANOPY_SCLS','DBALIVEDT_CANOPY_SCLS','DBDEADDT_CANOPY_SCLS','DBSTOREDT_CANOPY_SCLS','STORAGE_FLUX_CANOPY_SCLS','NPP_LEAF_CANOPY_SCLS','NPP_FROOT_CANOPY_SCLS','NPP_BSW_CANOPY_SCLS','NPP_BDEAD_CANOPY_SCLS','NPP_BSEED_CANOPY_SCLS','NPP_STORE_CANOPY_SCLS','LIVESTEM_MR_CANOPY_SCLS','LIVECROOT_MR_CANOPY_SCLS','FROOT_MR_CANOPY_SCLS','RESP_G_CANOPY_SCLS','RESP_M_CANOPY_SCLS','LEAF_MD_UNDERSTORY_SCLS','ROOT_MD_UNDERSTORY_SCLS','CARBON_BALANCE_UNDERSTORY_SCLS','SEED_PROD_UNDERSTORY_SCLS','DBALIVEDT_UNDERSTORY_SCLS','DBDEADDT_UNDERSTORY_SCLS','DBSTOREDT_UNDERSTORY_SCLS','STORAGE_FLUX_UNDERSTORY_SCLS','NPP_LEAF_UNDERSTORY_SCLS','NPP_FROOT_UNDERSTORY_SCLS','NPP_BSW_UNDERSTORY_SCLS','NPP_BDEAD_UNDERSTORY_SCLS','NPP_BSEED_UNDERSTORY_SCLS','NPP_STORE_UNDERSTORY_SCLS','LIVESTEM_MR_UNDERSTORY_SCLS','LIVECROOT_MR_UNDERSTORY_SCLS','FROOT_MR_UNDERSTORY_SCLS','RESP_G_UNDERSTORY_SCLS','RESP_M_UNDERSTORY_SCLS'
EOF

#fates_paramfile = '/global/home/users/cdkoven/cesm_input_data/lnd/clm2/paramdata/tropical_params_ckmod_thincanopiespt021_05jul2017.nc'

#     cat > user_nl_clm <<EOF
# fates_paramfile = '/global/home/users/cdkoven/cesm_input_data/lnd/clm2/paramdata/fates_params.presc_mort_growthmode.crownexp1.28.cmpexcln0pt1.pt0194canmort.nomaxdbh.pt02recr.nobleaf.50pctnpp.50pctundnpp.170503.nc'
# hist_empty_htapes = .true.
# hist_fincl1 = 'BA_SCLS', 'DEMOTION_RATE_SCLS', 'PROMOTION_RATE_SCLS', 'NPLANT_CANOPY_SCLS', 'MORTALITY_CANOPY_SCLS','NPLANT_UNDERSTORY_SCLS', 'MORTALITY_UNDERSTORY_SCLS', 'DDBH_SCPF', 'DDBH_CANOPY_SCPF', 'DDBH_UNDERSTORY_SCPF','NPLANT_SCAG', 'YESTERDAYCANLEV_CANOPY_SCLS', 'YESTERDAYCANLEV_UNDERSTORY_SCLS','M1_SCPF', 'M2_SCPF', 'M3_SCPF', 'M4_SCPF', 'M5_SCPF', 'M6_SCPF','RDARK_CANOPY_SCLS','RDARK_UNDERSTORY_SCLS','CARBON_BALANCE_CANOPY_SCLS','CARBON_BALANCE_UNDERSTORY_SCLS','GPP_CANOPY_SCPF','AR_CANOPY_SCPF','GPP_UNDERSTORY_SCPF','AR_UNDERSTORY_SCPF','ED_NCOHORTS','ED_NPATCHES'
# EOF

	 ./case.build
	 ./case.submit

fi
################################################################################
if [ "${SETUP_CASE}" == "ngtedv0_1x1brazil_noseedrain_thincan_ctrl_newmortroutine" ]; then
#if [ "${SETUP_CASE}" == "ngtedv0_1x1brazil_noseedrain_thincan_latesuccesstry1" ]; then
#if [ "${SETUP_CASE}" == "ngtedv0_1x1brazil_noseedrain_thincan_latesuccesstry2" ]; then
#if [ "${SETUP_CASE}" == "ngtedv0_1x1brazil_noseedrain_thincan_latesuccesstry3" ]; then
#if [ "${SETUP_CASE}" == "ngtedv0_1x1brazil_noseedrain_thincan_latesuccesstry4" ]; then
#if [ "${SETUP_CASE}" == "ngtedv0_1x1brazil_noseedrain_thincan_latesuccesstry5" ]; then
#if [ "${SETUP_CASE}" == "ngtedv0_1x1brazil_noseedrain_thincan_latesuccesstry6" ]; then

	CASE_NAME=${SETUP_CASE}_${GITHASH1}_${GITHASH2}
	basedir=$HOME/clmed/fates-clm/cime/scripts
    #### load_machine_files
	cd $basedir
	./create_newcase -case ${CASE_NAME} -res 1x1_brazil -compset ICLM45ED -mach lbl-lr3 -project ac_ngeet
	cd ${CASE_NAME}

	./xmlchange -file env_run.xml -id STOP_OPTION -val nyears
	./xmlchange -file env_run.xml -id STOP_N -val 100
	./xmlchange -file env_run.xml -id REST_N -val 1
	./xmlchange -file env_run.xml -id CONTINUE_RUN -val FALSE
	./xmlchange -file env_run.xml -id RESUBMIT -val 0
	./xmlchange -file env_build.xml -id DEBUG -val TRUE
	
	./xmlchange -file env_run.xml -id DIN_LOC_ROOT -val /global/home/users/cdkoven/cesm_input_data
    
	./xmlchange -file env_build.xml -id EXEROOT -val /global/scratch/cdkoven//$CASE_NAME/bld
	./xmlchange -file env_run.xml -id RUNDIR -val /global/scratch/cdkoven//$CASE_NAME/run
	./xmlchange -file env_run.xml -id DOUT_S_ROOT -val /global/scratch/cdkoven//archive/$CASE_NAME

	./xmlchange -file env_batch.xml -id JOB_WALLCLOCK_TIME -val 11:59:00
	./xmlchange -file env_run.xml -id STOP_OPTION -val nyears

	./case.setup


#      cat > user_nl_clm <<EOF
# finidat='/global/home/users/cdkoven/scratch/ngtedv0_1x1brazil_control_6dc576d_791071f/run/ngtedv0_1x1brazil_control_6dc576d_791071f.clm2.r.0061-01-01-00000.nc'
# fates_paramfile = '/global/home/users/cdkoven/cesm_input_data/lnd/clm2/paramdata/tropical_params_ckmod_thincanopies_noseedrain_12jul2017.nc'
# hist_fincl2 = 'QVEGT','TV'
# hist_nhtfrq            = 0,1
# hist_mfilt             = 1,17520
# EOF

     cat > user_nl_clm <<EOF
finidat='/global/home/users/cdkoven/scratch/ngtedv0_1x1brazil_control_6dc576d_791071f/run/ngtedv0_1x1brazil_control_6dc576d_791071f.clm2.r.0061-01-01-00000.nc'
fates_paramfile = '/global/home/users/cdkoven/cesm_input_data/lnd/clm2/paramdata/tropical_params_ckmod_thincanopies_noseedrain_12jul2017.nc'
hist_fincl1 = 'BA_SCLS', 'DEMOTION_RATE_SCLS', 'PROMOTION_RATE_SCLS', 'NPLANT_CANOPY_SCLS', 'MORTALITY_CANOPY_SCLS','NPLANT_UNDERSTORY_SCLS', 'MORTALITY_UNDERSTORY_SCLS', 'DDBH_SCPF', 'DDBH_CANOPY_SCPF', 'DDBH_UNDERSTORY_SCPF','NPLANT_SCAG', 'YESTERDAYCANLEV_CANOPY_SCLS', 'YESTERDAYCANLEV_UNDERSTORY_SCLS','M1_SCPF', 'M2_SCPF', 'M3_SCPF', 'M4_SCPF', 'M5_SCPF', 'M6_SCPF','RDARK_CANOPY_SCLS','RDARK_UNDERSTORY_SCLS','CARBON_BALANCE_CANOPY_SCLS','CARBON_BALANCE_UNDERSTORY_SCLS','GPP_CANOPY_SCPF','AR_CANOPY_SCPF','GPP_UNDERSTORY_SCPF','AR_UNDERSTORY_SCPF','MORTALITY_CANOPY_SCAG','NPLANT_UNDERSTORY_SCAG','MORTALITY_UNDERSTORY_SCAG','DDBH_CANOPY_SCAG', 'DDBH_UNDERSTORY_SCAG','NPLANT_CANOPY_SCAG','CROWN_AREA_CANOPY_SCLS','CROWN_AREA_UNDERSTORY_SCLS','LEAF_MD_CANOPY_SCLS','ROOT_MD_CANOPY_SCLS','CARBON_BALANCE_CANOPY_SCLS','SEED_PROD_CANOPY_SCLS','DBALIVEDT_CANOPY_SCLS','DBDEADDT_CANOPY_SCLS','DBSTOREDT_CANOPY_SCLS','STORAGE_FLUX_CANOPY_SCLS','NPP_LEAF_CANOPY_SCLS','NPP_FROOT_CANOPY_SCLS','NPP_BSW_CANOPY_SCLS','NPP_BDEAD_CANOPY_SCLS','NPP_BSEED_CANOPY_SCLS','NPP_STORE_CANOPY_SCLS','LIVESTEM_MR_CANOPY_SCLS','LIVECROOT_MR_CANOPY_SCLS','FROOT_MR_CANOPY_SCLS','RESP_G_CANOPY_SCLS','RESP_M_CANOPY_SCLS','LEAF_MD_UNDERSTORY_SCLS','ROOT_MD_UNDERSTORY_SCLS','CARBON_BALANCE_UNDERSTORY_SCLS','SEED_PROD_UNDERSTORY_SCLS','DBALIVEDT_UNDERSTORY_SCLS','DBDEADDT_UNDERSTORY_SCLS','DBSTOREDT_UNDERSTORY_SCLS','STORAGE_FLUX_UNDERSTORY_SCLS','NPP_LEAF_UNDERSTORY_SCLS','NPP_FROOT_UNDERSTORY_SCLS','NPP_BSW_UNDERSTORY_SCLS','NPP_BDEAD_UNDERSTORY_SCLS','NPP_BSEED_UNDERSTORY_SCLS','NPP_STORE_UNDERSTORY_SCLS','LIVESTEM_MR_UNDERSTORY_SCLS','LIVECROOT_MR_UNDERSTORY_SCLS','FROOT_MR_UNDERSTORY_SCLS','RESP_G_UNDERSTORY_SCLS','RESP_M_UNDERSTORY_SCLS','TRIMMING_CANOPY_SCLS','TRIMMING_UNDERSTORY_SCLS'
EOF

#     cat > user_nl_clm <<EOF
# fates_paramfile = '/global/home/users/cdkoven/cesm_input_data/lnd/clm2/paramdata/fates_params.presc_mort_growthmode.crownexp1.28.cmpexcln0pt1.pt0194canmort.nomaxdbh.pt02recr.nobleaf.50pctnpp.50pctundnpp.170503.nc'
# hist_empty_htapes = .true.
# hist_fincl1 = 'BA_SCLS', 'DEMOTION_RATE_SCLS', 'PROMOTION_RATE_SCLS', 'NPLANT_CANOPY_SCLS', 'MORTALITY_CANOPY_SCLS','NPLANT_UNDERSTORY_SCLS', 'MORTALITY_UNDERSTORY_SCLS', 'DDBH_SCPF', 'DDBH_CANOPY_SCPF', 'DDBH_UNDERSTORY_SCPF','NPLANT_SCAG', 'YESTERDAYCANLEV_CANOPY_SCLS', 'YESTERDAYCANLEV_UNDERSTORY_SCLS','M1_SCPF', 'M2_SCPF', 'M3_SCPF', 'M4_SCPF', 'M5_SCPF', 'M6_SCPF','RDARK_CANOPY_SCLS','RDARK_UNDERSTORY_SCLS','CARBON_BALANCE_CANOPY_SCLS','CARBON_BALANCE_UNDERSTORY_SCLS','GPP_CANOPY_SCPF','AR_CANOPY_SCPF','GPP_UNDERSTORY_SCPF','AR_UNDERSTORY_SCPF','ED_NCOHORTS','ED_NPATCHES'
# EOF

	 ./case.build
	 ./case.submit

fi
############################################################
if [ "${SETUP_CASE}" == "ngtedv0_1x1brazil_debug" ]; then

	CASE_NAME=${SETUP_CASE}_${GITHASH1}_${GITHASH2}
	basedir=$HOME/clmed/fates-clm/cime/scripts
    #### load_machine_files
	cd $basedir
	./create_newcase -case ${CASE_NAME} -res 1x1_brazil -compset ICLM45ED -mach lbl-lr2 -project ac_ngeet
	cd ${CASE_NAME}

	./xmlchange -file env_run.xml -id STOP_OPTION -val nyears
	./xmlchange -file env_run.xml -id STOP_N -val 1
	./xmlchange -file env_run.xml -id REST_N -val 1
	./xmlchange -file env_run.xml -id CONTINUE_RUN -val FALSE
	./xmlchange -file env_run.xml -id RESUBMIT -val 0
	./xmlchange -file env_build.xml -id DEBUG -val TRUE
	
	./xmlchange -file env_run.xml -id DIN_LOC_ROOT -val /global/home/users/cdkoven/cesm_input_data
    
	./xmlchange -file env_build.xml -id EXEROOT -val /global/scratch/cdkoven//$CASE_NAME/bld
	./xmlchange -file env_run.xml -id RUNDIR -val /global/scratch/cdkoven//$CASE_NAME/run
	./xmlchange -file env_run.xml -id DOUT_S_ROOT -val /global/scratch/cdkoven//archive/$CASE_NAME

	./xmlchange -file env_batch.xml -id JOB_WALLCLOCK_TIME -val 00:59:00
	./xmlchange -file env_run.xml -id STOP_OPTION -val nyears

	./case.setup

#     cat > user_nl_clm <<EOF
#fates_paramfile = '/global/home/users/cdkoven/cesm_input_data/lnd/clm2/paramdata/tropical_params_ckmod_strictppa_07182017.nc'
#EOF

#      cat > user_nl_clm <<EOF
# fates_paramfile = '/global/home/users/cdkoven/cesm_input_data/lnd/clm2/paramdata/tropical_params_ckmod_01May2017.nc'
# hist_fincl1 = 'BA_SCLS', 'DEMOTION_RATE_SCLS', 'PROMOTION_RATE_SCLS', 'NPLANT_CANOPY_SCLS', 'MORTALITY_CANOPY_SCLS','NPLANT_UNDERSTORY_SCLS', 'MORTALITY_UNDERSTORY_SCLS', 'DDBH_SCPF', 'DDBH_CANOPY_SCPF', 'DDBH_UNDERSTORY_SCPF','NPLANT_SCAG', 'YESTERDAYCANLEV_CANOPY_SCLS', 'YESTERDAYCANLEV_UNDERSTORY_SCLS','M1_SCPF', 'M2_SCPF', 'M3_SCPF', 'M4_SCPF', 'M5_SCPF', 'M6_SCPF','RDARK_CANOPY_SCLS','RDARK_UNDERSTORY_SCLS','CARBON_BALANCE_CANOPY_SCLS','CARBON_BALANCE_UNDERSTORY_SCLS','GPP_CANOPY_SCPF','AR_CANOPY_SCPF','GPP_UNDERSTORY_SCPF','AR_UNDERSTORY_SCPF','NPLANT_CANOPY_SCLS', 'MORTALITY_CANOPY_SCAG','NPLANT_UNDERSTORY_SCAG','MORTALITY_UNDERSTORY_SCAG','DDBH_CANOPY_SCAG', 'DDBH_UNDERSTORY_SCAG','NPLANT_CANOPY_SCAG'
# EOF

#     cat > user_nl_clm <<EOF
# fates_paramfile = '/global/home/users/cdkoven/cesm_input_data/lnd/clm2/paramdata/fates_params.presc_mort_growthmode.crownexp1.28.cmpexcln0pt1.pt0194canmort.nomaxdbh.pt02recr.nobleaf.50pctnpp.50pctundnpp.170503.nc'
# hist_empty_htapes = .true.
# hist_fincl1 = 'BA_SCLS', 'DEMOTION_RATE_SCLS', 'PROMOTION_RATE_SCLS', 'NPLANT_CANOPY_SCLS', 'MORTALITY_CANOPY_SCLS','NPLANT_UNDERSTORY_SCLS', 'MORTALITY_UNDERSTORY_SCLS', 'DDBH_SCPF', 'DDBH_CANOPY_SCPF', 'DDBH_UNDERSTORY_SCPF','NPLANT_SCAG', 'YESTERDAYCANLEV_CANOPY_SCLS', 'YESTERDAYCANLEV_UNDERSTORY_SCLS','M1_SCPF', 'M2_SCPF', 'M3_SCPF', 'M4_SCPF', 'M5_SCPF', 'M6_SCPF','RDARK_CANOPY_SCLS','RDARK_UNDERSTORY_SCLS','CARBON_BALANCE_CANOPY_SCLS','CARBON_BALANCE_UNDERSTORY_SCLS','GPP_CANOPY_SCPF','AR_CANOPY_SCPF','GPP_UNDERSTORY_SCPF','AR_UNDERSTORY_SCPF','ED_NCOHORTS','ED_NPATCHES'
# EOF

	 ./case.build
	 ./case.submit

fi
################################################################################
if [ "${SETUP_CASE}" == "ngtedv0_1x1brazil_satm_test" ]; then

	CASE_NAME=${SETUP_CASE}_${GITHASH1}_${GITHASH2}
	basedir=$HOME/clmed/fates-clm/cime/scripts
    #### load_machine_files
	cd $basedir
	./create_newcase -case ${CASE_NAME} -res 1x1_brazil -compset ICLM45EDSATM -mach lbl-lr2 -project ac_ngeet --run-unsupported
	cd ${CASE_NAME}

	./xmlchange -file env_run.xml -id STOP_OPTION -val nyears
	./xmlchange -file env_run.xml -id STOP_N -val 50
	./xmlchange -file env_run.xml -id REST_N -val 1
	./xmlchange -file env_run.xml -id CONTINUE_RUN -val FALSE
	./xmlchange -file env_run.xml -id RESUBMIT -val 0
	./xmlchange -file env_build.xml -id DEBUG -val TRUE
	
	./xmlchange -file env_run.xml -id DIN_LOC_ROOT -val /global/home/users/cdkoven/cesm_input_data
    
	./xmlchange -file env_build.xml -id EXEROOT -val /global/scratch/cdkoven//$CASE_NAME/bld
	./xmlchange -file env_run.xml -id RUNDIR -val /global/scratch/cdkoven//$CASE_NAME/run
	./xmlchange -file env_run.xml -id DOUT_S_ROOT -val /global/scratch/cdkoven//archive/$CASE_NAME

	./xmlchange -file env_batch.xml -id JOB_WALLCLOCK_TIME -val 05:59:00
	./xmlchange -file env_run.xml -id STOP_OPTION -val nyears

	./case.setup

    cat > user_nl_clm <<EOF
fates_paramfile = '/global/home/users/cdkoven/cesm_input_data/lnd/clm2/paramdata/fates_params.presc_mort_growthmode.crownexp1.28.cmpexcln0pt1.pt0194canmort.nomaxdbh.pt02recr.nobleaf.50pctnpp.50pctundnpp.170503.nc'
hist_empty_htapes = .true.
hist_fincl1 = 'BA_SCLS','DEMOTION_RATE_SCLS','PROMOTION_RATE_SCLS','NPLANT_CANOPY_SCLS','MORTALITY_CANOPY_SCLS','NPLANT_UNDERSTORY_SCLS','MORTALITY_UNDERSTORY_SCLS','DDBH_CANOPY_SCLS','DDBH_UNDERSTORY_SCLS','NPLANT_SCAG','YESTERDAYCANLEV_CANOPY_SCLS','YESTERDAYCANLEV_UNDERSTORY_SCLS','CROWN_AREA_CANOPY_SCLS','CROWN_AREA_UNDERSTORY_SCLS'
EOF

	 ./case.build
	 ./case.submit

fi

