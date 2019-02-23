#!/usr/bin/env bash

SRCDIR=$HOME/clmed/fates-clm/
cd ${SRCDIR}
GITHASH=`git log -n 1 --format=%h`

# SETUP_CASE=ngtedv0_1x1amazon_test1
# SETUP_CASE=ngtedv0_5x5amazon_bugbranch_test1
# SETUP_CASE=ngtedv0_5x5amazon_mainbranch_test1
# SETUP_CASE=ngtedv0_1x1brazil_bugbranch_test1
# SETUP_CASE=ngtedv0_4x5_bugbranch_test1
# SETUP_CASE=ngtedv0_4x5_bugbranch_test2_gcc
# SETUP_CASE=ngtedv0_4x5_mainbranch_test1
# SETUP_CASE=ngtedv0_4x5_bugbranch_test3
# SETUP_CASE=ngtedv0_4x5_bugbranch_test4_plain
#SETUP_CASE=ngtedv0_4x5_trunk120_test1
# SETUP_CASE=ngtedv0_4x5_mainbranch_test5_plain
#SETUP_CASE=ngtedv0_1x1brazil_test1
#SETUP_CASE=ngtedv0_4x5_test6
#SETUP_CASE=ngtedv0_4x5_test7_novertsoilc
# SETUP_CASE=ngtedv0_4x5_test8_sourcemods
#SETUP_CASE=ngtedv0_4x5_test9_control
#SETUP_CASE=ngtedv0_1x1brazil_longrun_standard
# SETUP_CASE=ngtedv0_1x1brazil_longrun_ADSU
#SETUP_CASE=ngtedv0_1x1brazil_longrun2_std_newunits
# SETUP_CASE=ngtedv0_1x1brazil_longrun3_std_newunits
# SETUP_CASE=ngtedv0_1x1brazil_longrun4_std_newsign
#SETUP_CASE=ngtedv0_1x1brazil_longrun5_newvars
#SETUP_CASE=ngtedv0_1x1brazil_hifreqtest
#SETUP_CASE=ngtedv0_1x1brazil_hifreqtest2
#SETUP_CASE=ngtedv0_4x5_newpatchhist
#SETUP_CASE=ngtedv0_4x5_newpatchhist2_ADSU
#SETUP_CASE=ngtedv0_4x5_newpatchhist3_ADSU
#SETUP_CASE=ngtedv0_1x1brazil_canopyclosurediagnostic
#SETUP_CASE=ngtedv0_4x5_coldstartadspinup
#SETUP_CASE=ngtedv0_4x5_debugtest
#SETUP_CASE=ngtedv0_4x5_debugtest2
#SETUP_CASE=ngtedv0_4x5_debugtest3
#SETUP_CASE=ngtedv0_4x5_debugtest3a_lowcushion
#SETUP_CASE=ngtedv0_4x5_debugtest3b_highcushion
#SETUP_CASE=ngtedv0_1x1brazil_selfthinningexp_initd_pt04
#SETUP_CASE=ngtedv0_1x1brazil_selfthinningexp_initd_pt08
#SETUP_CASE=ngtedv0_1x1brazil_selfthinningexp_initd_pt15
#SETUP_CASE=ngtedv0_1x1brazil_selfthinningexp_initd_pt30
#SETUP_CASE=ngtedv0_1x1brazil_selfthinningexp_control
#SETUP_CASE=ngtedv0_1x1brazil_selfthinningexp_lowcushion
#SETUP_CASE=ngtedv0_4x5_litterrefactor_t1
#SETUP_CASE=ngtedv0_4x5_litterrefactor_t2_AD
#SETUP_CASE=ngtedv0_1x1brazil_selfthinningexp_nobackgrndmort
#SETUP_CASE=ngtedv0_1x1brazil_selfthinningexp_nobackgrndmort_bigtrees
#SETUP_CASE=ngtedv0_1x1brazil_selfthinningexp_nobackgrndmort_lowcushion
#SETUP_CASE=ngtedv0_1x1brazil_sitelevelseeds
#SETUP_CASE=ngtedv0_1x1brazil_sitelevelseeds_strictfusetol
#SETUP_CASE=ngtedv0_1x1brazil_sitelevelseeds_strictpatchcohortfusetol
#SETUP_CASE=ngtedv0_1x1brazil_sitelevelseeds_strictpatchcohortfusetol_20patches
#SETUP_CASE=ngtedv0_1x1brazil_control
#SETUP_CASE=ngtedv0_1x1brazil_seeds_fusion_fixes
#SETUP_CASE=ngtedv0_1x1brazil_2pfts_test1
#SETUP_CASE=ngtedv0_1x1brazil_2pfts_test2
#SETUP_CASE=ngtedv0_1x1brazil_1pftexistencetest_round1
#SETUP_CASE=ngtedv0_1x1brazil_2pftcoexistencetest_round1
#SETUP_CASE=ngtedv0_1x1brazil_thincanopies
#SETUP_CASE=ngtedv0_1x1brazil_thincanopies3
#SETUP_CASE=ngtedv0_1x1brazil_2pftcoexistencetest_thincanopies_round2
#SETUP_CASE=ngtedv0_1x1brazil_2pftcoexistencetest_thincanopies3_round3
#SETUP_CASE=ngtedv0_1x1brazil_2pftcoexistencetest_thincanopies3_round3_restarttest
#SETUP_CASE=ngtedv0_1x1brazil_2pftcoexistencetest_2017_round2_newbstorprior2_newdiags_lr2
#SETUP_CASE=ngtedv0_1x1brazil_2pftcoexistencetest_2017_round2_morenewdiags_lr2
#SETUP_CASE=ngtedv0_1x1brazil_2pftcoexistencetest_2017_testingnewdims_lr2
SETUP_CASE=ngtedv0_1x1brazil_test
#SETUP_CASE=ngtedv0_precribedphys_detrank_nomaxdbh_10xrecr_1_28_0bleaf_pt5xnpp_pt5xundnpp_pt02recr_pt02canmort_25pctnppincr

#SETUP_CASE=ngtedv0_1x1brazil_newparamfile_test

# cp ed-clm/cime/machines/config_batch.xml ../ccsm_source/clm4_5_1_r120/cime/machines/config_batch.xml
# cp ed-clm/cime/machines/config_batch.xml ../ccsm_source/clm4_5_1_r120/cime/machines/config_batch.xml
# cp ed-clm/cime/machines/config_machines.xml ../ccsm_source/clm4_5_1_r120/cime/machines/config_machines.xml

################################################################################
if [ "${SETUP_CASE}" == "ngtedv0_1x1brazil_2pftcoexistencetest_2017_testingnewdims_lr2" ]; then
    number_array=( 36 )
	# 80 81 82 83 84 85 86 87 88 89)
    # 70 71 72 73 74 75 76 77 78 79)
       # 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69)
	# 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39)
    ### 00 01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19 20 21 22 )
    #
    for i in ${number_array[@]}; do
	CASE_NAME=${SETUP_CASE}_v${i}_${GITHASH}
	basedir=$HOME/clmed/ed-clm/cime/scripts
    #### load_machine_files
	cd $basedir
	./create_newcase -case ${CASE_NAME} -res 1x1_brazil -compset ICLM45ED -mach lawrencium-lr2 -project ac_ngeet
	cd ${CASE_NAME}

	./xmlchange -file env_run.xml -id STOP_OPTION -val nyears
	./xmlchange -file env_run.xml -id STOP_N -val 100
	./xmlchange -file env_run.xml -id REST_N -val 25
	./xmlchange -file env_run.xml -id CONTINUE_RUN -val FALSE
	
	./xmlchange -file env_run.xml -id DIN_LOC_ROOT -val /global/home/users/cdkoven/cesm_input_data
    
	./xmlchange -file env_build.xml -id EXEROOT -val /global/scratch/cdkoven//$CASE_NAME/bld
	./xmlchange -file env_run.xml -id RUNDIR -val /global/scratch/cdkoven//$CASE_NAME/run
	./xmlchange -file env_run.xml -id DOUT_S_ROOT -val /global/scratch/cdkoven//archive/$CASE_NAME

	./xmlchange -file env_batch.xml -id JOB_WALLCLOCK_TIME -val 11:59:00
	./xmlchange -file env_run.xml -id STOP_OPTION -val nyears

	./case.setup

# paramfile = '/global/home/users/cdkoven/cesm_input_data/lnd/clm2/paramdata/clm_params_ed.cdk.successionalpft.cushdens.double.v${i}.c170125.nc'
# paramfile = '/global/home/users/cdkoven/cesm_input_data/lnd/clm2/paramdata/clm_params_ed.cdk.successionalpft.cushdens.double.v36.stressmort_0pt0.c170207.nc'

	cat > user_nl_clm <<EOF
paramfile = '/global/home/users/cdkoven/cesm_input_data/lnd/clm2/paramdata/clm_params_ed.cdk.successionalpft.cushdens.double.v${i}.c170120.nc'
hist_fincl1 = 'GPP_SCPF','BA_SCPF','NPLANT_SCPF','M1_SCPF','M2_SCPF','M3_SCPF','M4_SCPF','M5_SCPF','M6_SCPF','DDBH_SCPF','MORTALITY_CANOPY_SCPF','BSTOR_CANOPY_SCPF','BLEAF_CANOPY_SCPF','NPLANT_CANOPY_SCPF','MORTALITY_UNDERSTORY_SCPF','BSTOR_UNDERSTORY_SCPF','BLEAF_UNDERSTORY_SCPF','NPLANT_UNDERSTORY_SCPF','DDBH_CANOPY_SCPF','DDBH_UNDERSTORY_SCPF','GPP_CANOPY','AR_CANOPY','GPP_UNDERSTORY','AR_UNDERSTORY','GPP_CANOPY_SCPF','GPP_UNDERSTORY_SCPF','AR_UNDERSTORY_SCPF','AR_CANOPY_SCPF','LEAF_MD_CANOPY_SCLS','ROOT_MD_CANOPY_SCLS','CARBON_BALANCE_CANOPY_SCLS','SEED_PROD_CANOPY_SCLS','DBALIVEDT_CANOPY_SCLS','DBDEADDT_CANOPY_SCLS','DBSTOREDT_CANOPY_SCLS','STORAGE_FLUX_CANOPY_SCLS','NPP_LEAF_CANOPY_SCLS','NPP_FROOT_CANOPY_SCLS','NPP_BSW_CANOPY_SCLS','NPP_BDEAD_CANOPY_SCLS','NPP_BSEED_CANOPY_SCLS','NPP_STORE_CANOPY_SCLS','RDARK_CANOPY_SCLS','LIVESTEM_MR_CANOPY_SCLS','LIVECROOT_MR_CANOPY_SCLS','FROOT_MR_CANOPY_SCLS','RESP_G_CANOPY_SCLS','RESP_M_CANOPY_SCLS','LEAF_MD_UNDERSTORY_SCLS','ROOT_MD_UNDERSTORY_SCLS','CARBON_BALANCE_UNDERSTORY_SCLS','SEED_PROD_UNDERSTORY_SCLS','DBALIVEDT_UNDERSTORY_SCLS','DBDEADDT_UNDERSTORY_SCLS','DBSTOREDT_UNDERSTORY_SCLS','STORAGE_FLUX_UNDERSTORY_SCLS','NPP_LEAF_UNDERSTORY_SCLS','NPP_FROOT_UNDERSTORY_SCLS','NPP_BSW_UNDERSTORY_SCLS','NPP_BDEAD_UNDERSTORY_SCLS','NPP_BSEED_UNDERSTORY_SCLS','NPP_STORE_UNDERSTORY_SCLS','RDARK_UNDERSTORY_SCLS','LIVESTEM_MR_UNDERSTORY_SCLS','LIVECROOT_MR_UNDERSTORY_SCLS','FROOT_MR_UNDERSTORY_SCLS','RESP_G_UNDERSTORY_SCLS','RESP_M_UNDERSTORY_SCLS','YESTERDAYCANLEV_CANOPY_SCLS','YESTERDAYCANLEV_UNDERSTORY_SCLS'
EOF
	./case.build
	./case.submit
    done
fi
################################################################################
if [ "${SETUP_CASE}" == "ngtedv0_precribedphys_detrank_nomaxdbh_10xrecr_1_28_0bleaf_pt5xnpp_pt5xundnpp_pt02recr_pt02canmort_25pctnppincr" ]; then

	CASE_NAME=${SETUP_CASE}_${GITHASH}
	basedir=$HOME/clmed/ed-clm/cime/scripts
    #### load_machine_files
	cd $basedir
	./create_newcase -case ${CASE_NAME} -res 1x1_brazil -compset ICLM45ED -mach lawrencium-lr2 -project ac_ngeet
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

#	cp ../ngtedv0_1x1brazil_newparamfile_crownareaexpnt_detrank_nomaxdbh_10xrecr_1_28_0bleaf_pt5xnpp_1dad28e/user_nl_clm .

	 ./case.build
	 ./case.submit

fi


################################################################################
if [ "${SETUP_CASE}" == "ngtedv0_1x1brazil_test" ]; then

	CASE_NAME=${SETUP_CASE}_${GITHASH}
	basedir=$HOME/clmed/fates-clm/cime/scripts
    #### load_machine_files
	cd $basedir
	./create_newcase -case ${CASE_NAME} -res 1x1_brazil -compset ICLM45ED -mach lbl-lr2 -project ac_ngeet
	cd ${CASE_NAME}

	./xmlchange -file env_run.xml -id STOP_OPTION -val nyears
	./xmlchange -file env_run.xml -id STOP_N -val 10
	./xmlchange -file env_run.xml -id REST_N -val 1
	./xmlchange -file env_run.xml -id CONTINUE_RUN -val FALSE
	
	./xmlchange -file env_run.xml -id DIN_LOC_ROOT -val /global/home/users/cdkoven/cesm_input_data
    
	./xmlchange -file env_build.xml -id EXEROOT -val /global/scratch/cdkoven//$CASE_NAME/bld
	./xmlchange -file env_run.xml -id RUNDIR -val /global/scratch/cdkoven//$CASE_NAME/run
	./xmlchange -file env_run.xml -id DOUT_S_ROOT -val /global/scratch/cdkoven//archive/$CASE_NAME

	./xmlchange -file env_batch.xml -id JOB_WALLCLOCK_TIME -val 00:59:00
	./xmlchange -file env_run.xml -id STOP_OPTION -val nyears

	./case.setup

	 ./case.build
	 ./case.submit

fi


################################################################################
if [ "${SETUP_CASE}" == "ngtedv0_1x1brazil_thincanopies" ]; then
    CASE_NAME=${SETUP_CASE}_${GITHASH}
    basedir=$HOME/clmed/ed-clm/cime/scripts
    #### load_machine_files
    cd $basedir
    ./create_newcase -case ${CASE_NAME} -res 1x1_brazil -compset ICLM45ED -mach lawrencium-lr2 -project ac_ngeet
    cd ${CASE_NAME}

    ./xmlchange -file env_run.xml -id STOP_OPTION -val nyears
    ./xmlchange -file env_run.xml -id STOP_N -val 100
    ./xmlchange -file env_run.xml -id REST_N -val 5

    ./xmlchange -file env_run.xml -id DIN_LOC_ROOT -val /global/home/users/cdkoven/cesm_input_data

    ./xmlchange -file env_build.xml -id EXEROOT -val /global/scratch/cdkoven//$CASE_NAME/bld
    ./xmlchange -file env_run.xml -id RUNDIR -val /global/scratch/cdkoven//$CASE_NAME/run
    ./xmlchange -file env_run.xml -id DOUT_S_ROOT -val /global/scratch/cdkoven//archive/$CASE_NAME

    ./xmlchange -file env_batch.xml -id JOB_WALLCLOCK_TIME -val 11:59:00
    ./xmlchange -file env_run.xml -id STOP_OPTION -val nyears
    ./xmlchange -file env_run.xml -id STOP_N -val 100
    ./xmlchange -file env_run.xml -id REST_N -val 5
    ./case.setup

    cat > user_nl_clm <<EOF
hist_fincl1 = 'ED_GPP_COL_SCPF','ED_BA_COL_SCPF','ED_NPLANT_COL_SCPF','ED_M1_COL_SCPF','ED_M2_COL_SCPF','ED_M3_COL_SCPF','ED_M4_COL_SCPF','ED_M5_COL_SCPF','ED_DDBH_COL_SCPF'
EOF
    #./case.build
    #./case.submit
fi
################################################################################
if [ "${SETUP_CASE}" == "ngtedv0_1x1brazil_thincanopies3" ]; then
    CASE_NAME=${SETUP_CASE}_${GITHASH}
    basedir=$HOME/clmed/ed-clm/cime/scripts
    #### load_machine_files
    cd $basedir
#    ./create_newcase -case ${CASE_NAME} -res 1x1_brazil -compset ICLM45ED -mach lawrencium-lr2 -project ac_ngeet
    cd ${CASE_NAME}

#     ./xmlchange -file env_run.xml -id STOP_OPTION -val nyears
#     ./xmlchange -file env_run.xml -id STOP_N -val 100
#     ./xmlchange -file env_run.xml -id REST_N -val 5

#     ./xmlchange -file env_run.xml -id DIN_LOC_ROOT -val /global/home/users/cdkoven/cesm_input_data

#     ./xmlchange -file env_build.xml -id EXEROOT -val /global/scratch/cdkoven//$CASE_NAME/bld
#     ./xmlchange -file env_run.xml -id RUNDIR -val /global/scratch/cdkoven//$CASE_NAME/run
#     ./xmlchange -file env_run.xml -id DOUT_S_ROOT -val /global/scratch/cdkoven//archive/$CASE_NAME

#     ./xmlchange -file env_batch.xml -id JOB_WALLCLOCK_TIME -val 11:59:00
#     ./xmlchange -file env_run.xml -id STOP_OPTION -val nyears
#     ./xmlchange -file env_run.xml -id STOP_N -val 100
#     ./xmlchange -file env_run.xml -id REST_N -val 5
#     ./case.setup

#     cat > user_nl_clm <<EOF
# hist_fincl1 = 'ED_GPP_COL_SCPF','ED_BA_COL_SCPF','ED_NPLANT_COL_SCPF','ED_M1_COL_SCPF','ED_M2_COL_SCPF','ED_M3_COL_SCPF','ED_M4_COL_SCPF','ED_M5_COL_SCPF','ED_DDBH_COL_SCPF'
# EOF
    ./case.build
    ./case.submit
fi

################################################################################
if [ "${SETUP_CASE}" == "ngtedv0_1x1brazil_2pftcoexistencetest_round1" ]; then
    number_array=(20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39)
    #00 01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19
    for i in ${number_array[@]}; do
	CASE_NAME=${SETUP_CASE}_v${i}_${GITHASH}
	basedir=$HOME/clmed/ed-clm/cime/scripts
    #### load_machine_files
	cd $basedir
	./create_newcase -case ${CASE_NAME} -res 1x1_brazil -compset ICLM45ED -mach lawrencium-lr2 -project ac_ngeet
	cd ${CASE_NAME}

	./xmlchange -file env_run.xml -id STOP_OPTION -val nyears
	./xmlchange -file env_run.xml -id STOP_N -val 100
	./xmlchange -file env_run.xml -id REST_N -val 5
	
	./xmlchange -file env_run.xml -id DIN_LOC_ROOT -val /global/home/users/cdkoven/cesm_input_data
    
	./xmlchange -file env_build.xml -id EXEROOT -val /global/scratch/cdkoven//$CASE_NAME/bld
	./xmlchange -file env_run.xml -id RUNDIR -val /global/scratch/cdkoven//$CASE_NAME/run
	./xmlchange -file env_run.xml -id DOUT_S_ROOT -val /global/scratch/cdkoven//archive/$CASE_NAME

	./xmlchange -file env_batch.xml -id JOB_WALLCLOCK_TIME -val 11:59:00
	./xmlchange -file env_run.xml -id STOP_OPTION -val nyears
	./xmlchange -file env_run.xml -id STOP_N -val 100
	./xmlchange -file env_run.xml -id REST_N -val 5

	./case.setup

	cat > user_nl_clm <<EOF
paramfile = '/global/home/users/cdkoven/cesm_input_data/lnd/clm2/paramdata/clm_params_ed.cdk.successionalpft.cushdens.double.v${i}.c160904.nc'
hist_fincl1 = 'ED_GPP_COL_SCPF','ED_BA_COL_SCPF','ED_NPLANT_COL_SCPF','ED_M1_COL_SCPF','ED_M2_COL_SCPF','ED_M3_COL_SCPF','ED_M4_COL_SCPF','ED_M5_COL_SCPF','ED_DDBH_COL_SCPF'
EOF
	./case.build
	./case.submit
    done
fi
################################################################################
if [ "${SETUP_CASE}" == "ngtedv0_1x1brazil_2pftcoexistencetest_thincanopies_round2" ]; then
    number_array=( 27 29 33 36 38 )
    #00 01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19
    #20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39
    for i in ${number_array[@]}; do
	CASE_NAME=${SETUP_CASE}_v${i}_${GITHASH}
	basedir=$HOME/clmed/ed-clm/cime/scripts
    #### load_machine_files
	cd $basedir
	./create_newcase -case ${CASE_NAME} -res 1x1_brazil -compset ICLM45ED -mach lawrencium-lr2 -project ac_ngeet
	cd ${CASE_NAME}

	./xmlchange -file env_run.xml -id STOP_OPTION -val nyears
	./xmlchange -file env_run.xml -id STOP_N -val 100
	./xmlchange -file env_run.xml -id REST_N -val 5
	
	./xmlchange -file env_run.xml -id DIN_LOC_ROOT -val /global/home/users/cdkoven/cesm_input_data
    
	./xmlchange -file env_build.xml -id EXEROOT -val /global/scratch/cdkoven//$CASE_NAME/bld
	./xmlchange -file env_run.xml -id RUNDIR -val /global/scratch/cdkoven//$CASE_NAME/run
	./xmlchange -file env_run.xml -id DOUT_S_ROOT -val /global/scratch/cdkoven//archive/$CASE_NAME

	./xmlchange -file env_batch.xml -id JOB_WALLCLOCK_TIME -val 11:59:00
	./xmlchange -file env_run.xml -id STOP_OPTION -val nyears
	./xmlchange -file env_run.xml -id STOP_N -val 100
	./xmlchange -file env_run.xml -id REST_N -val 5

	cp /global/home/users/cdkoven/clmed/EDGrowthFunctionsMod.F90 SourceMods/src.clm

	./case.setup

	cat > user_nl_clm <<EOF
paramfile = '/global/home/users/cdkoven/cesm_input_data/lnd/clm2/paramdata/clm_params_ed.cdk.successionalpft.cushdens.double.v${i}.c160904.nc'
hist_fincl1 = 'ED_GPP_COL_SCPF','ED_BA_COL_SCPF','ED_NPLANT_COL_SCPF','ED_M1_COL_SCPF','ED_M2_COL_SCPF','ED_M3_COL_SCPF','ED_M4_COL_SCPF','ED_M5_COL_SCPF','ED_DDBH_COL_SCPF'
EOF
	./case.build
	./case.submit
    done
fi
################################################################################
if [ "${SETUP_CASE}" == "ngtedv0_1x1brazil_2pftcoexistencetest_thincanopies3_round3" ]; then
    number_array=(00 01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19 27 29 33 36 38 )
    #20 21 22 23 24 25 26 28 30 31 32 33 34 35 37 39
    for i in ${number_array[@]}; do
	CASE_NAME=${SETUP_CASE}_v${i}_${GITHASH}
	basedir=$HOME/clmed/ed-clm/cime/scripts
    #### load_machine_files
	cd $basedir
	./create_newcase -case ${CASE_NAME} -res 1x1_brazil -compset ICLM45ED -mach lawrencium-lr2 -project ac_ngeet
	cd ${CASE_NAME}

	./xmlchange -file env_run.xml -id STOP_OPTION -val nyears
	./xmlchange -file env_run.xml -id STOP_N -val 100
	./xmlchange -file env_run.xml -id REST_N -val 5
	
	./xmlchange -file env_run.xml -id DIN_LOC_ROOT -val /global/home/users/cdkoven/cesm_input_data
    
	./xmlchange -file env_build.xml -id EXEROOT -val /global/scratch/cdkoven//$CASE_NAME/bld
	./xmlchange -file env_run.xml -id RUNDIR -val /global/scratch/cdkoven//$CASE_NAME/run
	./xmlchange -file env_run.xml -id DOUT_S_ROOT -val /global/scratch/cdkoven//archive/$CASE_NAME

	./xmlchange -file env_batch.xml -id JOB_WALLCLOCK_TIME -val 11:59:00
	./xmlchange -file env_run.xml -id STOP_OPTION -val nyears
	./xmlchange -file env_run.xml -id STOP_N -val 100
	./xmlchange -file env_run.xml -id REST_N -val 5

	cp /global/home/users/cdkoven/clmed/ed-clm/cime/scripts/ngtedv0_1x1brazil_thincanopies3_553078c/SourceMods/src.clm/EDGrowthFunctionsMod.F90 SourceMods/src.clm

	./case.setup

	cat > user_nl_clm <<EOF
paramfile = '/global/home/users/cdkoven/cesm_input_data/lnd/clm2/paramdata/clm_params_ed.cdk.successionalpft.cushdens.double.v${i}.c160904.nc'
hist_fincl1 = 'ED_GPP_COL_SCPF','ED_BA_COL_SCPF','ED_NPLANT_COL_SCPF','ED_M1_COL_SCPF','ED_M2_COL_SCPF','ED_M3_COL_SCPF','ED_M4_COL_SCPF','ED_M5_COL_SCPF','ED_DDBH_COL_SCPF'
EOF
	./case.build
	./case.submit
    done
fi
################################################################################
if [ "${SETUP_CASE}" == "ngtedv0_1x1brazil_2pftcoexistencetest_thincanopies3_round3_restarttest" ]; then
    number_array=(00)
    #01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19 27 29 33 36 38 
    #20 21 22 23 24 25 26 28 30 31 32 33 34 35 37 39
    for i in ${number_array[@]}; do
	CASE_NAME=${SETUP_CASE}_v${i}_${GITHASH}
	basedir=$HOME/clmed/ed-clm/cime/scripts
    #### load_machine_files
	cd $basedir
	./create_newcase -case ${CASE_NAME} -res 1x1_brazil -compset ICLM45ED -mach lawrencium-lr2 -project ac_ngeet
	cd ${CASE_NAME}

	./xmlchange -file env_run.xml -id STOP_OPTION -val nyears
	./xmlchange -file env_run.xml -id STOP_N -val 100
	./xmlchange -file env_run.xml -id REST_N -val 5
	
	./xmlchange -file env_run.xml -id DIN_LOC_ROOT -val /global/home/users/cdkoven/cesm_input_data
    
	./xmlchange -file env_build.xml -id EXEROOT -val /global/scratch/cdkoven//$CASE_NAME/bld
	./xmlchange -file env_run.xml -id RUNDIR -val /global/scratch/cdkoven//$CASE_NAME/run
	./xmlchange -file env_run.xml -id DOUT_S_ROOT -val /global/scratch/cdkoven//archive/$CASE_NAME

	./xmlchange -file env_batch.xml -id JOB_WALLCLOCK_TIME -val 11:59:00
	./xmlchange -file env_run.xml -id STOP_OPTION -val nyears
	./xmlchange -file env_run.xml -id STOP_N -val 100
	./xmlchange -file env_run.xml -id REST_N -val 5

	cp /global/home/users/cdkoven/clmed/ed-clm/cime/scripts/ngtedv0_1x1brazil_thincanopies3_553078c/SourceMods/src.clm/EDGrowthFunctionsMod.F90 SourceMods/src.clm

	./case.setup

	cat > user_nl_clm <<EOF
paramfile = '/global/home/users/cdkoven/cesm_input_data/lnd/clm2/paramdata/clm_params_ed.cdk.successionalpft.cushdens.double.v${i}.c160904.nc'
hist_fincl1 = 'ED_GPP_COL_SCPF','ED_BA_COL_SCPF','ED_NPLANT_COL_SCPF','ED_M1_COL_SCPF','ED_M2_COL_SCPF','ED_M3_COL_SCPF','ED_M4_COL_SCPF','ED_M5_COL_SCPF','ED_DDBH_COL_SCPF'
finidat = '/global/home/users/cdkoven/scratch/archive/ngtedv0_1x1brazil_2pftcoexistencetest_thincanopies3_round3_v${i}_553078c/lnd/rest/ngtedv0_1x1brazil_2pftcoexistencetest_thincanopies3_round3_v${i}_553078c.clm2.r.0101-01-01-00000.nc'
EOF
	./case.build
	./case.submit
    done
fi
################################################################################
if [ "${SETUP_CASE}" == "ngtedv0_1x1brazil_1pftexistencetest_round1" ]; then
    number_array=(00 01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19)
    for i in ${number_array[@]}; do
	CASE_NAME=${SETUP_CASE}_v${i}_${GITHASH}
	basedir=$HOME/clmed/ed-clm/cime/scripts
    #### load_machine_files
	cd $basedir
	# ./create_newcase -case ${CASE_NAME} -res 1x1_brazil -compset ICLM45ED -mach lawrencium-lr2 -project ac_ngeet
	cd ${CASE_NAME}

	# ./xmlchange -file env_run.xml -id STOP_OPTION -val nyears
	# ./xmlchange -file env_run.xml -id STOP_N -val 100
	# ./xmlchange -file env_run.xml -id REST_N -val 5
	
	# ./xmlchange -file env_run.xml -id DIN_LOC_ROOT -val /global/home/users/cdkoven/cesm_input_data
    
	# ./xmlchange -file env_build.xml -id EXEROOT -val /global/scratch/cdkoven//$CASE_NAME/bld
	# ./xmlchange -file env_run.xml -id RUNDIR -val /global/scratch/cdkoven//$CASE_NAME/run
	# ./xmlchange -file env_run.xml -id DOUT_S_ROOT -val /global/scratch/cdkoven//archive/$CASE_NAME

	# ./xmlchange -file env_batch.xml -id JOB_WALLCLOCK_TIME -val 11:59:00
	# ./xmlchange -file env_run.xml -id STOP_OPTION -val nyears
	# ./xmlchange -file env_run.xml -id STOP_N -val 100
	# ./xmlchange -file env_run.xml -id REST_N -val 5

	# ./case.setup

	cat > user_nl_clm <<EOF
paramfile = '/global/home/users/cdkoven/cesm_input_data/lnd/clm2/paramdata/clm_params_ed.cdk.successionalpft.cushdens.single.v${i}.c160919.nc'
hist_fincl1 = 'ED_GPP_COL_SCPF','ED_BA_COL_SCPF','ED_NPLANT_COL_SCPF','ED_M1_COL_SCPF','ED_M2_COL_SCPF','ED_M3_COL_SCPF','ED_M4_COL_SCPF','ED_M5_COL_SCPF','ED_DDBH_COL_SCPF'
EOF
	#./case.build
	./case.submit
    done
fi

################################################################################
if [ "${SETUP_CASE}" == "ngtedv0_1x1brazil_2pfts_test2" ]; then
    CASE_NAME=${SETUP_CASE}_${GITHASH}
    basedir=$HOME/clmed/ed-clm/cime/scripts
    #### load_machine_files
    cd $basedir
    ./create_newcase -case ${CASE_NAME} -res 1x1_brazil -compset ICLM45ED -mach lawrencium-lr2 -project ac_ngeet
    cd ${CASE_NAME}

    ./xmlchange -file env_run.xml -id STOP_OPTION -val nyears
    ./xmlchange -file env_run.xml -id STOP_N -val 100
    ./xmlchange -file env_run.xml -id REST_N -val 5

    ./xmlchange -file env_run.xml -id DIN_LOC_ROOT -val /global/home/users/cdkoven/cesm_input_data

    ./xmlchange -file env_build.xml -id EXEROOT -val /global/scratch/cdkoven//$CASE_NAME/bld
    ./xmlchange -file env_run.xml -id RUNDIR -val /global/scratch/cdkoven//$CASE_NAME/run
    ./xmlchange -file env_run.xml -id DOUT_S_ROOT -val /global/scratch/cdkoven//archive/$CASE_NAME

    ./xmlchange -file env_batch.xml -id JOB_WALLCLOCK_TIME -val 11:59:00
    ./xmlchange -file env_run.xml -id STOP_OPTION -val nyears
    ./xmlchange -file env_run.xml -id STOP_N -val 100
    ./xmlchange -file env_run.xml -id REST_N -val 5

    ./case.setup

    cat > user_nl_clm <<EOF
paramfile = '/global/home/users/cdkoven/cesm_input_data/lnd/clm2/paramdata/clm_params_ed.cdk.successionalpfts.v2.c160901.nc'
hist_fincl1 = 'ED_GPP_COL_SCPF','ED_BA_COL_SCPF','ED_NPLANT_COL_SCPF','ED_M1_COL_SCPF','ED_M2_COL_SCPF','ED_M3_COL_SCPF','ED_M4_COL_SCPF','ED_M5_COL_SCPF','ED_DDBH_COL_SCPF'
EOF
    ./case.build
    ./case.submit
fi

################################################################################
if [ "${SETUP_CASE}" == "ngtedv0_1x1brazil_2pfts_test1" ]; then
    CASE_NAME=${SETUP_CASE}_${GITHASH}
    basedir=$HOME/clmed/ed-clm/cime/scripts
    #### load_machine_files
    cd $basedir
    ./create_newcase -case ${CASE_NAME} -res 1x1_brazil -compset ICLM45ED -mach lawrencium-lr2 -project ac_ngeet
    cd ${CASE_NAME}

    ./xmlchange -file env_run.xml -id STOP_OPTION -val nyears
    ./xmlchange -file env_run.xml -id STOP_N -val 100
    ./xmlchange -file env_run.xml -id REST_N -val 5

    ./xmlchange -file env_run.xml -id DIN_LOC_ROOT -val /global/home/users/cdkoven/cesm_input_data

    ./xmlchange -file env_build.xml -id EXEROOT -val /global/scratch/cdkoven//$CASE_NAME/bld
    ./xmlchange -file env_run.xml -id RUNDIR -val /global/scratch/cdkoven//$CASE_NAME/run
    ./xmlchange -file env_run.xml -id DOUT_S_ROOT -val /global/scratch/cdkoven//archive/$CASE_NAME

    ./xmlchange -file env_batch.xml -id JOB_WALLCLOCK_TIME -val 11:59:00
    ./xmlchange -file env_run.xml -id STOP_OPTION -val nyears
    ./xmlchange -file env_run.xml -id STOP_N -val 100
    ./xmlchange -file env_run.xml -id REST_N -val 5

    ./case.setup

    cat > user_nl_clm <<EOF
paramfile = '/global/home/users/cdkoven/cesm_input_data/lnd/clm2/paramdata/clm_params_ed.cdk.successionalpfts.v1.c160901.nc'
hist_fincl1 = 'ED_GPP_COL_SCPF','ED_BA_COL_SCPF','ED_NPLANT_COL_SCPF','ED_M1_COL_SCPF','ED_M2_COL_SCPF','ED_M3_COL_SCPF','ED_M4_COL_SCPF','ED_M5_COL_SCPF','ED_DDBH_COL_SCPF'
EOF
    ./case.build
    ./case.submit
fi

################################################################################
if [ "${SETUP_CASE}" == "ngtedv0_1x1brazil_seeds_fusion_fixes" ]; then
    CASE_NAME=${SETUP_CASE}_${GITHASH}
    basedir=$HOME/clmed/ed-clm/cime/scripts
    #### load_machine_files
    cd $basedir
    ./create_newcase -case ${CASE_NAME} -res 1x1_brazil -compset ICLM45ED -mach lawrencium-lr2 -project ac_ngeet
    cd ${CASE_NAME}

    ./xmlchange -file env_run.xml -id STOP_OPTION -val nyears
    ./xmlchange -file env_run.xml -id STOP_N -val 100
    ./xmlchange -file env_run.xml -id REST_N -val 5

    ./xmlchange -file env_run.xml -id DIN_LOC_ROOT -val /global/home/users/cdkoven/cesm_input_data

    ./xmlchange -file env_build.xml -id EXEROOT -val /global/scratch/cdkoven//$CASE_NAME/bld
    ./xmlchange -file env_run.xml -id RUNDIR -val /global/scratch/cdkoven//$CASE_NAME/run
    ./xmlchange -file env_run.xml -id DOUT_S_ROOT -val /global/scratch/cdkoven//archive/$CASE_NAME

    ./xmlchange -file env_batch.xml -id JOB_WALLCLOCK_TIME -val 11:59:00
    ./xmlchange -file env_run.xml -id STOP_OPTION -val nyears
    ./xmlchange -file env_run.xml -id STOP_N -val 100
    ./xmlchange -file env_run.xml -id REST_N -val 5

    ./case.setup

    cat > user_nl_clm <<EOF
hist_fincl1 = 'ED_GPP_COL_SCPF','ED_BA_COL_SCPF','ED_NPLANT_COL_SCPF','ED_M1_COL_SCPF','ED_M2_COL_SCPF','ED_M3_COL_SCPF','ED_M4_COL_SCPF','ED_M5_COL_SCPF','ED_DDBH_COL_SCPF'
EOF
    ./case.build
    ./case.submit
fi

################################################################################
if [ "${SETUP_CASE}" == "ngtedv0_1x1brazil_sitelevelseeds_strictpatchcohortfusetol_20patches" ]; then
    CASE_NAME=${SETUP_CASE}_${GITHASH}
    basedir=$HOME/clmed/ed-clm/cime/scripts
    #### load_machine_files
    cd $basedir
    ./create_newcase -case ${CASE_NAME} -res 1x1_brazil -compset ICLM45ED -mach lawrencium-lr2 -project ac_ngeet
    cd ${CASE_NAME}

    ./xmlchange -file env_run.xml -id STOP_OPTION -val nyears
    ./xmlchange -file env_run.xml -id STOP_N -val 100
    ./xmlchange -file env_run.xml -id REST_N -val 5

    ./xmlchange -file env_run.xml -id DIN_LOC_ROOT -val /global/home/users/cdkoven/cesm_input_data

    ./xmlchange -file env_build.xml -id EXEROOT -val /global/scratch/cdkoven//$CASE_NAME/bld
    ./xmlchange -file env_run.xml -id RUNDIR -val /global/scratch/cdkoven//$CASE_NAME/run
    ./xmlchange -file env_run.xml -id DOUT_S_ROOT -val /global/scratch/cdkoven//archive/$CASE_NAME

    ./xmlchange -file env_batch.xml -id JOB_WALLCLOCK_TIME -val 11:59:00
    ./xmlchange -file env_run.xml -id STOP_OPTION -val nyears
    ./xmlchange -file env_run.xml -id STOP_N -val 100
    ./xmlchange -file env_run.xml -id REST_N -val 5

    cp /global/home/users/cdkoven/clmed/EDTypesMod.F90 SourceMods/src.clm
    cp /global/home/users/cdkoven/clmed/EDPatchDynamicsMod.F90 SourceMods/src.clm

    ./case.setup

    cat > user_nl_clm <<EOF
hist_fincl1 = 'ED_GPP_COL_SCPF','ED_BA_COL_SCPF','ED_NPLANT_COL_SCPF','ED_M1_COL_SCPF','ED_M2_COL_SCPF','ED_M3_COL_SCPF','ED_M4_COL_SCPF','ED_M5_COL_SCPF','ED_DDBH_COL_SCPF'
EOF
    ./case.build
    ./case.submit
fi

################################################################################
if [ "${SETUP_CASE}" == "ngtedv0_1x1brazil_sitelevelseeds_strictfusetol" ]; then
    CASE_NAME=${SETUP_CASE}_${GITHASH}
    basedir=$HOME/clmed/ed-clm/cime/scripts
    #### load_machine_files
    cd $basedir
    ./create_newcase -case ${CASE_NAME} -res 1x1_brazil -compset ICLM45ED -mach lawrencium-lr2 -project ac_ngeet
    cd ${CASE_NAME}

    ./xmlchange -file env_run.xml -id STOP_OPTION -val nyears
    ./xmlchange -file env_run.xml -id STOP_N -val 100
    ./xmlchange -file env_run.xml -id REST_N -val 5

    ./xmlchange -file env_run.xml -id DIN_LOC_ROOT -val /global/home/users/cdkoven/cesm_input_data

    ./xmlchange -file env_build.xml -id EXEROOT -val /global/scratch/cdkoven//$CASE_NAME/bld
    ./xmlchange -file env_run.xml -id RUNDIR -val /global/scratch/cdkoven//$CASE_NAME/run
    ./xmlchange -file env_run.xml -id DOUT_S_ROOT -val /global/scratch/cdkoven//archive/$CASE_NAME

    ./xmlchange -file env_batch.xml -id JOB_WALLCLOCK_TIME -val 11:59:00
    ./xmlchange -file env_run.xml -id STOP_OPTION -val nyears
    ./xmlchange -file env_run.xml -id STOP_N -val 100
    ./xmlchange -file env_run.xml -id REST_N -val 5

    cp /global/home/users/cdkoven/clmed/EDTypesMod.F90 SourceMods/src.clm

    ./case.setup

    cat > user_nl_clm <<EOF
hist_fincl1 = 'ED_GPP_COL_SCPF','ED_BA_COL_SCPF','ED_NPLANT_COL_SCPF','ED_M1_COL_SCPF','ED_M2_COL_SCPF','ED_M3_COL_SCPF','ED_M4_COL_SCPF','ED_M5_COL_SCPF','ED_DDBH_COL_SCPF'
EOF
    ./case.build
    ./case.submit
fi

################################################################################
if [ "${SETUP_CASE}" == "ngtedv0_1x1brazil_control" ]; then
    CASE_NAME=${SETUP_CASE}_${GITHASH}
    basedir=$HOME/clmed/ed-clm/cime/scripts
    #### load_machine_files
    cd $basedir
    ./create_newcase -case ${CASE_NAME} -res 1x1_brazil -compset ICLM45ED -mach lawrencium-lr2 -project ac_ngeet
    cd ${CASE_NAME}

    ./xmlchange -file env_run.xml -id STOP_OPTION -val nyears
    ./xmlchange -file env_run.xml -id STOP_N -val 100
    ./xmlchange -file env_run.xml -id REST_N -val 5

    ./xmlchange -file env_run.xml -id DIN_LOC_ROOT -val /global/home/users/cdkoven/cesm_input_data

    ./xmlchange -file env_build.xml -id EXEROOT -val /global/scratch/cdkoven//$CASE_NAME/bld
    ./xmlchange -file env_run.xml -id RUNDIR -val /global/scratch/cdkoven//$CASE_NAME/run
    ./xmlchange -file env_run.xml -id DOUT_S_ROOT -val /global/scratch/cdkoven//archive/$CASE_NAME

    ./xmlchange -file env_batch.xml -id JOB_WALLCLOCK_TIME -val 11:59:00
    ./xmlchange -file env_run.xml -id STOP_OPTION -val nyears
    ./xmlchange -file env_run.xml -id STOP_N -val 100
    ./xmlchange -file env_run.xml -id REST_N -val 5
    ./case.setup

    cat > user_nl_clm <<EOF
hist_fincl1 = 'ED_GPP_COL_SCPF','ED_BA_COL_SCPF','ED_NPLANT_COL_SCPF','ED_M1_COL_SCPF','ED_M2_COL_SCPF','ED_M3_COL_SCPF','ED_M4_COL_SCPF','ED_M5_COL_SCPF','ED_DDBH_COL_SCPF'
EOF
    ./case.build
    ./case.submit
fi


################################################################################
if [ "${SETUP_CASE}" == "ngtedv0_1x1brazil_sitelevelseeds" ]; then
    CASE_NAME=${SETUP_CASE}_${GITHASH}
    basedir=$HOME/clmed/ed-clm/cime/scripts
    #### load_machine_files
    cd $basedir
    ./create_newcase -case ${CASE_NAME} -res 1x1_brazil -compset ICLM45ED -mach lawrencium-lr2 -project ac_ngeet
    cd ${CASE_NAME}

    ./xmlchange -file env_run.xml -id STOP_OPTION -val nyears
    ./xmlchange -file env_run.xml -id STOP_N -val 100
    ./xmlchange -file env_run.xml -id REST_N -val 5

    ./xmlchange -file env_run.xml -id DIN_LOC_ROOT -val /global/home/users/cdkoven/cesm_input_data

    ./xmlchange -file env_build.xml -id EXEROOT -val /global/scratch/cdkoven//$CASE_NAME/bld
    ./xmlchange -file env_run.xml -id RUNDIR -val /global/scratch/cdkoven//$CASE_NAME/run
    ./xmlchange -file env_run.xml -id DOUT_S_ROOT -val /global/scratch/cdkoven//archive/$CASE_NAME

    ./xmlchange -file env_batch.xml -id JOB_WALLCLOCK_TIME -val 11:59:00
    ./xmlchange -file env_run.xml -id STOP_OPTION -val nyears
    ./xmlchange -file env_run.xml -id STOP_N -val 100
    ./xmlchange -file env_run.xml -id REST_N -val 5
    ./case.setup

    cat > user_nl_clm <<EOF
hist_fincl1 = 'ED_GPP_COL_SCPF','ED_BA_COL_SCPF','ED_NPLANT_COL_SCPF','ED_M1_COL_SCPF','ED_M2_COL_SCPF','ED_M3_COL_SCPF','ED_M4_COL_SCPF','ED_M5_COL_SCPF','ED_DDBH_COL_SCPF'
EOF
    ./case.build
    ./case.submit
fi


################################################################################
if [ "${SETUP_CASE}" == "ngtedv0_1x1brazil_selfthinningexp_nobackgrndmort" ]; then
    CASE_NAME=${SETUP_CASE}_${GITHASH}
    basedir=$HOME/clmed/ed-clm/cime/scripts
    #### load_machine_files
    cd $basedir
    ./create_newcase -case ${CASE_NAME} -res 1x1_brazil -compset ICLM45ED -mach lawrencium-lr2 -project ac_ngeet
    cd ${CASE_NAME}

    ./xmlchange -file env_run.xml -id STOP_OPTION -val nyears
    ./xmlchange -file env_run.xml -id STOP_N -val 100
    ./xmlchange -file env_run.xml -id REST_N -val 5

    ./xmlchange -file env_run.xml -id DIN_LOC_ROOT -val /global/home/users/cdkoven/cesm_input_data

    ./xmlchange -file env_build.xml -id EXEROOT -val /global/scratch/cdkoven//$CASE_NAME/bld
    ./xmlchange -file env_run.xml -id RUNDIR -val /global/scratch/cdkoven//$CASE_NAME/run
    ./xmlchange -file env_run.xml -id DOUT_S_ROOT -val /global/scratch/cdkoven//archive/$CASE_NAME

    ./xmlchange -file env_batch.xml -id JOB_WALLCLOCK_TIME -val 11:59:00

    cp /global/home/users/cdkoven/clmed/EDPhysiologyMod.F90 SourceMods/src.clm
    cp /global/home/users/cdkoven/clmed/EDGrowthFunctionsMod.F90 SourceMods/src.clm

    ./case.setup

    cat > user_nl_clm <<EOF
hist_fincl1 = 'ED_GPP_COL_SCPF','ED_BA_COL_SCPF','ED_NPLANT_COL_SCPF','ED_M1_COL_SCPF','ED_M2_COL_SCPF','ED_M3_COL_SCPF','ED_M4_COL_SCPF','ED_M5_COL_SCPF','ED_DDBH_COL_SCPF'
EOF
    ./case.build
    ./case.submit
fi
################################################################################
if [ "${SETUP_CASE}" == "ngtedv0_1x1brazil_selfthinningexp_nobackgrndmort_bigtrees" ]; then
    CASE_NAME=${SETUP_CASE}_${GITHASH}
    basedir=$HOME/clmed/ed-clm/cime/scripts
    #### load_machine_files
    cd $basedir
    ./create_newcase -case ${CASE_NAME} -res 1x1_brazil -compset ICLM45ED -mach lawrencium-lr2 -project ac_ngeet
    cd ${CASE_NAME}

    ./xmlchange -file env_run.xml -id STOP_OPTION -val nyears
    ./xmlchange -file env_run.xml -id STOP_N -val 100
    ./xmlchange -file env_run.xml -id REST_N -val 5

    ./xmlchange -file env_run.xml -id DIN_LOC_ROOT -val /global/home/users/cdkoven/cesm_input_data

    ./xmlchange -file env_build.xml -id EXEROOT -val /global/scratch/cdkoven//$CASE_NAME/bld
    ./xmlchange -file env_run.xml -id RUNDIR -val /global/scratch/cdkoven//$CASE_NAME/run
    ./xmlchange -file env_run.xml -id DOUT_S_ROOT -val /global/scratch/cdkoven//archive/$CASE_NAME

    ./xmlchange -file env_batch.xml -id JOB_WALLCLOCK_TIME -val 11:59:00

    cp /global/home/users/cdkoven/clmed/EDPhysiologyMod.F90 SourceMods/src.clm
    cp /global/home/users/cdkoven/clmed/EDGrowthFunctionsMod.F90 SourceMods/src.clm

    ./case.setup

    cat > user_nl_clm <<EOF
paramfile = '/global/home/users/cdkoven/cesm_input_data/lnd/clm2/paramdata/clm_params_ed.c160808_pft2only_bigtrees.nc'
hist_fincl1 = 'ED_GPP_COL_SCPF','ED_BA_COL_SCPF','ED_NPLANT_COL_SCPF','ED_M1_COL_SCPF','ED_M2_COL_SCPF','ED_M3_COL_SCPF','ED_M4_COL_SCPF','ED_M5_COL_SCPF','ED_DDBH_COL_SCPF'
EOF
    ./case.build
    ./case.submit
fi
################################################################################
if [ "${SETUP_CASE}" == "ngtedv0_1x1brazil_selfthinningexp_nobackgrndmort_lowcushion" ]; then
    CASE_NAME=${SETUP_CASE}_${GITHASH}
    basedir=$HOME/clmed/ed-clm/cime/scripts
    #### load_machine_files
    cd $basedir
    ./create_newcase -case ${CASE_NAME} -res 1x1_brazil -compset ICLM45ED -mach lawrencium-lr2 -project ac_ngeet
    cd ${CASE_NAME}

    ./xmlchange -file env_run.xml -id STOP_OPTION -val nyears
    ./xmlchange -file env_run.xml -id STOP_N -val 100
    ./xmlchange -file env_run.xml -id REST_N -val 5

    ./xmlchange -file env_run.xml -id DIN_LOC_ROOT -val /global/home/users/cdkoven/cesm_input_data

    ./xmlchange -file env_build.xml -id EXEROOT -val /global/scratch/cdkoven//$CASE_NAME/bld
    ./xmlchange -file env_run.xml -id RUNDIR -val /global/scratch/cdkoven//$CASE_NAME/run
    ./xmlchange -file env_run.xml -id DOUT_S_ROOT -val /global/scratch/cdkoven//archive/$CASE_NAME

    ./xmlchange -file env_batch.xml -id JOB_WALLCLOCK_TIME -val 11:59:00

    cp /global/home/users/cdkoven/clmed/EDPhysiologyMod.F90 SourceMods/src.clm
    cp /global/home/users/cdkoven/clmed/EDGrowthFunctionsMod.F90 SourceMods/src.clm

    ./case.setup

    cat > user_nl_clm <<EOF
paramfile = '/global/home/users/cdkoven/cesm_input_data/lnd/clm2/paramdata/clm_params_ed.c160808_pft2only_smallcushion.nc'
hist_fincl1 = 'ED_GPP_COL_SCPF','ED_BA_COL_SCPF','ED_NPLANT_COL_SCPF','ED_M1_COL_SCPF','ED_M2_COL_SCPF','ED_M3_COL_SCPF','ED_M4_COL_SCPF','ED_M5_COL_SCPF','ED_DDBH_COL_SCPF'
EOF
    ./case.build
    ./case.submit
fi
################################################################################
if [ "${SETUP_CASE}" == "ngtedv0_4x5_litterrefactor_t2_AD" ]; then
    CASE_NAME=${SETUP_CASE}_${GITHASH}
    basedir=$HOME/clmed/ed-clm/cime/scripts
    #### load_machine_files
    cd $basedir
    ./create_newcase -case ${CASE_NAME} -res 4x5_4x5 -compset ICLM45ED -mach lawrencium-lr2 -project ac_ngeet
    cd ${CASE_NAME}

    ./xmlchange -file env_run.xml -id STOP_OPTION -val nyears
    ./xmlchange -file env_run.xml -id STOP_N -val 10
    ./xmlchange -file env_run.xml -id REST_N -val 5

    ./xmlchange -file env_run.xml -id DIN_LOC_ROOT -val /global/home/users/cdkoven/cesm_input_data

    ./xmlchange -file env_build.xml -id EXEROOT -val /global/scratch/cdkoven//$CASE_NAME/bld
    ./xmlchange -file env_run.xml -id RUNDIR -val /global/scratch/cdkoven//$CASE_NAME/run
    ./xmlchange -file env_run.xml -id DOUT_S_ROOT -val /global/scratch/cdkoven//archive/$CASE_NAME

    ./xmlchange -file env_batch.xml -id JOB_WALLCLOCK_TIME -val 1:59:00

    ./xmlchange -file env_run.xml -id CLM_ACCELERATED_SPINUP -val on

    ./xmlchange -file env_mach_pes.xml -id NTASKS_ATM -val 48
    ./xmlchange -file env_mach_pes.xml -id NTASKS_LND -val 48
    ./xmlchange -file env_mach_pes.xml -id NTASKS_ICE -val 48
    ./xmlchange -file env_mach_pes.xml -id NTASKS_OCN -val 48
    ./xmlchange -file env_mach_pes.xml -id NTASKS_CPL -val 48
    ./xmlchange -file env_mach_pes.xml -id NTASKS_GLC -val 48
    ./xmlchange -file env_mach_pes.xml -id NTASKS_ROF -val 48
    ./xmlchange -file env_mach_pes.xml -id NTASKS_WAV -val 48
    ./xmlchange -file env_mach_pes.xml -id TOTALPES -val 48
    ./xmlchange -file env_mach_pes.xml -id MAX_TASKS_PER_NODE -val 12

    ./case.setup

    cat > user_nl_clm <<EOF
EOF
    ./case.build
    ./case.submit
fi

################################################################################
if [ "${SETUP_CASE}" == "ngtedv0_4x5_litterrefactor_t1" ]; then
    CASE_NAME=${SETUP_CASE}_${GITHASH}
    basedir=$HOME/clmed/ed-clm/cime/scripts
    #### load_machine_files
    cd $basedir
    ./create_newcase -case ${CASE_NAME} -res 4x5_4x5 -compset ICLM45ED -mach lawrencium-lr2 -project ac_ngeet
    cd ${CASE_NAME}

    ./xmlchange -file env_run.xml -id STOP_OPTION -val nyears
    ./xmlchange -file env_run.xml -id STOP_N -val 100
    ./xmlchange -file env_run.xml -id REST_N -val 5

    ./xmlchange -file env_run.xml -id DIN_LOC_ROOT -val /global/home/users/cdkoven/cesm_input_data

    ./xmlchange -file env_build.xml -id EXEROOT -val /global/scratch/cdkoven//$CASE_NAME/bld
    ./xmlchange -file env_run.xml -id RUNDIR -val /global/scratch/cdkoven//$CASE_NAME/run
    ./xmlchange -file env_run.xml -id DOUT_S_ROOT -val /global/scratch/cdkoven//archive/$CASE_NAME

    ./xmlchange -file env_batch.xml -id JOB_WALLCLOCK_TIME -val 11:59:00

    ##this doesn't work..../xmlchange -file env_run.xml -id CLM_ACCELERATED_SPINUP -val on

    # ./xmlchange -file env_run.xml -id CLM_BLDNML_OPTS -val "-no-megan" --append
    # ./xmlchange -file env_run.xml -id CLM_BLDNML_OPTS -val "-bgc_spinup on" --append

    ./xmlchange -file env_mach_pes.xml -id NTASKS_ATM -val 48
    ./xmlchange -file env_mach_pes.xml -id NTASKS_LND -val 48
    ./xmlchange -file env_mach_pes.xml -id NTASKS_ICE -val 48
    ./xmlchange -file env_mach_pes.xml -id NTASKS_OCN -val 48
    ./xmlchange -file env_mach_pes.xml -id NTASKS_CPL -val 48
    ./xmlchange -file env_mach_pes.xml -id NTASKS_GLC -val 48
    ./xmlchange -file env_mach_pes.xml -id NTASKS_ROF -val 48
    ./xmlchange -file env_mach_pes.xml -id NTASKS_WAV -val 48
    ./xmlchange -file env_mach_pes.xml -id TOTALPES -val 48
    ./xmlchange -file env_mach_pes.xml -id MAX_TASKS_PER_NODE -val 12

    ./case.setup

    cat > user_nl_clm <<EOF
EOF
    ./case.build
    ./case.submit
fi

################################################################################
if [ "${SETUP_CASE}" == "ngtedv0_1x1brazil_selfthinningexp_control" ]; then
    CASE_NAME=${SETUP_CASE}_${GITHASH}
    basedir=$HOME/clmed/ed-clm/cime/scripts
    #### load_machine_files
    cd $basedir
    ./create_newcase -case ${CASE_NAME} -res 1x1_brazil -compset ICLM45ED -mach lawrencium-lr2 -project ac_ngeet
    cd ${CASE_NAME}

    ./xmlchange -file env_run.xml -id STOP_OPTION -val nyears
    ./xmlchange -file env_run.xml -id STOP_N -val 100
    ./xmlchange -file env_run.xml -id REST_N -val 5

    ./xmlchange -file env_run.xml -id DIN_LOC_ROOT -val /global/home/users/cdkoven/cesm_input_data

    ./xmlchange -file env_build.xml -id EXEROOT -val /global/scratch/cdkoven//$CASE_NAME/bld
    ./xmlchange -file env_run.xml -id RUNDIR -val /global/scratch/cdkoven//$CASE_NAME/run
    ./xmlchange -file env_run.xml -id DOUT_S_ROOT -val /global/scratch/cdkoven//archive/$CASE_NAME

    ./xmlchange -file env_batch.xml -id JOB_WALLCLOCK_TIME -val 11:59:00

    cp /global/home/users/cdkoven/clmed/EDPhysiologyMod.F90 SourceMods/src.clm

    ./case.setup

    cat > user_nl_clm <<EOF
paramfile = '/global/home/users/cdkoven/cesm_input_data/lnd/clm2/paramdata/clm_params_ed.c151027_pft2only.nc'
hist_fincl1 = 'ED_GPP_GD_SCPF', 'ED_DDBH_GD_SCPF', 'ED_BA_GD_SCPF', 'ED_NPLANT_GD_SCPF'
EOF
    ./case.build
    ./case.submit
fi
################################################################################
if [ "${SETUP_CASE}" == "ngtedv0_1x1brazil_selfthinningexp_lowcushion" ]; then
    CASE_NAME=${SETUP_CASE}_${GITHASH}
    basedir=$HOME/clmed/ed-clm/cime/scripts
    #### load_machine_files
    cd $basedir
    ./create_newcase -case ${CASE_NAME} -res 1x1_brazil -compset ICLM45ED -mach lawrencium-lr2 -project ac_ngeet
    cd ${CASE_NAME}

    ./xmlchange -file env_run.xml -id STOP_OPTION -val nyears
    ./xmlchange -file env_run.xml -id STOP_N -val 100
    ./xmlchange -file env_run.xml -id REST_N -val 5

    ./xmlchange -file env_run.xml -id DIN_LOC_ROOT -val /global/home/users/cdkoven/cesm_input_data

    ./xmlchange -file env_build.xml -id EXEROOT -val /global/scratch/cdkoven//$CASE_NAME/bld
    ./xmlchange -file env_run.xml -id RUNDIR -val /global/scratch/cdkoven//$CASE_NAME/run
    ./xmlchange -file env_run.xml -id DOUT_S_ROOT -val /global/scratch/cdkoven//archive/$CASE_NAME

    ./xmlchange -file env_run.xml -id CLM_BLDNML_OPTS -val "-no-megan" --append

    cp /global/home/users/cdkoven/clmed/EDPhysiologyMod.F90 SourceMods/src.clm

    ./cesm_setup

    cat > user_nl_clm <<EOF
paramfile = '/global/home/users/cdkoven/cesm_input_data/lnd/clm2/paramdata/clm_params_ed.cdk_cushionmod.0pt95.071516.nc'
hist_fincl1 = 'ED_GPP_GD_SCPF', 'ED_DDBH_GD_SCPF', 'ED_BA_GD_SCPF', 'ED_NPLANT_GD_SCPF', 'ED_M1_COL_SCPF', 'ED_M2_COL_SCPF', 'ED_M3_COL_SCPF', 'ED_M4_COL_SCPF', 'ED_M5_COL_SCPF'
EOF
    ./*.build
    ./*.submit
fi
################################################################################
if [ "${SETUP_CASE}" == "ngtedv0_1x1brazil_selfthinningexp_initd_pt04" ]; then
    CASE_NAME=${SETUP_CASE}_${GITHASH}
    basedir=$HOME/clmed/ed-clm/cime/scripts
    #### load_machine_files
    cd $basedir
    ./create_newcase -case ${CASE_NAME} -res 1x1_brazil -compset ICLM45ED -mach lawrencium-lr2 -project ac_ngeet
    cd ${CASE_NAME}

    ./xmlchange -file env_run.xml -id STOP_OPTION -val nyears
    ./xmlchange -file env_run.xml -id STOP_N -val 100
    ./xmlchange -file env_run.xml -id REST_N -val 5

    ./xmlchange -file env_run.xml -id DIN_LOC_ROOT -val /global/home/users/cdkoven/cesm_input_data

    ./xmlchange -file env_build.xml -id EXEROOT -val /global/scratch/cdkoven//$CASE_NAME/bld
    ./xmlchange -file env_run.xml -id RUNDIR -val /global/scratch/cdkoven//$CASE_NAME/run
    ./xmlchange -file env_run.xml -id DOUT_S_ROOT -val /global/scratch/cdkoven//archive/$CASE_NAME

    ./xmlchange -file env_run.xml -id CLM_BLDNML_OPTS -val "-no-megan" --append

    cp /global/home/users/cdkoven/clmed/EDPhysiologyMod.F90 Sourcemods/src.clm

    ./cesm_setup

    cat > user_nl_clm <<EOF
paramfile = '/global/home/users/cdkoven/cesm_input_data/lnd/clm2/paramdata/clm_params_ed.cdkmod_initd_pt04.nc'
hist_fincl1 = 'ED_GPP_GD_SCPF', 'ED_DDBH_GD_SCPF', 'ED_BA_GD_SCPF', 'ED_NPLANT_GD_SCPF'
EOF
    ./*.build
    ./*.submit
fi
################################################################################
if [ "${SETUP_CASE}" == "ngtedv0_1x1brazil_selfthinningexp_initd_pt08" ]; then
    CASE_NAME=${SETUP_CASE}_${GITHASH}
    basedir=$HOME/clmed/ed-clm/cime/scripts
    #### load_machine_files
    cd $basedir
    ./create_newcase -case ${CASE_NAME} -res 1x1_brazil -compset ICLM45ED -mach lawrencium-lr2 -project ac_ngeet
    cd ${CASE_NAME}

    ./xmlchange -file env_run.xml -id STOP_OPTION -val nyears
    ./xmlchange -file env_run.xml -id STOP_N -val 100
    ./xmlchange -file env_run.xml -id REST_N -val 5

    ./xmlchange -file env_run.xml -id DIN_LOC_ROOT -val /global/home/users/cdkoven/cesm_input_data

    ./xmlchange -file env_build.xml -id EXEROOT -val /global/scratch/cdkoven//$CASE_NAME/bld
    ./xmlchange -file env_run.xml -id RUNDIR -val /global/scratch/cdkoven//$CASE_NAME/run
    ./xmlchange -file env_run.xml -id DOUT_S_ROOT -val /global/scratch/cdkoven//archive/$CASE_NAME

    ./xmlchange -file env_run.xml -id CLM_BLDNML_OPTS -val "-no-megan" --append

    cp /global/home/users/cdkoven/clmed/EDPhysiologyMod.F90 Sourcemods/src.clm

    ./cesm_setup

    cat > user_nl_clm <<EOF
paramfile = '/global/home/users/cdkoven/cesm_input_data/lnd/clm2/paramdata/clm_params_ed.cdkmod_initd_pt08.nc'
hist_fincl1 = 'ED_GPP_GD_SCPF', 'ED_DDBH_GD_SCPF', 'ED_BA_GD_SCPF', 'ED_NPLANT_GD_SCPF'
EOF
    ./*.build
    ./*.submit
fi
################################################################################
if [ "${SETUP_CASE}" == "ngtedv0_1x1brazil_selfthinningexp_initd_pt15" ]; then
    CASE_NAME=${SETUP_CASE}_${GITHASH}
    basedir=$HOME/clmed/ed-clm/cime/scripts
    #### load_machine_files
    cd $basedir
    ./create_newcase -case ${CASE_NAME} -res 1x1_brazil -compset ICLM45ED -mach lawrencium-lr2 -project ac_ngeet
    cd ${CASE_NAME}

    ./xmlchange -file env_run.xml -id STOP_OPTION -val nyears
    ./xmlchange -file env_run.xml -id STOP_N -val 100
    ./xmlchange -file env_run.xml -id REST_N -val 5

    ./xmlchange -file env_run.xml -id DIN_LOC_ROOT -val /global/home/users/cdkoven/cesm_input_data

    ./xmlchange -file env_build.xml -id EXEROOT -val /global/scratch/cdkoven//$CASE_NAME/bld
    ./xmlchange -file env_run.xml -id RUNDIR -val /global/scratch/cdkoven//$CASE_NAME/run
    ./xmlchange -file env_run.xml -id DOUT_S_ROOT -val /global/scratch/cdkoven//archive/$CASE_NAME

    ./xmlchange -file env_run.xml -id CLM_BLDNML_OPTS -val "-no-megan" --append

    cp /global/home/users/cdkoven/clmed/EDPhysiologyMod.F90 Sourcemods/src.clm

    ./cesm_setup

    cat > user_nl_clm <<EOF
paramfile = '/global/home/users/cdkoven/cesm_input_data/lnd/clm2/paramdata/clm_params_ed.cdkmod_initd_pt15.nc'
hist_fincl1 = 'ED_GPP_GD_SCPF', 'ED_DDBH_GD_SCPF', 'ED_BA_GD_SCPF', 'ED_NPLANT_GD_SCPF'
EOF
    ./*.build
    ./*.submit
fi
################################################################################
if [ "${SETUP_CASE}" == "ngtedv0_1x1brazil_selfthinningexp_initd_pt30" ]; then
    CASE_NAME=${SETUP_CASE}_${GITHASH}
    basedir=$HOME/clmed/ed-clm/cime/scripts
    #### load_machine_files
    cd $basedir
    ./create_newcase -case ${CASE_NAME} -res 1x1_brazil -compset ICLM45ED -mach lawrencium-lr2 -project ac_ngeet
    cd ${CASE_NAME}

    ./xmlchange -file env_run.xml -id STOP_OPTION -val nyears
    ./xmlchange -file env_run.xml -id STOP_N -val 100
    ./xmlchange -file env_run.xml -id REST_N -val 5

    ./xmlchange -file env_run.xml -id DIN_LOC_ROOT -val /global/home/users/cdkoven/cesm_input_data

    ./xmlchange -file env_build.xml -id EXEROOT -val /global/scratch/cdkoven//$CASE_NAME/bld
    ./xmlchange -file env_run.xml -id RUNDIR -val /global/scratch/cdkoven//$CASE_NAME/run
    ./xmlchange -file env_run.xml -id DOUT_S_ROOT -val /global/scratch/cdkoven//archive/$CASE_NAME

    ./xmlchange -file env_run.xml -id CLM_BLDNML_OPTS -val "-no-megan" --append

    cp /global/home/users/cdkoven/clmed/EDPhysiologyMod.F90 Sourcemods/src.clm

    ./cesm_setup

    cat > user_nl_clm <<EOF
paramfile = '/global/home/users/cdkoven/cesm_input_data/lnd/clm2/paramdata/clm_params_ed.cdkmod_initd_pt30.nc'
hist_fincl1 = 'ED_GPP_GD_SCPF', 'ED_DDBH_GD_SCPF', 'ED_BA_GD_SCPF', 'ED_NPLANT_GD_SCPF'
EOF
    ./*.build
    ./*.submit
fi

################################################################################
if [ "${SETUP_CASE}" == "ngtedv0_4x5_debugtest3a_lowcushion" ]; then
    CASE_NAME=${SETUP_CASE}_${GITHASH}
    basedir=$HOME/clmed/ed-clm/cime/scripts
    #### load_machine_files
    cd $basedir
    ./create_newcase -case ${CASE_NAME} -res 4x5_4x5 -compset ICLM45ED -mach lawrencium-lr2 -project ac_ngeet
    cd ${CASE_NAME}

    ./xmlchange -file env_run.xml -id STOP_OPTION -val nyears
    ./xmlchange -file env_run.xml -id STOP_N -val 100
    ./xmlchange -file env_run.xml -id REST_N -val 5

    ./xmlchange -file env_run.xml -id DIN_LOC_ROOT -val /global/home/users/cdkoven/cesm_input_data

    ./xmlchange -file env_build.xml -id EXEROOT -val /global/scratch/cdkoven//$CASE_NAME/bld
    ./xmlchange -file env_run.xml -id RUNDIR -val /global/scratch/cdkoven//$CASE_NAME/run
    ./xmlchange -file env_run.xml -id DOUT_S_ROOT -val /global/scratch/cdkoven//archive/$CASE_NAME

    ./xmlchange -file env_run.xml -id CLM_BLDNML_OPTS -val "-no-megan" --append
    #./xmlchange -file env_run.xml -id CLM_BLDNML_OPTS -val "-bgc_spinup on" --append

    ./xmlchange -file env_mach_pes.xml -id NTASKS_ATM -val 48
    ./xmlchange -file env_mach_pes.xml -id NTASKS_LND -val 48
    ./xmlchange -file env_mach_pes.xml -id NTASKS_ICE -val 48
    ./xmlchange -file env_mach_pes.xml -id NTASKS_OCN -val 48
    ./xmlchange -file env_mach_pes.xml -id NTASKS_CPL -val 48
    ./xmlchange -file env_mach_pes.xml -id NTASKS_GLC -val 48
    ./xmlchange -file env_mach_pes.xml -id NTASKS_ROF -val 48
    ./xmlchange -file env_mach_pes.xml -id NTASKS_WAV -val 48
    ./xmlchange -file env_mach_pes.xml -id TOTALPES -val 48
    ./xmlchange -file env_mach_pes.xml -id MAX_TASKS_PER_NODE -val 12

    ./cesm_setup

    cat > user_nl_clm <<EOF
paramfile = '/global/home/users/cdkoven/cesm_input_data/lnd/clm2/paramdata/clm_params_ed.cdk_cushionmod.0pt95.071516.nc'
EOF
    ./*.build
    ./*.submit
fi
################################################################################
if [ "${SETUP_CASE}" == "ngtedv0_4x5_debugtest3b_highcushion" ]; then
    CASE_NAME=${SETUP_CASE}_${GITHASH}
    basedir=$HOME/clmed/ed-clm/cime/scripts
    #### load_machine_files
    cd $basedir
    ./create_newcase -case ${CASE_NAME} -res 4x5_4x5 -compset ICLM45ED -mach lawrencium-lr2 -project ac_ngeet
    cd ${CASE_NAME}

    ./xmlchange -file env_run.xml -id STOP_OPTION -val nyears
    ./xmlchange -file env_run.xml -id STOP_N -val 100
    ./xmlchange -file env_run.xml -id REST_N -val 5

    ./xmlchange -file env_run.xml -id DIN_LOC_ROOT -val /global/home/users/cdkoven/cesm_input_data

    ./xmlchange -file env_build.xml -id EXEROOT -val /global/scratch/cdkoven//$CASE_NAME/bld
    ./xmlchange -file env_run.xml -id RUNDIR -val /global/scratch/cdkoven//$CASE_NAME/run
    ./xmlchange -file env_run.xml -id DOUT_S_ROOT -val /global/scratch/cdkoven//archive/$CASE_NAME

    ./xmlchange -file env_run.xml -id CLM_BLDNML_OPTS -val "-no-megan" --append
    #./xmlchange -file env_run.xml -id CLM_BLDNML_OPTS -val "-bgc_spinup on" --append

    ./xmlchange -file env_mach_pes.xml -id NTASKS_ATM -val 48
    ./xmlchange -file env_mach_pes.xml -id NTASKS_LND -val 48
    ./xmlchange -file env_mach_pes.xml -id NTASKS_ICE -val 48
    ./xmlchange -file env_mach_pes.xml -id NTASKS_OCN -val 48
    ./xmlchange -file env_mach_pes.xml -id NTASKS_CPL -val 48
    ./xmlchange -file env_mach_pes.xml -id NTASKS_GLC -val 48
    ./xmlchange -file env_mach_pes.xml -id NTASKS_ROF -val 48
    ./xmlchange -file env_mach_pes.xml -id NTASKS_WAV -val 48
    ./xmlchange -file env_mach_pes.xml -id TOTALPES -val 48
    ./xmlchange -file env_mach_pes.xml -id MAX_TASKS_PER_NODE -val 12

    ./cesm_setup

    cat > user_nl_clm <<EOF
paramfile = '/global/home/users/cdkoven/cesm_input_data/lnd/clm2/paramdata/clm_params_ed.cdk_cushionmod.1pt45.071516.nc'
EOF
    ./*.build
    ./*.submit
fi
################################################################################
if [ "${SETUP_CASE}" == "ngtedv0_4x5_debugtest3" ]; then
    CASE_NAME=${SETUP_CASE}_${GITHASH}
    basedir=$HOME/clmed/ed-clm/cime/scripts
    #### load_machine_files
    cd $basedir
    ./create_newcase -case ${CASE_NAME} -res 4x5_4x5 -compset ICLM45ED -mach lawrencium-lr2 -project ac_ngeet
    cd ${CASE_NAME}

    ./xmlchange -file env_run.xml -id STOP_OPTION -val nyears
    ./xmlchange -file env_run.xml -id STOP_N -val 100
    ./xmlchange -file env_run.xml -id REST_N -val 5

    ./xmlchange -file env_run.xml -id DIN_LOC_ROOT -val /global/home/users/cdkoven/cesm_input_data

    ./xmlchange -file env_build.xml -id EXEROOT -val /global/scratch/cdkoven//$CASE_NAME/bld
    ./xmlchange -file env_run.xml -id RUNDIR -val /global/scratch/cdkoven//$CASE_NAME/run
    ./xmlchange -file env_run.xml -id DOUT_S_ROOT -val /global/scratch/cdkoven//archive/$CASE_NAME

    ./xmlchange -file env_run.xml -id CLM_BLDNML_OPTS -val "-no-megan" --append
    #./xmlchange -file env_run.xml -id CLM_BLDNML_OPTS -val "-bgc_spinup on" --append

    ./xmlchange -file env_mach_pes.xml -id NTASKS_ATM -val 48
    ./xmlchange -file env_mach_pes.xml -id NTASKS_LND -val 48
    ./xmlchange -file env_mach_pes.xml -id NTASKS_ICE -val 48
    ./xmlchange -file env_mach_pes.xml -id NTASKS_OCN -val 48
    ./xmlchange -file env_mach_pes.xml -id NTASKS_CPL -val 48
    ./xmlchange -file env_mach_pes.xml -id NTASKS_GLC -val 48
    ./xmlchange -file env_mach_pes.xml -id NTASKS_ROF -val 48
    ./xmlchange -file env_mach_pes.xml -id NTASKS_WAV -val 48
    ./xmlchange -file env_mach_pes.xml -id TOTALPES -val 48
    ./xmlchange -file env_mach_pes.xml -id MAX_TASKS_PER_NODE -val 12

    ./cesm_setup

    cat > user_nl_clm <<EOF
EOF
    ./*.build
    ./*.submit
fi

################################################################################
if [ "${SETUP_CASE}" == "ngtedv0_4x5_debugtest2" ]; then
    CASE_NAME=${SETUP_CASE}_${GITHASH}
    basedir=$HOME/clmed/ed-clm/cime/scripts
    #### load_machine_files
    cd $basedir
    ./create_newcase -case ${CASE_NAME} -res 4x5_4x5 -compset ICLM45ED -mach lawrencium-lr2 -project ac_ngeet
    cd ${CASE_NAME}

    ./xmlchange -file env_run.xml -id STOP_OPTION -val nyears
    ./xmlchange -file env_run.xml -id STOP_N -val 100
    ./xmlchange -file env_run.xml -id REST_N -val 5

    ./xmlchange -file env_run.xml -id DIN_LOC_ROOT -val /global/home/users/cdkoven/cesm_input_data

    ./xmlchange -file env_build.xml -id EXEROOT -val /global/scratch/cdkoven//$CASE_NAME/bld
    ./xmlchange -file env_run.xml -id RUNDIR -val /global/scratch/cdkoven//$CASE_NAME/run
    ./xmlchange -file env_run.xml -id DOUT_S_ROOT -val /global/scratch/cdkoven//archive/$CASE_NAME

    ./xmlchange -file env_run.xml -id CLM_BLDNML_OPTS -val "-no-megan" --append
    #./xmlchange -file env_run.xml -id CLM_BLDNML_OPTS -val "-bgc_spinup on" --append

    ./xmlchange -file env_mach_pes.xml -id NTASKS_ATM -val 48
    ./xmlchange -file env_mach_pes.xml -id NTASKS_LND -val 48
    ./xmlchange -file env_mach_pes.xml -id NTASKS_ICE -val 48
    ./xmlchange -file env_mach_pes.xml -id NTASKS_OCN -val 48
    ./xmlchange -file env_mach_pes.xml -id NTASKS_CPL -val 48
    ./xmlchange -file env_mach_pes.xml -id NTASKS_GLC -val 48
    ./xmlchange -file env_mach_pes.xml -id NTASKS_ROF -val 48
    ./xmlchange -file env_mach_pes.xml -id NTASKS_WAV -val 48
    ./xmlchange -file env_mach_pes.xml -id TOTALPES -val 48
    ./xmlchange -file env_mach_pes.xml -id MAX_TASKS_PER_NODE -val 12

    ./cesm_setup

    cat > user_nl_clm <<EOF
EOF
    ./*.build
    ./*.submit
fi

################################################################################
if [ "${SETUP_CASE}" == "ngtedv0_4x5_debugtest" ]; then
    CASE_NAME=${SETUP_CASE}_${GITHASH}
    basedir=$HOME/clmed/ed-clm/cime/scripts
    #### load_machine_files
    cd $basedir
    ./create_newcase -case ${CASE_NAME} -res 4x5_4x5 -compset ICLM45ED -mach lawrencium-lr2 -project ac_ngeet
    cd ${CASE_NAME}

    ./xmlchange -file env_run.xml -id STOP_OPTION -val nyears
    ./xmlchange -file env_run.xml -id STOP_N -val 100
    ./xmlchange -file env_run.xml -id REST_N -val 5

    ./xmlchange -file env_run.xml -id DIN_LOC_ROOT -val /global/home/users/cdkoven/cesm_input_data

    ./xmlchange -file env_build.xml -id EXEROOT -val /global/scratch/cdkoven//$CASE_NAME/bld
    ./xmlchange -file env_run.xml -id RUNDIR -val /global/scratch/cdkoven//$CASE_NAME/run
    ./xmlchange -file env_run.xml -id DOUT_S_ROOT -val /global/scratch/cdkoven//archive/$CASE_NAME

    ./xmlchange -file env_run.xml -id CLM_BLDNML_OPTS -val "-no-megan" --append
    #./xmlchange -file env_run.xml -id CLM_BLDNML_OPTS -val "-bgc_spinup on" --append

    ./xmlchange -file env_mach_pes.xml -id NTASKS_ATM -val 48
    ./xmlchange -file env_mach_pes.xml -id NTASKS_LND -val 48
    ./xmlchange -file env_mach_pes.xml -id NTASKS_ICE -val 48
    ./xmlchange -file env_mach_pes.xml -id NTASKS_OCN -val 48
    ./xmlchange -file env_mach_pes.xml -id NTASKS_CPL -val 48
    ./xmlchange -file env_mach_pes.xml -id NTASKS_GLC -val 48
    ./xmlchange -file env_mach_pes.xml -id NTASKS_ROF -val 48
    ./xmlchange -file env_mach_pes.xml -id NTASKS_WAV -val 48
    ./xmlchange -file env_mach_pes.xml -id TOTALPES -val 48
    ./xmlchange -file env_mach_pes.xml -id MAX_TASKS_PER_NODE -val 12

    ./cesm_setup

    cat > user_nl_clm <<EOF
hist_fincl1 = 'NPP_column','CANOPY_CLOSURE_COL'
finidat = '/global/home/users/cdkoven/scratch/ngtedv0_4x5_coldstartadspinup_aa22be7/run/ngtedv0_4x5_coldstartadspinup_aa22be7.clm2.r.0074-01-01-00000.nc'
EOF
    ./*.build
    ./*.submit
fi



################################################################################
if [ "${SETUP_CASE}" == "ngtedv0_4x5_coldstartadspinup" ]; then
    CASE_NAME=${SETUP_CASE}_${GITHASH}
    basedir=$HOME/clmed/ed-clm/cime/scripts
    #### load_machine_files
    cd $basedir
    ./create_newcase -case ${CASE_NAME} -res 4x5_4x5 -compset ICLM45ED -mach lawrencium-lr2 -project ac_ngeet
    cd ${CASE_NAME}

    ./xmlchange -file env_run.xml -id STOP_OPTION -val nyears
    ./xmlchange -file env_run.xml -id STOP_N -val 100
    ./xmlchange -file env_run.xml -id REST_N -val 5

    ./xmlchange -file env_run.xml -id DIN_LOC_ROOT -val /global/home/users/cdkoven/cesm_input_data

    ./xmlchange -file env_build.xml -id EXEROOT -val /global/scratch/cdkoven//$CASE_NAME/bld
    ./xmlchange -file env_run.xml -id RUNDIR -val /global/scratch/cdkoven//$CASE_NAME/run
    ./xmlchange -file env_run.xml -id DOUT_S_ROOT -val /global/scratch/cdkoven//archive/$CASE_NAME

    ./xmlchange -file env_run.xml -id CLM_BLDNML_OPTS -val "-no-megan" --append
    ./xmlchange -file env_run.xml -id CLM_BLDNML_OPTS -val "-bgc_spinup on" --append

    ./xmlchange -file env_mach_pes.xml -id NTASKS_ATM -val 48
    ./xmlchange -file env_mach_pes.xml -id NTASKS_LND -val 48
    ./xmlchange -file env_mach_pes.xml -id NTASKS_ICE -val 48
    ./xmlchange -file env_mach_pes.xml -id NTASKS_OCN -val 48
    ./xmlchange -file env_mach_pes.xml -id NTASKS_CPL -val 48
    ./xmlchange -file env_mach_pes.xml -id NTASKS_GLC -val 48
    ./xmlchange -file env_mach_pes.xml -id NTASKS_ROF -val 48
    ./xmlchange -file env_mach_pes.xml -id NTASKS_WAV -val 48
    ./xmlchange -file env_mach_pes.xml -id TOTALPES -val 48
    ./xmlchange -file env_mach_pes.xml -id MAX_TASKS_PER_NODE -val 12

    ./cesm_setup

    cat > user_nl_clm <<EOF
hist_fincl1 = 'NPP_column','CANOPY_CLOSURE_COL'
spinup_state=1
EOF
    ./*.build
    ./*.submit
fi


################################################################################
if [ "${SETUP_CASE}" == "ngtedv0_1x1brazil_canopyclosurediagnostic" ]; then
    CASE_NAME=${SETUP_CASE}_${GITHASH}
    echo ${CASE_NAME}
    basedir=${SRCDIR}/cime/scripts
    #### load_machine_files
    cd $basedir
    ./create_newcase -case ${CASE_NAME} -res 1x1_brazil -compset ICLM45ED -mach lawrencium-lr2 -project ac_ngeet
    cd ${CASE_NAME}

    ./xmlchange -file env_run.xml -id STOP_OPTION -val nyears
    ./xmlchange -file env_run.xml -id STOP_N -val 100
    ./xmlchange -file env_run.xml -id REST_N -val 5

    ./xmlchange -file env_run.xml -id DIN_LOC_ROOT -val /global/home/users/cdkoven/cesm_input_data

    ./xmlchange -file env_build.xml -id EXEROOT -val /global/scratch/cdkoven//$CASE_NAME/bld
    ./xmlchange -file env_run.xml -id RUNDIR -val /global/scratch/cdkoven//$CASE_NAME/run
    ./xmlchange -file env_run.xml -id DOUT_S_ROOT -val /global/scratch/cdkoven//archive/$CASE_NAME

    ./xmlchange -file env_run.xml -id CLM_BLDNML_OPTS -val "-no-megan" --append


    ./cesm_setup

cat > user_nl_clm <<EOF 
hist_fincl1 = 'NPP_column'
EOF


    ./*.build
#    ./*.submit
fi

################################################################################
if [ "${SETUP_CASE}" == "ngtedv0_4x5_newpatchhist3_ADSU" ]; then
    CASE_NAME=${SETUP_CASE}_${GITHASH}
    basedir=$HOME/clmed/ed-clm/cime/scripts
    #### load_machine_files
    cd $basedir
    ./create_newcase -case ${CASE_NAME} -res 4x5_4x5 -compset ICLM45ED -mach lawrencium-lr2 -project ac_ngeet
    cd ${CASE_NAME}

    ./xmlchange -file env_run.xml -id STOP_OPTION -val nyears
    ./xmlchange -file env_run.xml -id STOP_N -val 50
    ./xmlchange -file env_run.xml -id REST_N -val 5

    ./xmlchange -file env_run.xml -id DIN_LOC_ROOT -val /global/home/users/cdkoven/cesm_input_data

    ./xmlchange -file env_build.xml -id EXEROOT -val /global/scratch/cdkoven//$CASE_NAME/bld
    ./xmlchange -file env_run.xml -id RUNDIR -val /global/scratch/cdkoven//$CASE_NAME/run
    ./xmlchange -file env_run.xml -id DOUT_S_ROOT -val /global/scratch/cdkoven//archive/$CASE_NAME

    ./xmlchange -file env_run.xml -id CLM_BLDNML_OPTS -val "-no-megan" --append
    ./xmlchange -file env_run.xml -id CLM_BLDNML_OPTS -val "-bgc_spinup on" --append

    ./xmlchange -file env_mach_pes.xml -id NTASKS_ATM -val 48
    ./xmlchange -file env_mach_pes.xml -id NTASKS_LND -val 48
    ./xmlchange -file env_mach_pes.xml -id NTASKS_ICE -val 48
    ./xmlchange -file env_mach_pes.xml -id NTASKS_OCN -val 48
    ./xmlchange -file env_mach_pes.xml -id NTASKS_CPL -val 48
    ./xmlchange -file env_mach_pes.xml -id NTASKS_GLC -val 48
    ./xmlchange -file env_mach_pes.xml -id NTASKS_ROF -val 48
    ./xmlchange -file env_mach_pes.xml -id NTASKS_WAV -val 48
    ./xmlchange -file env_mach_pes.xml -id TOTALPES -val 48
    ./xmlchange -file env_mach_pes.xml -id MAX_TASKS_PER_NODE -val 12

    ./cesm_setup

    cat > user_nl_clm <<EOF
finidat = '/global/home/users/cdkoven/scratch/ngtedv0_4x5_newpatchhist2_ADSU_14c8cb8/run/ngtedv0_4x5_newpatchhist2_ADSU_14c8cb8.clm2.r.0021-01-01-00000.nc'
spinup_state=1
EOF
    ./*.build
    ./*.submit
fi
################################################################################
if [ "${SETUP_CASE}" == "ngtedv0_4x5_newpatchhist2_ADSU" ]; then
    CASE_NAME=${SETUP_CASE}_${GITHASH}
    basedir=$HOME/clmed/ed-clm/cime/scripts
    #### load_machine_files
    cd $basedir
    ./create_newcase -case ${CASE_NAME} -res 4x5_4x5 -compset ICLM45ED -mach lawrencium-lr2 -project ac_ngeet
    cd ${CASE_NAME}

    ./xmlchange -file env_run.xml -id STOP_OPTION -val nyears
    ./xmlchange -file env_run.xml -id STOP_N -val 50
    ./xmlchange -file env_run.xml -id REST_N -val 5

    ./xmlchange -file env_run.xml -id DIN_LOC_ROOT -val /global/home/users/cdkoven/cesm_input_data

    ./xmlchange -file env_build.xml -id EXEROOT -val /global/scratch/cdkoven//$CASE_NAME/bld
    ./xmlchange -file env_run.xml -id RUNDIR -val /global/scratch/cdkoven//$CASE_NAME/run
    ./xmlchange -file env_run.xml -id DOUT_S_ROOT -val /global/scratch/cdkoven//archive/$CASE_NAME

    ./xmlchange -file env_run.xml -id CLM_BLDNML_OPTS -val "-no-megan" --append
    ./xmlchange -file env_run.xml -id CLM_BLDNML_OPTS -val "-bgc_spinup on" --append

    ./xmlchange -file env_mach_pes.xml -id NTASKS_ATM -val 48
    ./xmlchange -file env_mach_pes.xml -id NTASKS_LND -val 48
    ./xmlchange -file env_mach_pes.xml -id NTASKS_ICE -val 48
    ./xmlchange -file env_mach_pes.xml -id NTASKS_OCN -val 48
    ./xmlchange -file env_mach_pes.xml -id NTASKS_CPL -val 48
    ./xmlchange -file env_mach_pes.xml -id NTASKS_GLC -val 48
    ./xmlchange -file env_mach_pes.xml -id NTASKS_ROF -val 48
    ./xmlchange -file env_mach_pes.xml -id NTASKS_WAV -val 48
    ./xmlchange -file env_mach_pes.xml -id TOTALPES -val 48
    ./xmlchange -file env_mach_pes.xml -id MAX_TASKS_PER_NODE -val 12

    ./cesm_setup

    cat > user_nl_clm <<EOF
finidat = '/global/home/users/cdkoven/scratch/ngtedv0_4x5_newpatchhist_14c8cb8/run/ngtedv0_4x5_newpatchhist_14c8cb8.clm2.r.0031-01-01-00000.nc'
EOF
    ./*.build
    ./*.submit
fi


################################################################################
if [ "${SETUP_CASE}" == "ngtedv0_4x5_newpatchhist" ]; then
    CASE_NAME=${SETUP_CASE}_${GITHASH}
    basedir=$HOME/clmed/ed-clm/cime/scripts
    #### load_machine_files
    cd $basedir
    ./create_newcase -case ${CASE_NAME} -res 4x5_4x5 -compset ICLM45ED -mach lawrencium-lr2 -project ac_ngeet
    cd ${CASE_NAME}

    ./xmlchange -file env_run.xml -id STOP_OPTION -val nyears
    ./xmlchange -file env_run.xml -id STOP_N -val 50
    ./xmlchange -file env_run.xml -id REST_N -val 5

    ./xmlchange -file env_run.xml -id DIN_LOC_ROOT -val /global/home/users/cdkoven/cesm_input_data

    ./xmlchange -file env_build.xml -id EXEROOT -val /global/scratch/cdkoven//$CASE_NAME/bld
    ./xmlchange -file env_run.xml -id RUNDIR -val /global/scratch/cdkoven//$CASE_NAME/run
    ./xmlchange -file env_run.xml -id DOUT_S_ROOT -val /global/scratch/cdkoven//archive/$CASE_NAME

    ./xmlchange -file env_run.xml -id CLM_BLDNML_OPTS -val "-no-megan" --append

    ./xmlchange -file env_mach_pes.xml -id NTASKS_ATM -val 24
    ./xmlchange -file env_mach_pes.xml -id NTASKS_LND -val 24
    ./xmlchange -file env_mach_pes.xml -id NTASKS_ICE -val 24
    ./xmlchange -file env_mach_pes.xml -id NTASKS_OCN -val 24
    ./xmlchange -file env_mach_pes.xml -id NTASKS_CPL -val 24
    ./xmlchange -file env_mach_pes.xml -id NTASKS_GLC -val 24
    ./xmlchange -file env_mach_pes.xml -id NTASKS_ROF -val 24
    ./xmlchange -file env_mach_pes.xml -id NTASKS_WAV -val 24
    ./xmlchange -file env_mach_pes.xml -id TOTALPES -val 24
    ./xmlchange -file env_mach_pes.xml -id MAX_TASKS_PER_NODE -val 12

    ./cesm_setup

    cat > user_nl_clm <<EOF
EOF
    ./*.build
    ./*.submit
fi


################################################################################
if [ "${SETUP_CASE}" == "ngtedv0_1x1brazil_hifreqtest" ]; then
    CASE_NAME=${SETUP_CASE}_${GITHASH}
    echo ${CASE_NAME}
    basedir=${SRCDIR}/cime/scripts
    #### load_machine_files
    cd $basedir
    ./create_newcase -case ${CASE_NAME} -res 1x1_brazil -compset ICLM45ED -mach lawrencium-lr2 -project ac_ngeet
    cd ${CASE_NAME}

    ./xmlchange -file env_run.xml -id STOP_OPTION -val ndays
    ./xmlchange -file env_run.xml -id STOP_N -val 10
    ./xmlchange -file env_run.xml -id REST_N -val 10

    ./xmlchange -file env_run.xml -id DIN_LOC_ROOT -val /global/home/users/cdkoven/cesm_input_data

    ./xmlchange -file env_build.xml -id EXEROOT -val /global/scratch/cdkoven//$CASE_NAME/bld
    ./xmlchange -file env_run.xml -id RUNDIR -val /global/scratch/cdkoven//$CASE_NAME/run
    ./xmlchange -file env_run.xml -id DOUT_S_ROOT -val /global/scratch/cdkoven//archive/$CASE_NAME

    ./xmlchange -file env_run.xml -id CLM_BLDNML_OPTS -val "-no-megan" --append


    ./cesm_setup

cat > user_nl_clm <<EOF 
hist_fincl1 = 'NPP_column'
hist_fincl2 = 'NPP','NPP_column','GPP','HR','TSA','TV','FSDS','TOTECOSYSC','NEP','NBP','FCTR','FGEV','FCEV','AR','GROWTH_RESP','MAINT_RESP'
hist_nhtfrq = 0,-1
finidat = '/global/home/users/cdkoven/scratch/ngtedv0_1x1brazil_longrun5_newvars_b1d406e/run/ngtedv0_1x1brazil_longrun5_newvars_b1d406e.clm2.r.0051-01-01-00000.nc'
hist_mfilt=1,1000
EOF


    ./*.build
    ./*.submit
fi

################################################################################
if [ "${SETUP_CASE}" == "ngtedv0_1x1brazil_hifreqtest2" ]; then
    CASE_NAME=${SETUP_CASE}_${GITHASH}
    echo ${CASE_NAME}
    basedir=${SRCDIR}/cime/scripts
    #### load_machine_files
    cd $basedir
    ./create_newcase -case ${CASE_NAME} -res 1x1_brazil -compset ICLM45ED -mach lawrencium-lr2 -project ac_ngeet
    cd ${CASE_NAME}

    ./xmlchange -file env_run.xml -id STOP_OPTION -val ndays
    ./xmlchange -file env_run.xml -id STOP_N -val 10
    ./xmlchange -file env_run.xml -id REST_N -val 10

    ./xmlchange -file env_run.xml -id DIN_LOC_ROOT -val /global/home/users/cdkoven/cesm_input_data

    ./xmlchange -file env_build.xml -id EXEROOT -val /global/scratch/cdkoven//$CASE_NAME/bld
    ./xmlchange -file env_run.xml -id RUNDIR -val /global/scratch/cdkoven//$CASE_NAME/run
    ./xmlchange -file env_run.xml -id DOUT_S_ROOT -val /global/scratch/cdkoven//archive/$CASE_NAME

    ./xmlchange -file env_run.xml -id CLM_BLDNML_OPTS -val "-no-megan" --append


    ./cesm_setup

cat > user_nl_clm <<EOF 
hist_fincl1 = 'NPP_hifreq'
hist_fincl2 = 'NPP','NPP_hifreq','GPP','AR','HR','TSA','TV','FSDS','TOTECOSYSC','NEP','NBP'
hist_nhtfrq = 0,-1
finidat = '/global/home/users/cdkoven/scratch/ngtedv0_1x1brazil_longrun5_newvars_b1d406e/run/ngtedv0_1x1brazil_longrun5_newvars_b1d406e.clm2.r.0051-01-01-00000.nc'
EOF

    ./*.build
    ./*.submit
fi

################################################################################

if [ "${SETUP_CASE}" == "ngtedv0_1x1brazil_longrun5_newvars" ]; then
    CASE_NAME=${SETUP_CASE}_${GITHASH}
    echo ${CASE_NAME}
    basedir=${SRCDIR}/cime/scripts
    #### load_machine_files
    cd $basedir
    ./create_newcase -case ${CASE_NAME} -res 1x1_brazil -compset ICLM45ED -mach lawrencium-lr2 -project ac_ngeet
    cd ${CASE_NAME}

    ./xmlchange -file env_run.xml -id STOP_OPTION -val nyears
    ./xmlchange -file env_run.xml -id STOP_N -val 50
    ./xmlchange -file env_run.xml -id REST_N -val 10

    ./xmlchange -file env_run.xml -id DIN_LOC_ROOT -val /global/home/users/cdkoven/cesm_input_data

    ./xmlchange -file env_build.xml -id EXEROOT -val /global/scratch/cdkoven//$CASE_NAME/bld
    ./xmlchange -file env_run.xml -id RUNDIR -val /global/scratch/cdkoven//$CASE_NAME/run
    ./xmlchange -file env_run.xml -id DOUT_S_ROOT -val /global/scratch/cdkoven//archive/$CASE_NAME

    ./xmlchange -file env_run.xml -id CLM_BLDNML_OPTS -val "-no-megan" --append


    ./cesm_setup

cat > user_nl_clm <<EOF 
hist_fincl1 = 'NPP_hifreq'
EOF

    ./*.build
    ./*.submit
fi
################################################################################
if [ "${SETUP_CASE}" == "ngtedv0_1x1brazil_longrun4_std_newsign" ]; then
    CASE_NAME=${SETUP_CASE}_${GITHASH}
    echo ${CASE_NAME}
    basedir=${SRCDIR}/cime/scripts
    #### load_machine_files
    cd $basedir
    ./create_newcase -case ${CASE_NAME} -res 1x1_brazil -compset ICLM45ED -mach lawrencium-lr2 -project ac_ngeet
    cd ${CASE_NAME}

    ./xmlchange -file env_run.xml -id STOP_OPTION -val nyears
    ./xmlchange -file env_run.xml -id STOP_N -val 50
    ./xmlchange -file env_run.xml -id REST_N -val 10

    ./xmlchange -file env_run.xml -id DIN_LOC_ROOT -val /global/home/users/cdkoven/cesm_input_data

    ./xmlchange -file env_build.xml -id EXEROOT -val /global/scratch/cdkoven//$CASE_NAME/bld
    ./xmlchange -file env_run.xml -id RUNDIR -val /global/scratch/cdkoven//$CASE_NAME/run
    ./xmlchange -file env_run.xml -id DOUT_S_ROOT -val /global/scratch/cdkoven//archive/$CASE_NAME

    ./xmlchange -file env_run.xml -id CLM_BLDNML_OPTS -val "-no-megan" --append


    ./cesm_setup

cat > user_nl_clm <<EOF 
hist_fincl1 = 'NPP_hifreq'
EOF

    ./*.build
    ./*.submit
fi
################################################################################
if [ "${SETUP_CASE}" == "ngtedv0_1x1brazil_longrun3_std_newunits" ]; then
    CASE_NAME=${SETUP_CASE}_${GITHASH}
    echo ${CASE_NAME}
    basedir=${SRCDIR}/cime/scripts
    #### load_machine_files
    cd $basedir
    ./create_newcase -case ${CASE_NAME} -res 1x1_brazil -compset ICLM45ED -mach lawrencium-lr2 -project ac_ngeet
    cd ${CASE_NAME}

    ./xmlchange -file env_run.xml -id STOP_OPTION -val nyears
    ./xmlchange -file env_run.xml -id STOP_N -val 50
    ./xmlchange -file env_run.xml -id REST_N -val 10

    ./xmlchange -file env_run.xml -id DIN_LOC_ROOT -val /global/home/users/cdkoven/cesm_input_data

    ./xmlchange -file env_build.xml -id EXEROOT -val /global/scratch/cdkoven//$CASE_NAME/bld
    ./xmlchange -file env_run.xml -id RUNDIR -val /global/scratch/cdkoven//$CASE_NAME/run
    ./xmlchange -file env_run.xml -id DOUT_S_ROOT -val /global/scratch/cdkoven//archive/$CASE_NAME

    ./xmlchange -file env_run.xml -id CLM_BLDNML_OPTS -val "-no-megan" --append


    ./cesm_setup

cat > user_nl_clm <<EOF 
hist_fincl1 = 'NPP_hifreq'
EOF

    ./*.build
    ./*.submit
fi
################################################################################
if [ "${SETUP_CASE}" == "ngtedv0_1x1brazil_longrun2_std_newunits" ]; then
    CASE_NAME=${SETUP_CASE}_${GITHASH}
    echo ${CASE_NAME}
    basedir=${SRCDIR}/cime/scripts
    #### load_machine_files
    cd $basedir
    ./create_newcase -case ${CASE_NAME} -res 1x1_brazil -compset ICLM45ED -mach lawrencium-lr2 -project ac_ngeet
    cd ${CASE_NAME}

    ./xmlchange -file env_run.xml -id STOP_OPTION -val nyears
    ./xmlchange -file env_run.xml -id STOP_N -val 50
    ./xmlchange -file env_run.xml -id REST_N -val 10

    ./xmlchange -file env_run.xml -id DIN_LOC_ROOT -val /global/home/users/cdkoven/cesm_input_data

    ./xmlchange -file env_build.xml -id EXEROOT -val /global/scratch/cdkoven//$CASE_NAME/bld
    ./xmlchange -file env_run.xml -id RUNDIR -val /global/scratch/cdkoven//$CASE_NAME/run
    ./xmlchange -file env_run.xml -id DOUT_S_ROOT -val /global/scratch/cdkoven//archive/$CASE_NAME

    ./xmlchange -file env_run.xml -id CLM_BLDNML_OPTS -val "-no-megan" --append


    ./cesm_setup

    ./*.build
    ./*.submit
fi

################################################################################
if [ "${SETUP_CASE}" == "ngtedv0_1x1brazil_longrun_ADSU" ]; then
    CASE_NAME=${SETUP_CASE}_${GITHASH}
    echo ${CASE_NAME}
    basedir=${SRCDIR}/cime/scripts
    #### load_machine_files
    cd $basedir
    ./create_newcase -case ${CASE_NAME} -res 1x1_brazil -compset ICLM45ED -mach lawrencium-lr2 -project ac_ngeet
    cd ${CASE_NAME}

    ./xmlchange -file env_run.xml -id STOP_OPTION -val nyears
    ./xmlchange -file env_run.xml -id STOP_N -val 50
    ./xmlchange -file env_run.xml -id REST_N -val 10

    ./xmlchange -file env_run.xml -id DIN_LOC_ROOT -val /global/home/users/cdkoven/cesm_input_data

    ./xmlchange -file env_build.xml -id EXEROOT -val /global/scratch/cdkoven//$CASE_NAME/bld
    ./xmlchange -file env_run.xml -id RUNDIR -val /global/scratch/cdkoven//$CASE_NAME/run
    ./xmlchange -file env_run.xml -id DOUT_S_ROOT -val /global/scratch/cdkoven//archive/$CASE_NAME

    ./xmlchange -file env_run.xml -id CLM_BLDNML_OPTS -val "-no-megan" --append
    ./xmlchange -file env_run.xml -id CLM_BLDNML_OPTS -val "-bgc_spinup on" --append

    ./cesm_setup

#     cat > user_nl_clm <<EOF
# spinup_state=1
# EOF

    ./*.build
    ./*.submit
fi

################################################################################
if [ "${SETUP_CASE}" == "ngtedv0_1x1brazil_longrun_standard" ]; then
    CASE_NAME=${SETUP_CASE}_${GITHASH}
    echo ${CASE_NAME}
    basedir=${SRCDIR}/cime/scripts
    #### load_machine_files
    cd $basedir
    ./create_newcase -case ${CASE_NAME} -res 1x1_brazil -compset ICLM45ED -mach lawrencium-lr2 -project ac_ngeet
    cd ${CASE_NAME}

    ./xmlchange -file env_run.xml -id STOP_OPTION -val nyears
    ./xmlchange -file env_run.xml -id STOP_N -val 50
    ./xmlchange -file env_run.xml -id REST_N -val 10

    ./xmlchange -file env_run.xml -id DIN_LOC_ROOT -val /global/home/users/cdkoven/cesm_input_data

    ./xmlchange -file env_build.xml -id EXEROOT -val /global/scratch/cdkoven//$CASE_NAME/bld
    ./xmlchange -file env_run.xml -id RUNDIR -val /global/scratch/cdkoven//$CASE_NAME/run
    ./xmlchange -file env_run.xml -id DOUT_S_ROOT -val /global/scratch/cdkoven//archive/$CASE_NAME

    ./xmlchange -file env_run.xml -id CLM_BLDNML_OPTS -val "-no-megan" --append


    ./cesm_setup

    ./*.build
    ./*.submit
fi

################################################################################
if [ "${SETUP_CASE}" == "ngtedv0_4x5_test9_control" ]; then
    CASE_NAME=${SETUP_CASE}_${GITHASH}
    basedir=$HOME/clmed/ed-clm/cime/scripts
    #### load_machine_files
    cd $basedir
    ./create_newcase -case ${CASE_NAME} -res 4x5_4x5 -compset ICLM45ED -mach lawrencium-lr2 -project ac_ngeet
    cd ${CASE_NAME}

    ./xmlchange -file env_run.xml -id STOP_OPTION -val nmonths
    ./xmlchange -file env_run.xml -id STOP_N -val 18

    ./xmlchange -file env_run.xml -id DIN_LOC_ROOT -val /global/home/users/cdkoven/cesm_input_data

    ./xmlchange -file env_build.xml -id EXEROOT -val /global/scratch/cdkoven//$CASE_NAME/bld
    ./xmlchange -file env_run.xml -id RUNDIR -val /global/scratch/cdkoven//$CASE_NAME/run
    ./xmlchange -file env_run.xml -id DOUT_S_ROOT -val /global/scratch/cdkoven//archive/$CASE_NAME

    ./xmlchange -file env_run.xml -id CLM_BLDNML_OPTS -val "-no-megan" --append

    ./xmlchange -file env_mach_pes.xml -id NTASKS_ATM -val 24
    ./xmlchange -file env_mach_pes.xml -id NTASKS_LND -val 24
    ./xmlchange -file env_mach_pes.xml -id NTASKS_ICE -val 24
    ./xmlchange -file env_mach_pes.xml -id NTASKS_OCN -val 24
    ./xmlchange -file env_mach_pes.xml -id NTASKS_CPL -val 24
    ./xmlchange -file env_mach_pes.xml -id NTASKS_GLC -val 24
    ./xmlchange -file env_mach_pes.xml -id NTASKS_ROF -val 24
    ./xmlchange -file env_mach_pes.xml -id NTASKS_WAV -val 24
    ./xmlchange -file env_mach_pes.xml -id TOTALPES -val 24
    ./xmlchange -file env_mach_pes.xml -id MAX_TASKS_PER_NODE -val 12

    ./cesm_setup

    cat > user_nl_clm <<EOF
EOF
    ./*.build
    ./*.submit
fi

################################################################################
if [ "${SETUP_CASE}" == "ngtedv0_4x5_test8_sourcemods" ]; then
    CASE_NAME=${SETUP_CASE}_${GITHASH}
    basedir=$HOME/clmed/ed-clm/cime/scripts
    #### load_machine_files
    cd $basedir
    ./create_newcase -case ${CASE_NAME} -res 4x5_4x5 -compset ICLM45ED -mach lawrencium-lr2 -project ac_ngeet
    cd ${CASE_NAME}

    ./xmlchange -file env_run.xml -id STOP_OPTION -val nmonths
    ./xmlchange -file env_run.xml -id STOP_N -val 18

    ./xmlchange -file env_run.xml -id DIN_LOC_ROOT -val /global/home/users/cdkoven/cesm_input_data

    ./xmlchange -file env_build.xml -id EXEROOT -val /global/scratch/cdkoven//$CASE_NAME/bld
    ./xmlchange -file env_run.xml -id RUNDIR -val /global/scratch/cdkoven//$CASE_NAME/run
    ./xmlchange -file env_run.xml -id DOUT_S_ROOT -val /global/scratch/cdkoven//archive/$CASE_NAME

    ./xmlchange -file env_run.xml -id CLM_BLDNML_OPTS -val "-no-megan" --append

    ./xmlchange -file env_mach_pes.xml -id NTASKS_ATM -val 24
    ./xmlchange -file env_mach_pes.xml -id NTASKS_LND -val 24
    ./xmlchange -file env_mach_pes.xml -id NTASKS_ICE -val 24
    ./xmlchange -file env_mach_pes.xml -id NTASKS_OCN -val 24
    ./xmlchange -file env_mach_pes.xml -id NTASKS_CPL -val 24
    ./xmlchange -file env_mach_pes.xml -id NTASKS_GLC -val 24
    ./xmlchange -file env_mach_pes.xml -id NTASKS_ROF -val 24
    ./xmlchange -file env_mach_pes.xml -id NTASKS_WAV -val 24
    ./xmlchange -file env_mach_pes.xml -id TOTALPES -val 24
    ./xmlchange -file env_mach_pes.xml -id MAX_TASKS_PER_NODE -val 12

    ./cesm_setup

    cat > user_nl_clm <<EOF
EOF
fi

################################################################################
if [ "${SETUP_CASE}" == "ngtedv0_4x5_test7_novertsoilc" ]; then
    CASE_NAME=${SETUP_CASE}_${GITHASH}
    basedir=$HOME/clmed/ed-clm/cime/scripts
    #### load_machine_files
    cd $basedir
    ./create_newcase -case ${CASE_NAME} -res 4x5_4x5 -compset ICLM45ED -mach lawrencium-lr2 -project ac_ngeet
    cd ${CASE_NAME}

    ./xmlchange -file env_run.xml -id STOP_OPTION -val nmonths
    ./xmlchange -file env_run.xml -id STOP_N -val 18

    ./xmlchange -file env_run.xml -id DIN_LOC_ROOT -val /global/home/users/cdkoven/cesm_input_data

    ./xmlchange -file env_build.xml -id EXEROOT -val /global/scratch/cdkoven//$CASE_NAME/bld
    ./xmlchange -file env_run.xml -id RUNDIR -val /global/scratch/cdkoven//$CASE_NAME/run
    ./xmlchange -file env_run.xml -id DOUT_S_ROOT -val /global/scratch/cdkoven//archive/$CASE_NAME

    ./xmlchange -file env_run.xml -id CLM_BLDNML_OPTS -val "-no-megan" --append

    ./xmlchange -file env_mach_pes.xml -id NTASKS_ATM -val 24
    ./xmlchange -file env_mach_pes.xml -id NTASKS_LND -val 24
    ./xmlchange -file env_mach_pes.xml -id NTASKS_ICE -val 24
    ./xmlchange -file env_mach_pes.xml -id NTASKS_OCN -val 24
    ./xmlchange -file env_mach_pes.xml -id NTASKS_CPL -val 24
    ./xmlchange -file env_mach_pes.xml -id NTASKS_GLC -val 24
    ./xmlchange -file env_mach_pes.xml -id NTASKS_ROF -val 24
    ./xmlchange -file env_mach_pes.xml -id NTASKS_WAV -val 24
    ./xmlchange -file env_mach_pes.xml -id TOTALPES -val 24
    ./xmlchange -file env_mach_pes.xml -id MAX_TASKS_PER_NODE -val 12

    ./cesm_setup

    cat > user_nl_clm <<EOF
use_vertsoilc = .false.
EOF
    ./*.build
    ./*.submit
fi

################################################################################
if [ "${SETUP_CASE}" == "ngtedv0_4x5_test6" ]; then
    CASE_NAME=${SETUP_CASE}_${GITHASH}
    basedir=$HOME/clmed/ed-clm/cime/scripts
    #### load_machine_files
    cd $basedir
    ./create_newcase -case ${CASE_NAME} -res 4x5_4x5 -compset ICLM45ED -mach lawrencium-lr2 -project ac_ngeet
    cd ${CASE_NAME}

    ./xmlchange -file env_run.xml -id STOP_OPTION -val nmonths
    ./xmlchange -file env_run.xml -id STOP_N -val 12

    ./xmlchange -file env_run.xml -id DIN_LOC_ROOT -val /global/home/users/cdkoven/cesm_input_data

    ./xmlchange -file env_build.xml -id EXEROOT -val /global/scratch/cdkoven//$CASE_NAME/bld
    ./xmlchange -file env_run.xml -id RUNDIR -val /global/scratch/cdkoven//$CASE_NAME/run
    ./xmlchange -file env_run.xml -id DOUT_S_ROOT -val /global/scratch/cdkoven//archive/$CASE_NAME

    ./xmlchange -file env_run.xml -id CLM_BLDNML_OPTS -val "-no-megan" --append


    ./cesm_setup

fi

################################################################################
if [ "${SETUP_CASE}" == "ngtedv0_1x1brazil_test1" ]; then
    CASE_NAME=${SETUP_CASE}_${GITHASH}
    echo ${CASE_NAME}
    basedir=${SRCDIR}/cime/scripts
    #### load_machine_files
    cd $basedir
    ./create_newcase -case ${CASE_NAME} -res 1x1_brazil -compset ICLM45ED -mach lawrencium-lr2 -project ac_ngeet
    cd ${CASE_NAME}

    ./xmlchange -file env_run.xml -id STOP_OPTION -val nmonths
    ./xmlchange -file env_run.xml -id STOP_N -val 12

    ./xmlchange -file env_run.xml -id DIN_LOC_ROOT -val /global/home/users/cdkoven/cesm_input_data

    ./xmlchange -file env_build.xml -id EXEROOT -val /global/scratch/cdkoven//$CASE_NAME/bld
    ./xmlchange -file env_run.xml -id RUNDIR -val /global/scratch/cdkoven//$CASE_NAME/run
    ./xmlchange -file env_run.xml -id DOUT_S_ROOT -val /global/scratch/cdkoven//archive/$CASE_NAME

    ./xmlchange -file env_run.xml -id CLM_BLDNML_OPTS -val "-no-megan" --append


    ./cesm_setup

fi

################################################################################
if [ "${SETUP_CASE}" == "ngtedv0_4x5_mainbranch_test5_plain" ]; then
    CASE_NAME=${SETUP_CASE}
    basedir=$HOME/clmed/ed-clm/cime/scripts
    #### load_machine_files
    cd $basedir
    ./create_newcase -case ${CASE_NAME} -res 4x5_4x5 -compset ICLM45ED -mach lawrencium-lr2 -project ac_ngeet
    cd ${CASE_NAME}

    ./xmlchange -file env_run.xml -id STOP_OPTION -val nmonths
    ./xmlchange -file env_run.xml -id STOP_N -val 12

    ./xmlchange -file env_run.xml -id DIN_LOC_ROOT -val /global/home/users/cdkoven/cesm_input_data

    ./xmlchange -file env_build.xml -id EXEROOT -val /global/scratch/cdkoven//$CASE_NAME/bld
    ./xmlchange -file env_run.xml -id RUNDIR -val /global/scratch/cdkoven//$CASE_NAME/run
    ./xmlchange -file env_run.xml -id DOUT_S_ROOT -val /global/scratch/cdkoven//archive/$CASE_NAME

    ./xmlchange -file env_run.xml -id CLM_BLDNML_OPTS -val "-no-megan" --append


    ./cesm_setup

fi


################################################################################
if [ "${SETUP_CASE}" == "ngtedv0_4x5_trunk120_test1" ]; then
    CASE_NAME=${SETUP_CASE}
    basedir=/global/home/users/cdkoven/ccsm_source/clm4_5_1_r120/cime/scripts
    #### load_machine_files
    cd $basedir
    ./create_newcase -case ${CASE_NAME} -res 4x5_4x5 -compset ICLM45ED -mach lawrencium-lr2 -project ac_ngeet
    cd ${CASE_NAME}

    ./xmlchange -file env_run.xml -id STOP_OPTION -val nmonths
    ./xmlchange -file env_run.xml -id STOP_N -val 12

    # ./xmlchange -file env_build.xml -id COMPILER -val intel
    # ./xmlchange -file env_build.xml -id OS -val LINUX
    # ./xmlchange -file env_build.xml -id MPILIB -val openmpi
    # ./xmlchange -file env_build.xml -id CESMSCRATCHROOT -val /global/scratch/cdkoven
    # ./xmlchange -file env_run.xml -id BATCHSUBMIT -val sbatch
    # ./xmlchange -file env_run.xml -id BATCHQUERY -val squeue
    # ./xmlchange -file env_mach_pes.xml -id MAX_TASKS_PER_NODE -val 12

    ./xmlchange -file env_run.xml -id DIN_LOC_ROOT -val /global/home/users/cdkoven/cesm_input_data

    ./xmlchange -file env_build.xml -id EXEROOT -val /global/scratch/cdkoven//$CASE_NAME/bld
    ./xmlchange -file env_run.xml -id RUNDIR -val /global/scratch/cdkoven//$CASE_NAME/run
    ./xmlchange -file env_run.xml -id DOUT_S_ROOT -val /global/scratch/cdkoven//archive/$CASE_NAME

    ./xmlchange -file env_run.xml -id CLM_BLDNML_OPTS -val "-no-megan" --append


    ./cesm_setup

fi

################################################################################
if [ "${SETUP_CASE}" == "ngtedv0_4x5_bugbranch_test4_plain" ]; then
    CASE_NAME=${SETUP_CASE}
    basedir=$HOME/clmed/ed-clm/cime/scripts
    #### load_machine_files
    cd $basedir
    ./create_newcase -case ${CASE_NAME} -res 4x5_4x5 -compset ICLM45ED -mach lawrencium-lr2 -project ac_ngeet
    cd ${CASE_NAME}

    ./xmlchange -file env_run.xml -id STOP_OPTION -val nmonths
    ./xmlchange -file env_run.xml -id STOP_N -val 12

    ./xmlchange -file env_run.xml -id DIN_LOC_ROOT -val /global/home/users/cdkoven/cesm_input_data

    ./xmlchange -file env_build.xml -id EXEROOT -val /global/scratch/cdkoven//$CASE_NAME/bld
    ./xmlchange -file env_run.xml -id RUNDIR -val /global/scratch/cdkoven//$CASE_NAME/run
    ./xmlchange -file env_run.xml -id DOUT_S_ROOT -val /global/scratch/cdkoven//archive/$CASE_NAME

    ./xmlchange -file env_run.xml -id CLM_BLDNML_OPTS -val "-no-megan" --append


    ./cesm_setup

fi

################################################################################
if [ "${SETUP_CASE}" == "ngtedv0_4x5_bugbranch_test3" ]; then
    CASE_NAME=${SETUP_CASE}
    basedir=$HOME/clmed/ed-clm/cime/scripts
    #### load_machine_files
    cd $basedir
    ./create_newcase -case ${CASE_NAME} -res 4x5_4x5 -compset ICLM45ED -mach lawrencium-lr2 -project ac_ngeet
    cd ${CASE_NAME}

    ./xmlchange -file env_run.xml -id STOP_OPTION -val nmonths
    ./xmlchange -file env_run.xml -id STOP_N -val 1

    ./xmlchange -file env_run.xml -id DIN_LOC_ROOT -val /global/home/users/cdkoven/cesm_input_data

    ./xmlchange -file env_build.xml -id EXEROOT -val /global/scratch/cdkoven//$CASE_NAME/bld
    ./xmlchange -file env_run.xml -id RUNDIR -val /global/scratch/cdkoven//$CASE_NAME/run
    ./xmlchange -file env_run.xml -id DOUT_S_ROOT -val /global/scratch/cdkoven//archive/$CASE_NAME

    ./xmlchange -file env_run.xml -id CLM_BLDNML_OPTS -val "-no-megan" --append
    ./xmlchange -file env_run.xml -id DOUT_S_SAVE_INTERIM_RESTART_FILES -val TRUE
    ./xmlchange -file env_run.xml -id DOUT_S_SAVE_EVERY_NTH_RESTART_FILE_SET -val 1

    # ./xmlchange -file env_mach_pes.xml -id NTASKS_ATM -val 1
    # ./xmlchange -file env_mach_pes.xml -id NTASKS_LND -val 1
    # ./xmlchange -file env_mach_pes.xml -id NTASKS_ICE -val 1
    # ./xmlchange -file env_mach_pes.xml -id NTASKS_OCN -val 1
    # ./xmlchange -file env_mach_pes.xml -id NTASKS_CPL -val 1
    # ./xmlchange -file env_mach_pes.xml -id NTASKS_GLC -val 1
    # ./xmlchange -file env_mach_pes.xml -id NTASKS_ROF -val 1
    # ./xmlchange -file env_mach_pes.xml -id NTASKS_WAV -val 1
    # ./xmlchange -file env_mach_pes.xml -id TOTALPES -val 1
    # ./xmlchange -file env_mach_pes.xml -id MAX_TASKS_PER_NODE -val 1

    ./cesm_setup

    cat > user_nl_clm <<EOF
hist_fincl1 = 'ED_BA_GD_SCPF','ED_DDBH_GD_SCPF','ED_GPP_GD_SCPF','ED_M1_GD_SCPF','ED_M2_GD_SCPF','ED_M3_GD_SCPF','ED_M4_GD_SCPF','ED_M5_GD_SCPF','ED_NPLANT_GD_SCPF','ED_NPP_AGDW_GD_SCPF','ED_NPP_AGSW_GD_SCPF','ED_NPP_BGDW_GD_SCPF','ED_NPP_BGSW_GD_SCPF''ED_NPP_FNRT_GD_SCPF','ED_NPP_LEAF_GD_SCPF','ED_NPP_SEED_GD_SCPF','ED_NPP_STOR_GD_SCPF','NEP','NBP','TOTSOMC'
EOF
fi



################################################################################
if [ "${SETUP_CASE}" == "ngtedv0_4x5_bugbranch_test2_gcc" ]; then
    CASE_NAME=${SETUP_CASE}
    basedir=$HOME/clmed/ed-clm/cime/scripts
    #### load_machine_files
    cd $basedir
    ./create_newcase -case ${CASE_NAME} -res 4x5_4x5 -compset ICLM45ED -mach lawrencium-lr2 -project ac_ngeet -compiler gcc
    cd ${CASE_NAME}

    ./xmlchange -file env_run.xml -id STOP_OPTION -val nyears
    ./xmlchange -file env_run.xml -id STOP_N -val 20

    ./xmlchange -file env_run.xml -id DIN_LOC_ROOT -val /global/home/users/cdkoven/cesm_input_data

    ./xmlchange -file env_build.xml -id EXEROOT -val /global/scratch/cdkoven//$CASE_NAME/bld
    ./xmlchange -file env_run.xml -id RUNDIR -val /global/scratch/cdkoven//$CASE_NAME/run
    ./xmlchange -file env_run.xml -id DOUT_S_ROOT -val /global/scratch/cdkoven//archive/$CASE_NAME

    ./xmlchange -file env_run.xml -id CLM_BLDNML_OPTS -val "-no-megan" --append
    ./xmlchange -file env_run.xml -id DOUT_S_SAVE_INTERIM_RESTART_FILES -val TRUE
    ./xmlchange -file env_run.xml -id DOUT_S_SAVE_EVERY_NTH_RESTART_FILE_SET -val 1

    # ./xmlchange -file env_mach_pes.xml -id NTASKS_ATM -val 1
    # ./xmlchange -file env_mach_pes.xml -id NTASKS_LND -val 1
    # ./xmlchange -file env_mach_pes.xml -id NTASKS_ICE -val 1
    # ./xmlchange -file env_mach_pes.xml -id NTASKS_OCN -val 1
    # ./xmlchange -file env_mach_pes.xml -id NTASKS_CPL -val 1
    # ./xmlchange -file env_mach_pes.xml -id NTASKS_GLC -val 1
    # ./xmlchange -file env_mach_pes.xml -id NTASKS_ROF -val 1
    # ./xmlchange -file env_mach_pes.xml -id NTASKS_WAV -val 1
    # ./xmlchange -file env_mach_pes.xml -id TOTALPES -val 1
    # ./xmlchange -file env_mach_pes.xml -id MAX_TASKS_PER_NODE -val 1

    ./cesm_setup

    cat > user_nl_clm <<EOF
hist_fincl1 = 'ED_BA_GD_SCPF','ED_DDBH_GD_SCPF','ED_GPP_GD_SCPF','ED_M1_GD_SCPF','ED_M2_GD_SCPF','ED_M3_GD_SCPF','ED_M4_GD_SCPF','ED_M5_GD_SCPF','ED_NPLANT_GD_SCPF','ED_NPP_AGDW_GD_SCPF','ED_NPP_AGSW_GD_SCPF','ED_NPP_BGDW_GD_SCPF','ED_NPP_BGSW_GD_SCPF''ED_NPP_FNRT_GD_SCPF','ED_NPP_LEAF_GD_SCPF','ED_NPP_SEED_GD_SCPF','ED_NPP_STOR_GD_SCPF'
EOF
fi


################################################################################
if [ "${SETUP_CASE}" == "ngtedv0_4x5_mainbranch_test1" ]; then
    CASE_NAME=${SETUP_CASE}
    basedir=$HOME/clmed/ed-clm/cime/scripts
    #### load_machine_files
    cd $basedir
    ./create_newcase -case ${CASE_NAME} -res 4x5_4x5 -compset ICLM45ED -mach lawrencium-lr2 -project ac_ngeet
    cd ${CASE_NAME}

    ./xmlchange -file env_run.xml -id STOP_OPTION -val nyears
    ./xmlchange -file env_run.xml -id STOP_N -val 20

    ./xmlchange -file env_run.xml -id DIN_LOC_ROOT -val /global/home/users/cdkoven/cesm_input_data

    ./xmlchange -file env_build.xml -id EXEROOT -val /global/scratch/cdkoven//$CASE_NAME/bld
    ./xmlchange -file env_run.xml -id RUNDIR -val /global/scratch/cdkoven//$CASE_NAME/run
    ./xmlchange -file env_run.xml -id DOUT_S_ROOT -val /global/scratch/cdkoven//archive/$CASE_NAME

    ./xmlchange -file env_run.xml -id CLM_BLDNML_OPTS -val "-no-megan" --append
    ./xmlchange -file env_run.xml -id DOUT_S_SAVE_INTERIM_RESTART_FILES -val TRUE
    ./xmlchange -file env_run.xml -id DOUT_S_SAVE_EVERY_NTH_RESTART_FILE_SET -val 1

    # ./xmlchange -file env_mach_pes.xml -id NTASKS_ATM -val 1
    # ./xmlchange -file env_mach_pes.xml -id NTASKS_LND -val 1
    # ./xmlchange -file env_mach_pes.xml -id NTASKS_ICE -val 1
    # ./xmlchange -file env_mach_pes.xml -id NTASKS_OCN -val 1
    # ./xmlchange -file env_mach_pes.xml -id NTASKS_CPL -val 1
    # ./xmlchange -file env_mach_pes.xml -id NTASKS_GLC -val 1
    # ./xmlchange -file env_mach_pes.xml -id NTASKS_ROF -val 1
    # ./xmlchange -file env_mach_pes.xml -id NTASKS_WAV -val 1
    # ./xmlchange -file env_mach_pes.xml -id TOTALPES -val 1
    # ./xmlchange -file env_mach_pes.xml -id MAX_TASKS_PER_NODE -val 1

    ./cesm_setup

    cat > user_nl_clm <<EOF
hist_fincl1 = 'ED_BA_GD_SCPF','ED_DDBH_GD_SCPF','ED_GPP_GD_SCPF','ED_M1_GD_SCPF','ED_M2_GD_SCPF','ED_M3_GD_SCPF','ED_M4_GD_SCPF','ED_M5_GD_SCPF','ED_NPLANT_GD_SCPF','ED_NPP_AGDW_GD_SCPF','ED_NPP_AGSW_GD_SCPF','ED_NPP_BGDW_GD_SCPF','ED_NPP_BGSW_GD_SCPF''ED_NPP_FNRT_GD_SCPF','ED_NPP_LEAF_GD_SCPF','ED_NPP_SEED_GD_SCPF','ED_NPP_STOR_GD_SCPF'
EOF
fi


################################################################################
if [ "${SETUP_CASE}" == "ngtedv0_1x1brazil_bugbranch_test1" ]; then
    CASE_NAME=${SETUP_CASE}
    basedir=$HOME/clmed/ed-clm/cime/scripts
    #### load_machine_files
    cd $basedir
    ./create_newcase -case ${CASE_NAME} -res 1x1_brazil -compset ICLM45ED -mach lawrencium-lr2 -project ac_ngeet
    cd ${CASE_NAME}

    ./xmlchange -file env_run.xml -id STOP_OPTION -val nyears
    ./xmlchange -file env_run.xml -id STOP_N -val 20

    ./xmlchange -file env_run.xml -id DIN_LOC_ROOT -val /global/home/users/cdkoven/cesm_input_data

    ./xmlchange -file env_build.xml -id EXEROOT -val /global/scratch/cdkoven//$CASE_NAME/bld
    ./xmlchange -file env_run.xml -id RUNDIR -val /global/scratch/cdkoven//$CASE_NAME/run
    ./xmlchange -file env_run.xml -id DOUT_S_ROOT -val /global/scratch/cdkoven//archive/$CASE_NAME

    ./xmlchange -file env_run.xml -id CLM_BLDNML_OPTS -val "-no-megan" --append
    ./xmlchange -file env_run.xml -id DOUT_S_SAVE_INTERIM_RESTART_FILES -val TRUE
    ./xmlchange -file env_run.xml -id DOUT_S_SAVE_EVERY_NTH_RESTART_FILE_SET -val 1

    ./xmlchange -file env_mach_pes.xml -id NTASKS_ATM -val 1
    ./xmlchange -file env_mach_pes.xml -id NTASKS_LND -val 1
    ./xmlchange -file env_mach_pes.xml -id NTASKS_ICE -val 1
    ./xmlchange -file env_mach_pes.xml -id NTASKS_OCN -val 1
    ./xmlchange -file env_mach_pes.xml -id NTASKS_CPL -val 1
    ./xmlchange -file env_mach_pes.xml -id NTASKS_GLC -val 1
    ./xmlchange -file env_mach_pes.xml -id NTASKS_ROF -val 1
    ./xmlchange -file env_mach_pes.xml -id NTASKS_WAV -val 1
    ./xmlchange -file env_mach_pes.xml -id TOTALPES -val 1
    ./xmlchange -file env_mach_pes.xml -id MAX_TASKS_PER_NODE -val 1

    ./cesm_setup

    cat > user_nl_clm <<EOF
hist_fincl1 = 'ED_BA_GD_SCPF','ED_DDBH_GD_SCPF','ED_GPP_GD_SCPF','ED_M1_GD_SCPF','ED_M2_GD_SCPF','ED_M3_GD_SCPF','ED_M4_GD_SCPF','ED_M5_GD_SCPF','ED_NPLANT_GD_SCPF','ED_NPP_AGDW_GD_SCPF','ED_NPP_AGSW_GD_SCPF','ED_NPP_BGDW_GD_SCPF','ED_NPP_BGSW_GD_SCPF''ED_NPP_FNRT_GD_SCPF','ED_NPP_LEAF_GD_SCPF','ED_NPP_SEED_GD_SCPF','ED_NPP_STOR_GD_SCPF'
EOF
fi

################################################################################
if [ "${SETUP_CASE}" == "ngtedv0_4x5_bugbranch_test1" ]; then
    CASE_NAME=${SETUP_CASE}
    basedir=$HOME/clmed/ed-clm/cime/scripts
    #### load_machine_files
    cd $basedir
    ./create_newcase -case ${CASE_NAME} -res 4x5_4x5 -compset ICLM45ED -mach lawrencium-lr2 -project ac_ngeet
    cd ${CASE_NAME}

    ./xmlchange -file env_run.xml -id STOP_OPTION -val nyears
    ./xmlchange -file env_run.xml -id STOP_N -val 20

    ./xmlchange -file env_run.xml -id DIN_LOC_ROOT -val /global/home/users/cdkoven/cesm_input_data

    ./xmlchange -file env_build.xml -id EXEROOT -val /global/scratch/cdkoven//$CASE_NAME/bld
    ./xmlchange -file env_run.xml -id RUNDIR -val /global/scratch/cdkoven//$CASE_NAME/run
    ./xmlchange -file env_run.xml -id DOUT_S_ROOT -val /global/scratch/cdkoven//archive/$CASE_NAME

    ./xmlchange -file env_run.xml -id CLM_BLDNML_OPTS -val "-no-megan" --append
    ./xmlchange -file env_run.xml -id DOUT_S_SAVE_INTERIM_RESTART_FILES -val TRUE
    ./xmlchange -file env_run.xml -id DOUT_S_SAVE_EVERY_NTH_RESTART_FILE_SET -val 1

    # ./xmlchange -file env_mach_pes.xml -id NTASKS_ATM -val 1
    # ./xmlchange -file env_mach_pes.xml -id NTASKS_LND -val 1
    # ./xmlchange -file env_mach_pes.xml -id NTASKS_ICE -val 1
    # ./xmlchange -file env_mach_pes.xml -id NTASKS_OCN -val 1
    # ./xmlchange -file env_mach_pes.xml -id NTASKS_CPL -val 1
    # ./xmlchange -file env_mach_pes.xml -id NTASKS_GLC -val 1
    # ./xmlchange -file env_mach_pes.xml -id NTASKS_ROF -val 1
    # ./xmlchange -file env_mach_pes.xml -id NTASKS_WAV -val 1
    # ./xmlchange -file env_mach_pes.xml -id TOTALPES -val 1
    # ./xmlchange -file env_mach_pes.xml -id MAX_TASKS_PER_NODE -val 1

    ./cesm_setup

    cat > user_nl_clm <<EOF
hist_fincl1 = 'ED_BA_GD_SCPF','ED_DDBH_GD_SCPF','ED_GPP_GD_SCPF','ED_M1_GD_SCPF','ED_M2_GD_SCPF','ED_M3_GD_SCPF','ED_M4_GD_SCPF','ED_M5_GD_SCPF','ED_NPLANT_GD_SCPF','ED_NPP_AGDW_GD_SCPF','ED_NPP_AGSW_GD_SCPF','ED_NPP_BGDW_GD_SCPF','ED_NPP_BGSW_GD_SCPF''ED_NPP_FNRT_GD_SCPF','ED_NPP_LEAF_GD_SCPF','ED_NPP_SEED_GD_SCPF','ED_NPP_STOR_GD_SCPF'
EOF
fi


################################################################################
if [ "${SETUP_CASE}" == "ngtedv0_1x1amazon_test1" ]; then
    CASE_NAME=${SETUP_CASE}
    basedir=$HOME/clmed/ed-clm/cime/scripts
    #### load_machine_files
    cd $basedir
    ./create_newcase -case ${CASE_NAME} -res 5x5_amazon -compset ICLM45ED -mach lawrencium-lr2 -project ac_ngeet
    cd ${CASE_NAME}

    ./xmlchange -file env_run.xml -id STOP_OPTION -val nyears
    ./xmlchange -file env_run.xml -id STOP_N -val 20

    ./xmlchange -file env_run.xml -id DIN_LOC_ROOT -val /global/home/users/cdkoven/cesm_input_data

    ./xmlchange -file env_build.xml -id EXEROOT -val /global/scratch/cdkoven//$CASE_NAME/bld
    ./xmlchange -file env_run.xml -id RUNDIR -val /global/scratch/cdkoven//$CASE_NAME/run
    ./xmlchange -file env_run.xml -id DOUT_S_ROOT -val /global/scratch/cdkoven//archive/$CASE_NAME

    ./xmlchange -file env_run.xml -id CLM_BLDNML_OPTS -val "-no-megan" --append
    ./xmlchange -file env_run.xml -id DOUT_S_SAVE_INTERIM_RESTART_FILES -val TRUE
    ./xmlchange -file env_run.xml -id DOUT_S_SAVE_EVERY_NTH_RESTART_FILE_SET -val 1
    ./cesm_setup


    cat > user_nl_clm <<EOF
hist_fincl1 = 'ED_BA_GD_SCPF','ED_DDBH_GD_SCPF','ED_GPP_GD_SCPF','ED_M1_GD_SCPF','ED_M2_GD_SCPF','ED_M3_GD_SCPF','ED_M4_GD_SCPF','ED_M5_GD_SCPF','ED_NPLANT_GD_SCPF','ED_NPP_AGDW_GD_SCPF','ED_NPP_AGSW_GD_SCPF','ED_NPP_BGDW_GD_SCPF','ED_NPP_BGSW_GD_SCPF''ED_NPP_FNRT_GD_SCPF','ED_NPP_LEAF_GD_SCPF','ED_NPP_SEED_GD_SCPF','ED_NPP_STOR_GD_SCPF'
EOF
fi

################################################################################
if [ "${SETUP_CASE}" == "ngtedv0_5x5amazon_mainbranch_test1" ]; then
    CASE_NAME=${SETUP_CASE}
    basedir=$HOME/clmed/ed-clm/cime/scripts
    #### load_machine_files
    cd $basedir
    ./create_newcase -case ${CASE_NAME} -res 5x5_amazon -compset ICLM45ED -mach lawrencium-lr2 -project ac_ngeet
    cd ${CASE_NAME}

    ./xmlchange -file env_run.xml -id STOP_OPTION -val nyears
    ./xmlchange -file env_run.xml -id STOP_N -val 20

    ./xmlchange -file env_run.xml -id DIN_LOC_ROOT -val /global/home/users/cdkoven/cesm_input_data

    ./xmlchange -file env_build.xml -id EXEROOT -val /global/scratch/cdkoven//$CASE_NAME/bld
    ./xmlchange -file env_run.xml -id RUNDIR -val /global/scratch/cdkoven//$CASE_NAME/run
    ./xmlchange -file env_run.xml -id DOUT_S_ROOT -val /global/scratch/cdkoven//archive/$CASE_NAME

    ./xmlchange -file env_run.xml -id CLM_BLDNML_OPTS -val "-no-megan" --append
    ./xmlchange -file env_run.xml -id DOUT_S_SAVE_INTERIM_RESTART_FILES -val TRUE
    ./xmlchange -file env_run.xml -id DOUT_S_SAVE_EVERY_NTH_RESTART_FILE_SET -val 1

    ./xmlchange -file env_mach_pes.xml -id NTASKS_ATM -val 12
    ./xmlchange -file env_mach_pes.xml -id NTASKS_LND -val 12
    ./xmlchange -file env_mach_pes.xml -id NTASKS_ICE -val 12
    ./xmlchange -file env_mach_pes.xml -id NTASKS_OCN -val 12
    ./xmlchange -file env_mach_pes.xml -id NTASKS_CPL -val 12
    ./xmlchange -file env_mach_pes.xml -id NTASKS_GLC -val 12
    ./xmlchange -file env_mach_pes.xml -id NTASKS_ROF -val 12
    ./xmlchange -file env_mach_pes.xml -id NTASKS_WAV -val 12
    ./xmlchange -file env_mach_pes.xml -id TOTALPES -val 12
    ./xmlchange -file env_mach_pes.xml -id MAX_TASKS_PER_NODE -val 12

    ./cesm_setup

    cat > user_nl_clm <<EOF
hist_fincl1 = 'ED_BA_GD_SCPF','ED_DDBH_GD_SCPF','ED_GPP_GD_SCPF','ED_M1_GD_SCPF','ED_M2_GD_SCPF','ED_M3_GD_SCPF','ED_M4_GD_SCPF','ED_M5_GD_SCPF','ED_NPLANT_GD_SCPF','ED_NPP_AGDW_GD_SCPF','ED_NPP_AGSW_GD_SCPF','ED_NPP_BGDW_GD_SCPF','ED_NPP_BGSW_GD_SCPF''ED_NPP_FNRT_GD_SCPF','ED_NPP_LEAF_GD_SCPF','ED_NPP_SEED_GD_SCPF','ED_NPP_STOR_GD_SCPF'
EOF
fi


################################################################################
if [ "${SETUP_CASE}" == "ngtedv0_5x5amazon_bugbranch_test1" ]; then
    CASE_NAME=${SETUP_CASE}
    basedir=$HOME/clmed/ed-clm/cime/scripts
    #### load_machine_files
    cd $basedir
    ./create_newcase -case ${CASE_NAME} -res 5x5_amazon -compset ICLM45ED -mach lawrencium-lr2 -project ac_ngeet
    cd ${CASE_NAME}

    ./xmlchange -file env_run.xml -id STOP_OPTION -val nyears
    ./xmlchange -file env_run.xml -id STOP_N -val 20

    ./xmlchange -file env_run.xml -id DIN_LOC_ROOT -val /global/home/users/cdkoven/cesm_input_data

    ./xmlchange -file env_build.xml -id EXEROOT -val /global/scratch/cdkoven//$CASE_NAME/bld
    ./xmlchange -file env_run.xml -id RUNDIR -val /global/scratch/cdkoven//$CASE_NAME/run
    ./xmlchange -file env_run.xml -id DOUT_S_ROOT -val /global/scratch/cdkoven//archive/$CASE_NAME

    ./xmlchange -file env_run.xml -id CLM_BLDNML_OPTS -val "-no-megan" --append
    ./xmlchange -file env_run.xml -id DOUT_S_SAVE_INTERIM_RESTART_FILES -val TRUE
    ./xmlchange -file env_run.xml -id DOUT_S_SAVE_EVERY_NTH_RESTART_FILE_SET -val 1

    ./xmlchange -file env_mach_pes.xml -id NTASKS_ATM -val 12
    ./xmlchange -file env_mach_pes.xml -id NTASKS_LND -val 12
    ./xmlchange -file env_mach_pes.xml -id NTASKS_ICE -val 12
    ./xmlchange -file env_mach_pes.xml -id NTASKS_OCN -val 12
    ./xmlchange -file env_mach_pes.xml -id NTASKS_CPL -val 12
    ./xmlchange -file env_mach_pes.xml -id NTASKS_GLC -val 12
    ./xmlchange -file env_mach_pes.xml -id NTASKS_ROF -val 12
    ./xmlchange -file env_mach_pes.xml -id NTASKS_WAV -val 12
    ./xmlchange -file env_mach_pes.xml -id TOTALPES -val 12
    ./xmlchange -file env_mach_pes.xml -id MAX_TASKS_PER_NODE -val 12

    ./cesm_setup

    cat > user_nl_clm <<EOF
hist_fincl1 = 'ED_BA_GD_SCPF','ED_DDBH_GD_SCPF','ED_GPP_GD_SCPF','ED_M1_GD_SCPF','ED_M2_GD_SCPF','ED_M3_GD_SCPF','ED_M4_GD_SCPF','ED_M5_GD_SCPF','ED_NPLANT_GD_SCPF','ED_NPP_AGDW_GD_SCPF','ED_NPP_AGSW_GD_SCPF','ED_NPP_BGDW_GD_SCPF','ED_NPP_BGSW_GD_SCPF''ED_NPP_FNRT_GD_SCPF','ED_NPP_LEAF_GD_SCPF','ED_NPP_SEED_GD_SCPF','ED_NPP_STOR_GD_SCPF'
EOF
fi

