#!/usr/bin/env bash

SRCDIR=$HOME/clmed/fates-clm/
cd ${SRCDIR}
GITHASH1=`git log -n 1 --format=%h`
cd components/clm/src/fates
GITHASH2=`git log -n 1 --format=%h`

#SETUP_CASE=fates_test
#SETUP_CASE=fates_prescribedphys_agedistexp_control
#SETUP_CASE=fates_prescribedphys_agedistexp_exp1
#SETUP_CASE=fates_prescribedphys_agedistexp_exp4
#SETUP_CASE=fates_prescribedphys_agedistexp_exp6a_sitelevelspread_biomassperpatchageva
#SETUP_CASE=fates_prescribedphys_agedistexp_c1_biomassperpatchagevar
#SETUP_CASE=fates_fullmodel_sitelevelspread_v2
#SETUP_CASE=fates_fullmodel_control
#SETUP_CASE=fates_fullmodel_gswp3
#SETUP_CASE=fates_fullmodel_cbalancecheck
#SETUP_CASE=fates_prescribedphys_distexp_fixedimort
#SETUP_CASE=fates_prescribedphys_controlfromrestart
#SETUP_CASE=fates_prescribedphys_20pctincreasednpp_controlfromrestart
#SETUP_CASE=fates_prescribedphys_selfthinningexpt_nodist
#SETUP_CASE=fates_prescribedphys_baseline2_maxpatch30
#SETUP_CASE=fates_prescribedphys_baseline_frombareground
#SETUP_CASE=fates_prescribedphys_oldallom_round2
#SETUP_CASE=fates_prescribedphys_oldallom_cmpexcln3_round2
#SETUP_CASE=fates_prescribedphys_oldallom_cmpexcln1
#SETUP_CASE=fates_prescribedphys_bciallom
#SETUP_CASE=fates_prescribedphys_mortexp02
#SETUP_CASE=fates_prescribedphys_mortexp02_transnppincr
#SETUP_CASE=fates_prescribedphys_crownallomexp01
#SETUP_CASE=fates_prescribedphys_crownallomexp02
#SETUP_CASE=fates_prescribedphys_crownallomexp02b
#SETUP_CASE=fates_fullmodel_bci_exp01_detppa_respterm1_mortterm0pt1_undmortfrac1
#SETUP_CASE=fates_fullmodel_bci_exp01_detppa_respterm1_mortterm0pt1_noEDdist
#SETUP_CASE=fates_fullmodel_bci_exp01a_bciallom_detppa_respterm1_mortterm0pt1_undmortfrac1
#SETUP_CASE=fates_fullmodel_bci_exp01a_bciallom_d2bldiff0pt2_detppa_respterm1_mortterm0pt1_undmortfrac1
#SETUP_CASE=fates_fullmodel_bci_exp01a_cmpexc3_respterm1_mortterm0pt1_undmortfrac1
#SETUP_CASE=fates_fullmodel_bci_exp01a_cmpexc3_respterm1_mortterm0pt1_undmortfrac1_cushion1pt1
#SETUP_CASE=fates_fullmodel_bci_exp01a_cmpexc3_respterm1_mortterm0pt1_undmortfrac1_cushion1pt3
#SETUP_CASE=fates_fullmodel_bci_exp02_coextest_baseline
#SETUP_CASE=fates_fullmodel_bci_exp02a_coextest_allmortdist
#SETUP_CASE=fates_fullmodel_bci_exp02b_coextest_allmortdist_pt85wooddens
#SETUP_CASE=fates_fullmodel_bci_exp02c_coextest_allmortdist_pt80wooddens
#SETUP_CASE=fates_fullmodel_bci_exp022_coextest_allmortdist_pt85wooddens_2xseed
#SETUP_CASE=fates_fullmodel_bci_exp022_coextest_allmortdist_pt85wooddens_1pt5xseed
#SETUP_CASE=fates_fullmodel_bci_exp022_coextest_allmortdist_pt9wooddens_2xseed
##SETUP_CASE=fates_fullmodel_bci_exp022_coextest_allmortdist_pt875wooddens_2xseed
#SETUP_CASE=fates_prescribedphys_cmptexp_e00_baseline
#SETUP_CASE=fates_prescribedphys_cmptexp_e01_reducedseedalloc_newvars
#SETUP_CASE=fates_prescribedphys_cmptexp_e01_2pfts_baseline2
#SETUP_CASE=fates_prescribedphys_cmptexp_e01_2pfts_baseline3_stochppa3
#SETUP_CASE=fates_prescribedphys_cmptexp_e01_2pfts_baseline3_stochppa3_initperturb3
#SETUP_CASE=fates_prescribedphys_cmptexp_e01_2pfts_ensemble01_multiinstance_02_stochppa3_allmort_0pt5dist
#SETUP_CASE=fates_prescribedphys_cmptexp_e01_2pfts_ensemble01_multiinstance_03_detppa_allmort_0pt5dist
#SETUP_CASE=fates_prescribedphys_cmptexp_e01_2pfts_ensemble01_multiinstance_04_stochppa3_0pt5mort_alldist
#SETUP_CASE=fates_prescribedphys_cmptexp_e01_2pfts_ensemble01_multiinstance_05_stochppa1_allmort_0pt5dist
#SETUP_CASE=fates_prescribedphys_cmptexp_e01_2pfts_ensemble01_multiinstance_06_stochppa0pt5_allmort_0pt5dist
#SETUP_CASE=fates_prescribedphys_cmptexp_e01_2pfts_ensemble01_multiinstance_07_detppa_irrmort_0dist
#SETUP_CASE=fates_prescribedphys_cmptexp_e01_2pfts_ensemble01_multiinstance_08_invariantcanmort_stochppa3_allmort_0pt5dist
SETUP_CASE=fates_prescribedphys_cmptexp_e01_2pfts_ensemble01_multiinstance_09_stochppa3_allmort_0pt5dist_10xseedalloc
#SETUP_CASE=fates_prescribedphys_cmptexp_e01_2pfts_ensemble01_multiinstance_09_stochppa3_allmort_0pt5dist_10xseedalloc_cesm
#SETUP_CASE=fates_prescribedphys_cmptexp_e01_2pfts_multiinstance_09c_stochppa3_allmort_0pt5dist_10xseedalloc
#SETUP_CASE=fates_prescribedphys_cmptexp_e01_2pfts_ensemble01_multiinstance_10_detppa_allmort_0pt5dist_10xseedalloc
#SETUP_CASE=fates_prescribedphys_cmptexp_e01_2pfts_ensemble01_multiinstance_10b_detppa_allmort_0pt5dist_10xseedalloc_25pctnppinc
#SETUP_CASE=fates_prescribedphys_cmptexp_e01_2pfts_ensemble01_multiinstance_11_stochppa1_allmort_0pt5dist_10xseedalloc
#SETUP_CASE=fates_fullmodel_bci_exp03_hiresagedist_restart
#SETUP_CASE=fates_fullmodel_bci_exp03b_higher_resagedist
#SETUP_CASE=fates_fullmodel_bci_exp03b_higher_resagedist_stochppa3
#SETUP_CASE=fates_fullmodel_bci_exp03c_higherresage_multiinst

#if [ "${SETUP_CASE}" == "fates_prescribedphys_cmptexp_e01_2pfts_ensemble01_multiinstance_02_stochppa3_allmort_0pt5dist" ]; then
#if [ "${SETUP_CASE}" == "fates_prescribedphys_cmptexp_e01_2pfts_ensemble01_multiinstance_03_detppa_allmort_0pt5dist" ]; then
#if [ "${SETUP_CASE}" == "fates_prescribedphys_cmptexp_e01_2pfts_ensemble01_multiinstance_04_stochppa3_0pt5mort_alldist" ]; then
#if [ "${SETUP_CASE}" == "fates_prescribedphys_cmptexp_e01_2pfts_ensemble01_multiinstance_05_stochppa1_allmort_0pt5dist" ]; then
#if [ "${SETUP_CASE}" == "fates_prescribedphys_cmptexp_e01_2pfts_ensemble01_multiinstance_06_stochppa0pt5_allmort_0pt5dist" ]; then
#if [ "${SETUP_CASE}" == "fates_prescribedphys_cmptexp_e01_2pfts_ensemble01_multiinstance_07_detppa_irrmort_0dist" ]; then
#if [ "${SETUP_CASE}" == "fates_prescribedphys_cmptexp_e01_2pfts_ensemble01_multiinstance_08_invariantcanmort_stochppa3_allmort_0pt5dist" ]; then
if [ "${SETUP_CASE}" == "fates_prescribedphys_cmptexp_e01_2pfts_ensemble01_multiinstance_09_stochppa3_allmort_0pt5dist_10xseedalloc" ]; then
#if [ "${SETUP_CASE}" == "fates_prescribedphys_cmptexp_e01_2pfts_ensemble01_multiinstance_09_stochppa3_allmort_0pt5dist_10xseedalloc_cesm" ]; then
#if [ "${SETUP_CASE}" == "fates_prescribedphys_cmptexp_e01_2pfts_multiinstance_09c_stochppa3_allmort_0pt5dist_10xseedalloc" ]; then
#if [ "${SETUP_CASE}" == "fates_prescribedphys_cmptexp_e01_2pfts_ensemble01_multiinstance_10_detppa_allmort_0pt5dist_10xseedalloc" ]; then
#if [ "${SETUP_CASE}" == "fates_prescribedphys_cmptexp_e01_2pfts_ensemble01_multiinstance_10b_detppa_allmort_0pt5dist_10xseedalloc_25pctnppincr" ]; then
#if [ "${SETUP_CASE}" == "fates_prescribedphys_cmptexp_e01_2pfts_ensemble01_multiinstance_11_stochppa1_allmort_0pt5dist_10xseedalloc" ]; then

    #for ensemble_chunk in 1 2 3 4 5 6 7; do
    j=0
    for ensemble_chunk in 51 52 53 54 55 56 57 58 59 60; do

    #CASE_NAME=${SETUP_CASE}_gnu_clmsvn272_fates_ae5d33d
    #CASE_NAME=${SETUP_CASE}_${GITHASH1}_${GITHASH2}
    CASE_NAME=${SETUP_CASE}_enschnk_${ensemble_chunk}_${GITHASH1}_${GITHASH2}
    basedir=$HOME/clmed/fates-clm/cime/scripts
    #basedir=$HOME/cesm/cime/scripts
    #basedir=/glade/u/home/charlie/clm_svn_tags/clm4_5_18_r272/cime/scripts
    #### load_machine_files
    cd $basedir
    ./create_newcase --case ${CASE_NAME} --res 1x1_brazil --compset ICLM45ED --mach cheyenne --project P93300041
    
    #./create_newcase --case ${CASE_NAME} --res 1x1_brazil --compset I2000Clm45FatesGs --project P93300041 --mach cheyenne
    #   --compiler gnu 
    #  --mach cheyenne 
    # --run-unsupported 
    cd ${CASE_NAME}

    ./xmlchange -file env_run.xml -id STOP_OPTION -val nyears
    ./xmlchange -file env_run.xml -id STOP_N -val 200
    ./xmlchange -file env_run.xml -id REST_N -val 10
    ./xmlchange -file env_run.xml -id CONTINUE_RUN -val FALSE
    ./xmlchange -file env_run.xml -id RESUBMIT -val 2
    ./xmlchange -file env_build.xml -id DEBUG -val FALSE
    
    ./xmlchange -file env_run.xml -id DIN_LOC_ROOT -val /glade/u/home/charlie/cesm_input_data
    
    ./xmlchange -file env_build.xml -id EXEROOT -val /glade2/scratch2/charlie/$CASE_NAME/bld
    ./xmlchange -file env_run.xml -id RUNDIR -val /glade2/scratch2/charlie/$CASE_NAME/run
    ./xmlchange -file env_run.xml -id DOUT_S_ROOT -val /glade2/scratch2/charlie/archive/$CASE_NAME

    ./xmlchange -file env_batch.xml -id JOB_WALLCLOCK_TIME -val 11:59:00
    ./xmlchange -file env_run.xml -id STOP_OPTION -val nyears

    ####./xmlchange NINST_LND=107


    ##exp_array=(baseline invariantcanopymort.cmpexpt01_v0002 invariantcanopymort.cmpexpt01_v0003 invariantcanopymort.cmpexpt01_v0004 invariantcanopymort.cmpexpt01_v0005 invariantcanopymort.cmpexpt01_v0006 invariantcanopymort.cmpexpt01_v0007 invariantcanopymort.cmpexpt01_v0008 invariantcanopymort.cmpexpt01_v0009 invariantcanopymort.cmpexpt01_v0010 invariantcanopymort.cmpexpt01_v0011 invariantcanopymort.cmpexpt01_v0012 invariantcanopymort.cmpexpt01_v0013 invariantcanopymort.cmpexpt01_v0014 invariantcanopymort.cmpexpt01_v0015 invariantcanopymort.cmpexpt01_v0016 invariantcanopymort.cmpexpt01_v0017 invariantcanopymort.cmpexpt01_v0018 invariantcanopymort.cmpexpt01_v0019 invariantcanopymort.cmpexpt01_v0020 invariantcanopymort.cmpexpt01_v0021 invariantcanopymort.cmpexpt01_v0022 invariantcanopymort.cmpexpt01_v0023 invariantcanopymort.cmpexpt01_v0024 invariantcanopymort.cmpexpt01_v0025 invariantcanopymort.cmpexpt01_v0026 invariantcanopymort.cmpexpt01_v0027 invariantcanopymort.cmpexpt01_v0028 invariantcanopymort.cmpexpt01_v0029 invariantcanopymort.cmpexpt01_v0030 invariantcanopymort.cmpexpt01_v0031 invariantcanopymort.cmpexpt01_v0032 invariantcanopymort.cmpexpt01_v0033 invariantcanopymort.cmpexpt01_v0034 invariantcanopymort.cmpexpt01_v0035 invariantcanopymort.cmpexpt01_v0036 invariantcanopymort.cmpexpt01_v0037 invariantcanopymort.cmpexpt01_v0038 invariantcanopymort.cmpexpt01_v0039 invariantcanopymort.cmpexpt01_v0040 invariantcanopymort.cmpexpt01_v0041 invariantcanopymort.cmpexpt01_v0042 invariantcanopymort.cmpexpt01_v0043 invariantcanopymort.cmpexpt01_v0044 invariantcanopymort.cmpexpt01_v0045 invariantcanopymort.cmpexpt01_v0046 invariantcanopymort.cmpexpt01_v0047 invariantcanopymort.cmpexpt01_v0048 invariantcanopymort.cmpexpt01_v0049 invariantcanopymort.cmpexpt01_v0050 invariantcanopymort.cmpexpt01_v0051 invariantcanopymort.cmpexpt01_v0052 invariantcanopymort.cmpexpt01_v0053 invariantcanopymort.cmpexpt01_v0054 invariantcanopymort.cmpexpt01_v0055 invariantcanopymort.cmpexpt01_v0056 invariantcanopymort.cmpexpt01_v0057 invariantcanopymort.cmpexpt01_v0058 invariantcanopymort.cmpexpt01_v0059 invariantcanopymort.cmpexpt01_v0060 invariantcanopymort.cmpexpt01_v0061 invariantcanopymort.cmpexpt01_v0062 invariantcanopymort.cmpexpt01_v0063 invariantcanopymort.cmpexpt01_v0064 invariantcanopymort.cmpexpt01_v0065 invariantcanopymort.cmpexpt01_v0066 invariantcanopymort.cmpexpt01_v0067 invariantcanopymort.cmpexpt01_v0068 invariantcanopymort.cmpexpt01_v0069 invariantcanopymort.cmpexpt01_v0070 invariantcanopymort.cmpexpt01_v0071 invariantcanopymort.cmpexpt01_v0072 invariantcanopymort.cmpexpt01_v0073 invariantcanopymort.cmpexpt01_v0074 invariantcanopymort.cmpexpt01_v0075 invariantcanopymort.cmpexpt01_v0076 invariantcanopymort.cmpexpt01_v0077 invariantcanopymort.cmpexpt01_v0078 invariantcanopymort.cmpexpt01_v0079 invariantcanopymort.cmpexpt01_v0080 invariantcanopymort.cmpexpt01_v0081 invariantcanopymort.cmpexpt01_v0082 invariantcanopymort.cmpexpt01_v0083 invariantcanopymort.cmpexpt01_v0084 invariantcanopymort.cmpexpt01_v0085 invariantcanopymort.cmpexpt01_v0086 invariantcanopymort.cmpexpt01_v0087 invariantcanopymort.cmpexpt01_v0088 invariantcanopymort.cmpexpt01_v0089 invariantcanopymort.cmpexpt01_v0090 invariantcanopymort.cmpexpt01_v0091 invariantcanopymort.cmpexpt01_v0092 invariantcanopymort.cmpexpt01_v0093 invariantcanopymort.cmpexpt01_v0094 invariantcanopymort.cmpexpt01_v0095 invariantcanopymort.cmpexpt01_v0096 invariantcanopymort.cmpexpt01_v0097 invariantcanopymort.cmpexpt01_v0098 invariantcanopymort.cmpexpt01_v0099 invariantcanopymort.cmpexpt01_v0100 invariantcanopymort.cmpexpt01_v0101 invariantcanopymort.cmpexpt01_v0102 invariantcanopymort.cmpexpt01_v0103 invariantcanopymort.cmpexpt01_v0104 invariantcanopymort.cmpexpt01_v0105 invariantcanopymort.cmpexpt01_v0106)

    # exp_array=(baseline cmpexpt01_v0002 cmpexpt01_v0003 cmpexpt01_v0004 cmpexpt01_v0005 cmpexpt01_v0006 cmpexpt01_v0007 cmpexpt01_v0008 cmpexpt01_v0009 cmpexpt01_v0010 cmpexpt01_v0011 cmpexpt01_v0012 cmpexpt01_v0013 cmpexpt01_v0014 cmpexpt01_v0015 cmpexpt01_v0016 cmpexpt01_v0017 cmpexpt01_v0018 cmpexpt01_v0019 cmpexpt01_v0020 cmpexpt01_v0021 cmpexpt01_v0022 cmpexpt01_v0023 cmpexpt01_v0024 cmpexpt01_v0025 cmpexpt01_v0026 cmpexpt01_v0027 cmpexpt01_v0028 cmpexpt01_v0029 cmpexpt01_v0030 cmpexpt01_v0031 cmpexpt01_v0032 cmpexpt01_v0033 cmpexpt01_v0034 cmpexpt01_v0035 cmpexpt01_v0036 cmpexpt01_v0037 cmpexpt01_v0038 cmpexpt01_v0039 cmpexpt01_v0040 cmpexpt01_v0041 cmpexpt01_v0042 cmpexpt01_v0043 cmpexpt01_v0044 cmpexpt01_v0045 cmpexpt01_v0046 cmpexpt01_v0047 cmpexpt01_v0048 cmpexpt01_v0049 cmpexpt01_v0050 cmpexpt01_v0051 cmpexpt01_v0052 cmpexpt01_v0053 cmpexpt01_v0054 cmpexpt01_v0055 cmpexpt01_v0056 cmpexpt01_v0057 cmpexpt01_v0058 cmpexpt01_v0059 cmpexpt01_v0060 cmpexpt01_v0061 cmpexpt01_v0062 cmpexpt01_v0063 cmpexpt01_v0064 cmpexpt01_v0065 cmpexpt01_v0066 cmpexpt01_v0067 cmpexpt01_v0068 cmpexpt01_v0069)


	# if (($ensemble_chunk == 1)); then
	#     exp_array=(baseline cmpexpt01_v0002 cmpexpt01_v0003 cmpexpt01_v0004 cmpexpt01_v0005 cmpexpt01_v0006 cmpexpt01_v0007 cmpexpt01_v0008 cmpexpt01_v0009 cmpexpt01_v0010 cmpexpt01_v0011 cmpexpt01_v0012 cmpexpt01_v0013 cmpexpt01_v0014 cmpexpt01_v0015 cmpexpt01_v0016 cmpexpt01_v0017 cmpexpt01_v0018 cmpexpt01_v0019 cmpexpt01_v0020 cmpexpt01_v0021 cmpexpt01_v0022 cmpexpt01_v0023 cmpexpt01_v0024 cmpexpt01_v0025 cmpexpt01_v0026 cmpexpt01_v0027 cmpexpt01_v0028 cmpexpt01_v0029 cmpexpt01_v0030 cmpexpt01_v0031 cmpexpt01_v0032 cmpexpt01_v0033 cmpexpt01_v0034 cmpexpt01_v0035) 
	#     #
	#     ./xmlchange NINST_LND=35
	# else
	#     exp_array=(cmpexpt01_v0036 cmpexpt01_v0037 cmpexpt01_v0038 cmpexpt01_v0039 cmpexpt01_v0040 cmpexpt01_v0041 cmpexpt01_v0042 cmpexpt01_v0043 cmpexpt01_v0044 cmpexpt01_v0045 cmpexpt01_v0046 cmpexpt01_v0047 cmpexpt01_v0048 cmpexpt01_v0049 cmpexpt01_v0050 cmpexpt01_v0051 cmpexpt01_v0052 cmpexpt01_v0053 cmpexpt01_v0054 cmpexpt01_v0055 cmpexpt01_v0056 cmpexpt01_v0057 cmpexpt01_v0058 cmpexpt01_v0059 cmpexpt01_v0060 cmpexpt01_v0061 cmpexpt01_v0062 cmpexpt01_v0063 cmpexpt01_v0064 cmpexpt01_v0065 cmpexpt01_v0066 cmpexpt01_v0067 cmpexpt01_v0068 cmpexpt01_v0069)
	#     #
	#     ./xmlchange NINST_LND=34
	# fi	    

    # if (($ensemble_chunk == 1)); then
    # 	exp_array=(baseline cmpexpt01_v0002 cmpexpt01_v0003 cmpexpt01_v0004 cmpexpt01_v0005 cmpexpt01_v0006 cmpexpt01_v0007 cmpexpt01_v0008 cmpexpt01_v0009 cmpexpt01_v0010)
    # 	./xmlchange NINST_LND=10
    # elif (($ensemble_chunk == 2)); then
    # 	exp_array=(cmpexpt01_v0011 cmpexpt01_v0012 cmpexpt01_v0013 cmpexpt01_v0014 cmpexpt01_v0015 cmpexpt01_v0016 cmpexpt01_v0017 cmpexpt01_v0018 cmpexpt01_v0019 cmpexpt01_v0020)
    # 	./xmlchange NINST_LND=10
    # elif (($ensemble_chunk == 3)); then
    # 	exp_array=(cmpexpt01_v0021 cmpexpt01_v0022 cmpexpt01_v0023 cmpexpt01_v0024 cmpexpt01_v0025 cmpexpt01_v0026 cmpexpt01_v0027 cmpexpt01_v0028 cmpexpt01_v0029 cmpexpt01_v0030)
    # 	./xmlchange NINST_LND=10
    # elif (($ensemble_chunk == 4)); then
    # 	exp_array=(cmpexpt01_v0031 cmpexpt01_v0032 cmpexpt01_v0033 cmpexpt01_v0034 cmpexpt01_v0035 cmpexpt01_v0036 cmpexpt01_v0037 cmpexpt01_v0038 cmpexpt01_v0039 cmpexpt01_v0040)
    # 	./xmlchange NINST_LND=10
    # elif (($ensemble_chunk == 5)); then
    # 	exp_array=(cmpexpt01_v0041 cmpexpt01_v0042 cmpexpt01_v0043 cmpexpt01_v0044 cmpexpt01_v0045 cmpexpt01_v0046 cmpexpt01_v0047 cmpexpt01_v0048 cmpexpt01_v0049 cmpexpt01_v0050)
    # 	./xmlchange NINST_LND=10
    # elif (($ensemble_chunk == 6)); then
    # 	exp_array=(cmpexpt01_v0051 cmpexpt01_v0052 cmpexpt01_v0053 cmpexpt01_v0054 cmpexpt01_v0055 cmpexpt01_v0056 cmpexpt01_v0057 cmpexpt01_v0058 cmpexpt01_v0059 cmpexpt01_v0060)
    # 	./xmlchange NINST_LND=10
    # elif (($ensemble_chunk == 7)); then
    # 	exp_array=(cmpexpt01_v0061 cmpexpt01_v0062 cmpexpt01_v0063 cmpexpt01_v0064 cmpexpt01_v0065 cmpexpt01_v0066 cmpexpt01_v0067 cmpexpt01_v0068 cmpexpt01_v0069)
    # 	./xmlchange NINST_LND=9
    # fi
    # j=0
    #./xmlchange NINST_LND=69

    exp_array=(cmpexpt01_v0051 cmpexpt01_v0052 cmpexpt01_v0053 cmpexpt01_v0054 cmpexpt01_v0055 cmpexpt01_v0056 cmpexpt01_v0057 cmpexpt01_v0058 cmpexpt01_v0059 cmpexpt01_v0060)
    # ./xmlchange NINST_LND=1
    # ./xmlchange ROOTPE_LND=1

    ./case.setup

    # for i in ${exp_array[@]}; do
    ###expstr=$(printf %04d $j)
    i=${exp_array[$j]}
    ((++j))

    # fates_paramfile = '/glade/u/home/charlie/cesm_input_data/lnd/clm2/paramdata/ppm_cmpexpt_files/fates_params.prescribedphys_stochppa3_allmort_0pt5dist.2pft.${i}.c171221.nc'
    # fates_paramfile = '/glade/u/home/charlie/cesm_input_data/lnd/clm2/paramdata/ppm_cmpexpt_files/fates_params.prescribedphys_detppa_allmort_0pt5dist.2pft.${i}.c171221.nc'
    # fates_paramfile = '/glade/u/home/charlie/cesm_input_data/lnd/clm2/paramdata/ppm_cmpexpt_files/fates_params.prescribedphys_stochppa3_0pt5mort_alldist.2pft.${i}.c171221.nc'
    # fates_paramfile = '/glade/u/home/charlie/cesm_input_data/lnd/clm2/paramdata/ppm_cmpexpt_files/fates_params.prescribedphys_stochppa1_allmort_0pt5dist.2pft.${i}.c171221.nc'
    # fates_paramfile = '/glade/u/home/charlie/cesm_input_data/lnd/clm2/paramdata/ppm_cmpexpt_files/fates_params.prescribedphys_stochppa0pt5_allmort_0pt5dist.2pft.${i}.c171221.nc'
    # fates_paramfile = '/glade/u/home/charlie/cesm_input_data/lnd/clm2/paramdata/ppm_cmpexpt_files/fates_params.prescribedphys_detppa_irrelmort_0pt0dist.2pft.${i}.c171221.nc'
    # fates_paramfile = '/glade/u/home/charlie/cesm_input_data/lnd/clm2/paramdata/ppm_cmpexpt_files/fates_params.prescribedphys_stochppa3_allmort_0pt5dist.2pft.${i}.c180105.nc'
    # fates_paramfile = '/glade/u/home/charlie/cesm_input_data/lnd/clm2/paramdata/ppm_cmpexpt_files/fates_params.prescribedphys_stochppa3_allmort_0pt5dist_10xseedalloc.2pft.${i}.c171221.nc'
    # fates_paramfile = '/glade/u/home/charlie/cesm_input_data/lnd/clm2/paramdata/ppm_cmpexpt_files/fates_params.prescribedphys_detppa_allmort_0pt5dist_10xseedalloc.2pft.${i}.c171221.nc'
    # fates_paramfile = '/glade/u/home/charlie/cesm_input_data/lnd/clm2/paramdata/ppm_cmpexpt_files/fates_params.prescribedphys_detppa_allmort_0pt5dist_10xseedalloc_25pctnppincr.2pft.${i}.c171221.nc'
    # finidat='/glade2/scratch2/charlie/restdirptr/fates_prescribedphys_cmptexp_e01_2pfts_ensemble01_multiinstance_10_detppa_allmort_0pt5dist_10xseedalloc_cc1fd62_2230787.clm2_${expstr}.r.1001-01-01-00000.nc'

    # hist_fincl1 = 'BA_SCLS', 'DEMOTION_RATE_SCLS', 'PROMOTION_RATE_SCLS', 'NPLANT_CANOPY_SCLS', 'MORTALITY_CANOPY_SCLS','NPLANT_UNDERSTORY_SCLS', 'MORTALITY_UNDERSTORY_SCLS', 'DDBH_SCPF', 'DDBH_CANOPY_SCPF', 'DDBH_UNDERSTORY_SCPF','NPLANT_SCAG', 'YESTERDAYCANLEV_CANOPY_SCLS', 'YESTERDAYCANLEV_UNDERSTORY_SCLS','PATCH_AREA_BY_AGE','CANOPY_AREA_BY_AGE','NPATCH_BY_AGE','BIOMASS_BY_AGE','NPP_SCPF','CROWN_AREA_CANOPY_SCLS','CROWN_AREA_UNDERSTORY_SCLS','NPLANT_SCAGPFT','NPP_AGEPFT','BIOMASS_AGEPFT','NPLANT_CANOPY_SCPF','NPLANT_UNDERSTORY_SCPF'
    # hist_fexcl1='ACTUAL_IMMOB','AR','ATM_TOPO','BCDEP','BTRAN','BTRAN2','BTRANMN','BUILDHEAT','COL_CTRUNC','COL_NTRUNC','DENIT','DSL','DSTDEP','DSTFLXT','EFFECT_WSPEED','EFLX_DYNBAL','EFLX_GRND_LAKE','EFLX_LH_TOT','EFLX_LH_TOT_R','EFLX_LH_TOT_U','ELAI','ERRH2O','ERRH2OSNO','ERRSEB','ERRSOI','ERRSOL','ESAI','FCEV','FCOV','FCTR','FFIX_TO_SMINN','FGEV','FGR','FGR12','FGR_R','FGR_U','FH2OSFC','FIRA','FIRA_R','FIRA_U','FIRE','FIRE_AREA','FIRE_R','FIRE_ROS','FIRE_TFC_ROS','FIRE_U','FLDS','FPSN','FPSN_WC','FPSN_WJ','FPSN_WP','FROST_TABLE','FSA','FSAT','FSA_R','FSA_U','FSDS','FSDSND','FSDSNDLN','FSDSNI','FSDSVD','FSDSVDLN','FSDSVI','FSDSVILN','FSH','FSH_G','FSH_PRECIP_CONVERSION','FSH_R','FSH_TO_COUPLER','FSH_U','FSH_V','FSM','FSM_R','FSM_U','FSNO','FSNO_EFF','FSR','FSRND','FSRNDLN','FSRNI','FSRVD','FSRVDLN','FSRVI','GROSS_NMIN','GROWTH_RESP','H2OCAN','H2OSFC','H2OSNO','H2OSNO_TOP','H2OSOI','HEAT_CONTENT1','HEAT_CONTENT1_VEG','HEAT_FROM_AC','HR','HR_vr','HTOP','ICE_CONTENT1','LAISHA','LAISUN','LAKEICEFRAC','LAKEICETHICK','LIQCAN','LIQUID_CONTENT1','LITHR','LITR1C','LITR1C_TO_SOIL1C','LITR1C_vr','LITR1N','LITR1N_TO_SOIL1N','LITR1_HR','LITR2C','LITR2C_TO_SOIL1C','LITR2C_vr','LITR2N','LITR2N_TO_SOIL1N','LITR2_HR','LITR3C','LITR3C_TO_SOIL2C','LITR3C_vr','LITR3N','LITR3N_TO_SOIL2N','LITR3_HR','LITTERC','LITTERC_HR','M_LITR1C_TO_LEACHING','M_LITR2C_TO_LEACHING','M_LITR3C_TO_LEACHING','M_SOIL1C_TO_LEACHING','M_SOIL2C_TO_LEACHING','M_SOIL3C_TO_LEACHING','NDEP_TO_SMINN','NET_NMIN','NFIX_TO_SMINN','NPP_column','OCDEP','O_SCALAR','PARVEGLN','PBOT','PCO2','POTENTIAL_IMMOB','Q2M','QBOT','QCHARGE','QDRAI','QDRAI_PERCH','QDRAI_XS','QDRIP','QFLOOD','QFLX_ICE_DYNBAL','QFLX_LIQ_DYNBAL','QFLX_SNOW_DRAIN','QH2OSFC','QINFL','QINTR','QIRRIG','QOVER','QRGWL','QRUNOFF','QRUNOFF_ICE_TO_COUPLER','QRUNOFF_R','QRUNOFF_TO_COUPLER','QRUNOFF_U','QSNOFRZ','QSNOMELT','QSNOTEMPUNLOAD','QSNOWINDUNLOAD','QSNWCPICE','QSNWCPLIQ','QSOIL','QVEGE','QVEGT','RAIN','RAIN_REPARTITIONED','RH2M','RH2M_R','RH2M_U','SABG','SABG_PEN','SABV','SMINN','SMINN_LEACHED','SMINN_TO_DENIT_L1S1','SMINN_TO_DENIT_L2S1','SMINN_TO_DENIT_L3S2','SMINN_TO_DENIT_S1S2','SMINN_TO_DENIT_S1S3','SMINN_TO_DENIT_S2S1','SMINN_TO_DENIT_S2S3','SMINN_TO_DENIT_S3S1','SMINN_TO_PLANT','SMINN_TO_SOIL1N_L1','SMINN_TO_SOIL1N_L2','SMINN_TO_SOIL1N_S2','SMINN_TO_SOIL1N_S3','SMINN_TO_SOIL2N_L3','SMINN_TO_SOIL2N_S1','SMINN_TO_SOIL3N_S1','SMINN_TO_SOIL3N_S2','SMINN_vr','SMP','SNOBCMCL','SNOBCMSL','SNOCAN','SNODSTMCL','SNODSTMSL','SNOINTABS','SNOOCMCL','SNOOCMSL','SNOUNLOAD','SNOW','SNOWDP','SNOWICE','SNOWLIQ','SNOW_DEPTH','SNOW_REPARTITIONED','SNOW_SINKS','SNOW_SOURCES','SOIL1C','SOIL1C_TO_SOIL2C','SOIL1C_TO_SOIL3C','SOIL1C_vr','SOIL1N','SOIL1N_TO_SOIL2N','SOIL1N_TO_SOIL3N','SOIL1_HR_S2','SOIL1_HR_S3','SOIL2C','SOIL2C_TO_SOIL1C','SOIL2C_TO_SOIL3C','SOIL2C_vr','SOIL2N','SOIL2N_TO_SOIL1N','SOIL2N_TO_SOIL3N','SOIL2_HR_S1','SOIL2_HR_S3','SOIL3C','SOIL3C_TO_SOIL1C','SOIL3C_vr','SOIL3N','SOIL3N_TO_SOIL1N','SOIL3_HR','SOILC','SOILC_HR','SOILC_LOSS','SOILICE','SOILLIQ','SOILRESIS','SOILWATER_10CM','SOMC_FIRE','SOMHR','SOM_C_LEACHED','SUM_FUEL','SUPPLEMENT_TO_SMINN','SoilAlpha','SoilAlpha_U','TAUX','TAUY','TBOT','TBUILD','TG','TG_R','TG_U','TH2OSFC','THBOT','TKE1','TLAI','TLAKE','TOTLITN','TOTLITN_1m','TOTSOMN','TOTSOMN_1m','TREFMNAV','TREFMNAV_R','TREFMNAV_U','TREFMXAV','TREFMXAV_R','TREFMXAV_U','TRIMMING','TSA','TSAI','TSA_R','TSA_U','TSOI','TSOI_10CM','TSOI_ICE','TV','TWS','T_SCALAR','U10','URBAN_AC','URBAN_HEAT','VOLR','VOLRMCH','WA','WASTEHEAT','WIND','W_SCALAR','ZBOT','ZWT','ZWT_PERCH'
    #cat > user_nl_clm_${expstr} <<EOF
    # fates_paramfile = '/glade/u/home/charlie/cesm_input_data/lnd/clm2/paramdata/ppm_cmpexpt_files/fates_params.prescribedphys_stochppa1_allmort_0pt5dist_10xseedalloc.2pft.${i}.c171221.nc'
    cat > user_nl_clm <<EOF
use_fates_ed_prescribed_phys = .true.
hist_nhtfrq = 17520
hist_mfilt = 5
fates_paramfile = '/glade/u/home/charlie/cesm_input_data/lnd/clm2/paramdata/ppm_cmpexpt_files/fates_params.prescribedphys_stochppa1_allmort_0pt5dist_10xseedalloc.2pft.${i}.c171221.nc'
hist_fincl1 = 'BA_SCLS', 'DEMOTION_RATE_SCLS', 'PROMOTION_RATE_SCLS', 'NPLANT_CANOPY_SCLS', 'MORTALITY_CANOPY_SCLS','NPLANT_UNDERSTORY_SCLS', 'MORTALITY_UNDERSTORY_SCLS', 'DDBH_SCPF', 'DDBH_CANOPY_SCPF', 'DDBH_UNDERSTORY_SCPF','NPLANT_SCAG', 'YESTERDAYCANLEV_CANOPY_SCLS', 'YESTERDAYCANLEV_UNDERSTORY_SCLS','PATCH_AREA_BY_AGE','CANOPY_AREA_BY_AGE','NPATCH_BY_AGE','BIOMASS_BY_AGE','NPP_SCPF','CROWN_AREA_CANOPY_SCLS','CROWN_AREA_UNDERSTORY_SCLS','NPLANT_CANOPY_SCPF','NPLANT_UNDERSTORY_SCPF'
hist_fexcl1='ACTUAL_IMMOB','AR','ATM_TOPO','BCDEP','BTRAN','BTRAN2','BTRANMN','BUILDHEAT','COL_CTRUNC','COL_NTRUNC','DENIT','DSL','DSTDEP','DSTFLXT','EFFECT_WSPEED','EFLX_DYNBAL','EFLX_GRND_LAKE','EFLX_LH_TOT','EFLX_LH_TOT_R','EFLX_LH_TOT_U','ELAI','ERRH2O','ERRH2OSNO','ERRSEB','ERRSOI','ERRSOL','ESAI','FCEV','FCOV','FCTR','FFIX_TO_SMINN','FGEV','FGR','FGR12','FGR_R','FGR_U','FH2OSFC','FIRA','FIRA_R','FIRA_U','FIRE','FIRE_AREA','FIRE_R','FIRE_ROS','FIRE_TFC_ROS','FIRE_U','FLDS','FROST_TABLE','FSA','FSAT','FSA_R','FSA_U','FSDS','FSDSND','FSDSNDLN','FSDSNI','FSDSVD','FSDSVDLN','FSDSVI','FSDSVILN','FSH','FSH_G','FSH_PRECIP_CONVERSION','FSH_R','FSH_TO_COUPLER','FSH_U','FSH_V','FSM','FSM_R','FSM_U','FSNO','FSNO_EFF','FSR','FSRND','FSRNDLN','FSRNI','FSRVD','FSRVDLN','FSRVI','GROSS_NMIN','GROWTH_RESP','H2OCAN','H2OSFC','H2OSNO','H2OSNO_TOP','H2OSOI','HEAT_CONTENT1','HEAT_CONTENT1_VEG','HEAT_FROM_AC','HR','HR_vr','HTOP','ICE_CONTENT1','LAISHA','LAISUN','LAKEICEFRAC','LAKEICETHICK','LIQCAN','LIQUID_CONTENT1','LITR1C','LITR1C_TO_SOIL1C','LITR1C_vr','LITR1N','LITR1N_TO_SOIL1N','LITR1_HR','LITR2C','LITR2C_TO_SOIL1C','LITR2C_vr','LITR2N','LITR2N_TO_SOIL1N','LITR2_HR','LITR3C','LITR3C_TO_SOIL2C','LITR3C_vr','LITR3N','LITR3N_TO_SOIL2N','LITR3_HR','M_LITR1C_TO_LEACHING','M_LITR2C_TO_LEACHING','M_LITR3C_TO_LEACHING','M_SOIL1C_TO_LEACHING','M_SOIL2C_TO_LEACHING','M_SOIL3C_TO_LEACHING','NDEP_TO_SMINN','NET_NMIN','NFIX_TO_SMINN','NPP_column','OCDEP','O_SCALAR','PARVEGLN','PBOT','PCO2','POTENTIAL_IMMOB','Q2M','QBOT','QCHARGE','QDRAI','QDRAI_PERCH','QDRAI_XS','QDRIP','QFLOOD','QFLX_ICE_DYNBAL','QFLX_LIQ_DYNBAL','QFLX_SNOW_DRAIN','QH2OSFC','QINFL','QINTR','QIRRIG','QOVER','QRGWL','QRUNOFF','QRUNOFF_ICE_TO_COUPLER','QRUNOFF_R','QRUNOFF_TO_COUPLER','QRUNOFF_U','QSNOFRZ','QSNOMELT','QSNWCPICE','QSOIL','QVEGE','QVEGT','RAIN','RH2M','RH2M_R','RH2M_U','SABG','SABG_PEN','SABV','SMINN','SMINN_LEACHED','SMINN_TO_DENIT_L1S1','SMINN_TO_DENIT_L2S1','SMINN_TO_DENIT_L3S2','SMINN_TO_DENIT_S1S2','SMINN_TO_DENIT_S1S3','SMINN_TO_DENIT_S2S1','SMINN_TO_DENIT_S2S3','SMINN_TO_DENIT_S3S1','SMINN_TO_PLANT','SMINN_TO_SOIL1N_L1','SMINN_TO_SOIL1N_L2','SMINN_TO_SOIL1N_S2','SMINN_TO_SOIL1N_S3','SMINN_TO_SOIL2N_L3','SMINN_TO_SOIL2N_S1','SMINN_TO_SOIL3N_S1','SMINN_TO_SOIL3N_S2','SMINN_vr','SMP','SNOBCMCL','SNOBCMSL','SNOCAN','SNODSTMCL','SNODSTMSL','SNOINTABS','SNOOCMCL','SNOOCMSL','SNOUNLOAD','SNOW','SNOWDP','SNOWICE','SNOWLIQ','SNOW_DEPTH','SNOW_SINKS','SNOW_SOURCES','SOIL1C','SOIL1C_TO_SOIL2C','SOIL1C_TO_SOIL3C','SOIL1C_vr','SOIL1N','SOIL1N_TO_SOIL2N','SOIL1N_TO_SOIL3N','SOIL1_HR_S2','SOIL1_HR_S3','SOIL2C','SOIL2C_TO_SOIL1C','SOIL2C_TO_SOIL3C','SOIL2C_vr','SOIL2N','SOIL2N_TO_SOIL1N','SOIL2N_TO_SOIL3N','SOIL2_HR_S1','SOIL2_HR_S3','SOIL3C','SOIL3C_TO_SOIL1C','SOIL3C_vr','SOIL3N','SOIL3N_TO_SOIL1N','SOIL3_HR','SOILC_HR','SOILICE','SOILLIQ','SOILRESIS','SOILWATER_10CM','SOMC_FIRE','SOM_C_LEACHED','SUM_FUEL','SUPPLEMENT_TO_SMINN','SoilAlpha','SoilAlpha_U','TAUX','TAUY','TBOT','TBUILD','TG','TG_R','TG_U','TH2OSFC','THBOT','TKE1','TLAI','TLAKE','TOTLITN','TOTLITN_1m','TOTSOMN','TOTSOMN_1m','TREFMNAV','TREFMNAV_R','TREFMNAV_U','TREFMXAV','TREFMXAV_R','TREFMXAV_U','TRIMMING','TSA','TSAI','TSA_R','TSA_U','TSOI','TSOI_10CM','TSOI_ICE','TV','TWS','T_SCALAR','U10','URBAN_AC','URBAN_HEAT','VOLR','VOLRMCH','WA','WASTEHEAT','WIND','W_SCALAR','ZBOT','ZWT','ZWT_PERCH'
EOF

    #done

  qcmd -- ./case.build
  ./case.submit
  done  # chunking loop
fi



#if [ "${SETUP_CASE}" == "fates_fullmodel_bci_exp01a_cmpexc3_respterm1_mortterm0pt1_undmortfrac1" ]; then
#if [ "${SETUP_CASE}" == "fates_fullmodel_bci_exp01a_cmpexc3_respterm1_mortterm0pt1_undmortfrac1_cushion1pt1" ]; then
#if [ "${SETUP_CASE}" == "fates_fullmodel_bci_exp01a_cmpexc3_respterm1_mortterm0pt1_undmortfrac1_cushion1pt3" ]; then
#if [ "${SETUP_CASE}" == "fates_fullmodel_bci_exp01a_bciallom_detppa_respterm1_mortterm0pt1_undmortfrac1" ]; then
#if [ "${SETUP_CASE}" == "fates_fullmodel_bci_exp01a_bciallom_d2bldiff0pt2_detppa_respterm1_mortterm0pt1_undmortfrac1" ]; then
#if [ "${SETUP_CASE}" == "fates_fullmodel_bci_exp01_detppa_respterm1_mortterm0pt1_noEDdist" ]; then
#if [ "${SETUP_CASE}" == "fates_fullmodel_bci_exp01_detppa_respterm1_mortterm0pt1_undmortfrac1" ]; then
#if [ "${SETUP_CASE}" == "fates_fullmodel_bci_exp02_coextest_baseline" ]; then
#if [ "${SETUP_CASE}" == "fates_fullmodel_bci_exp02a_coextest_allmortdist" ]; then
#if [ "${SETUP_CASE}" == "fates_fullmodel_bci_exp02b_coextest_allmortdist_pt85wooddens" ]; then
#if [ "${SETUP_CASE}" == "fates_fullmodel_bci_exp02c_coextest_allmortdist_pt80wooddens" ]; then
#if [ "${SETUP_CASE}" == "fates_fullmodel_bci_exp022_coextest_allmortdist_pt85wooddens_2xseed" ]; then
#if [ "${SETUP_CASE}" == "fates_fullmodel_bci_exp022_coextest_allmortdist_pt85wooddens_1pt5xseed" ]; then
#if [ "${SETUP_CASE}" == "fates_fullmodel_bci_exp022_coextest_allmortdist_pt9wooddens_2xseed" ]; then
#if [ "${SETUP_CASE}" == "fates_fullmodel_bci_exp022_coextest_allmortdist_pt875wooddens_2xseed" ]; then
#if [ "${SETUP_CASE}" == "fates_fullmodel_bci_exp03_hiresagedist_restart" ]; then
#if [ "${SETUP_CASE}" == "fates_fullmodel_bci_exp03b_higher_resagedist" ]; then
if [ "${SETUP_CASE}" == "fates_fullmodel_bci_exp03b_higher_resagedist_stochppa3" ]; then
    CASE_NAME=${SETUP_CASE}_${GITHASH1}_${GITHASH2}
    basedir=$HOME/clmed/fates-clm/cime/scripts
    export SITE_NAME=bci_0.1x0.1_v4.0i                         # Name of folder with site data
    export SITE_BASE_DIR=/glade/u/home/charlie/cesm_input_data/atm/datm7/CLM_USRDAT_datasets/
    export CLM_USRDAT_DOMAIN=domain_bci_panama_v1_c171113.nc   # Name of domain file in scripts/${SITE_DIR}/
    export CLM_USRDAT_SURDAT=surfdata_bci_panama_v1_c171113.nc # Name of surface file in scripts/${SITE_DIR}/

    #### load_machine_files
    cd $basedir
    export RES=CLM_USRDAT
    ./create_newcase -case ${CASE_NAME} -res ${RES} -compset ICLM45ED -mach cheyenne -project P93300041 --run-unsupported
    cd ${CASE_NAME}
    export DIN_LOC_ROOT_FORCE=${SITE_BASE_DIR}
    export CLM_SURFDAT_DIR=${SITE_BASE_DIR}/${SITE_NAME}
    export CLM_DOMAIN_DIR=${SITE_BASE_DIR}/${SITE_NAME}

    ./xmlchange -file env_run.xml -id STOP_OPTION -val nyears
    ./xmlchange -file env_run.xml -id STOP_N -val 200
    ./xmlchange -file env_run.xml -id REST_N -val 10
    ./xmlchange -file env_run.xml -id CONTINUE_RUN -val FALSE
    ./xmlchange -file env_run.xml -id RESUBMIT -val 3
    ./xmlchange -file env_build.xml -id DEBUG -val FALSE
    
    ./xmlchange -file env_run.xml -id DIN_LOC_ROOT -val /glade/u/home/charlie/cesm_input_data

    # SET PATHS TO SCRATCH ROOT, DOMAIN AND MET DATA (USERS WILL PROB NOT CHANGE THESE)
    # =================================================================================
    
    ./xmlchange -file env_run.xml -id ATM_DOMAIN_FILE -val ${CLM_USRDAT_DOMAIN}
    ./xmlchange -file env_run.xml -id ATM_DOMAIN_PATH -val ${CLM_DOMAIN_DIR}
    ./xmlchange -file env_run.xml -id LND_DOMAIN_FILE -val ${CLM_USRDAT_DOMAIN}
    ./xmlchange -file env_run.xml -id LND_DOMAIN_PATH -val ${CLM_DOMAIN_DIR}
    ./xmlchange -file env_run.xml -id DATM_MODE -val CLM1PT
    ./xmlchange -file env_run.xml -id CLM_USRDAT_NAME -val ${SITE_NAME}
    ./xmlchange -file env_run.xml -id DIN_LOC_ROOT_CLMFORC -val ${DIN_LOC_ROOT_FORCE}

    
    ./xmlchange -file env_build.xml -id EXEROOT -val /glade2/scratch2/charlie/$CASE_NAME/bld
    ./xmlchange -file env_run.xml -id RUNDIR -val /glade2/scratch2/charlie/$CASE_NAME/run
    ./xmlchange -file env_run.xml -id DOUT_S_ROOT -val /glade2/scratch2/charlie/archive/$CASE_NAME

    ./xmlchange -file env_batch.xml -id JOB_WALLCLOCK_TIME -val 11:59:00
    ./xmlchange -file env_run.xml -id STOP_OPTION -val nyears
    ./xmlchange -file env_run.xml -id DATM_CLMNCEP_YR_START -val 2003
    ./xmlchange -file env_run.xml -id DATM_CLMNCEP_YR_END -val 2016

    # fates_paramfile = '/glade/u/home/charlie/cesm_input_data/lnd/clm2/paramdata/fates_params.standardparams_strictppa_allmort.reducedcmortparam.c171201.nc'
    # fates_paramfile = '/glade/u/home/charlie/cesm_input_data/lnd/clm2/paramdata/fates_params.standardparams_cmpex3_allmort.reducedcmortparam.c171201.nc'
    # fates_paramfile = '/glade/u/home/charlie/cesm_input_data/lnd/clm2/paramdata/fates_params.standardparams_strictppa_allmort_bciallom.reducedcmortparam.c171205.nc'
    # fates_paramfile = '/glade/u/home/charlie/cesm_input_data/lnd/clm2/paramdata/fates_params.coextest.round2.01.lowcmort.c171205.nc'
    # fates_paramfile = '/glade/u/home/charlie/cesm_input_data/lnd/clm2/paramdata/fates_params.coextest.round2.02.lowcmort.allmortdist.c171205.nc'
    # fates_paramfile = '/glade/u/home/charlie/cesm_input_data/lnd/clm2/paramdata/fates_params.coextest.round2.03.lowcmort.pt85dens.allmortdist.c171205.nc'
    # fates_paramfile = '/glade/u/home/charlie/cesm_input_data/lnd/clm2/paramdata/fates_params.standardparams_strictppa_allmort_bciallom_lfexponentdiff0pt2_reducedcmortparam.c171205.nc'
    # fates_paramfile = '/glade/u/home/charlie/cesm_input_data/lnd/clm2/paramdata/fates_params.coextest.round2.03.lowcmort.pt80dens.allmortdist.c171205.nc'
    # fates_paramfile = '/glade/u/home/charlie/cesm_input_data/lnd/clm2/paramdata/fates_params.coextest.round2.04.2xseed.lowcmort.pt85dens.allmortdist.c171205.nc'
    # fates_paramfile = '/glade/u/home/charlie/cesm_input_data/lnd/clm2/paramdata/fates_params.coextest.round2.04.pt15xseed.lowcmort.pt85dens.allmortdist.c171205.nc'
    # fates_paramfile = '/glade/u/home/charlie/cesm_input_data/lnd/clm2/paramdata/fates_params.coextest.round2.04.2xseed.lowcmort.pt9dens.allmortdist.c171205.nc'
    # fates_paramfile = '/glade/u/home/charlie/cesm_input_data/lnd/clm2/paramdata/fates_params.standardparams_cmpex3_allmort.reducedcmortparam.lowcushion1pt1.c171201.nc'
    # finidat = '/glade2/scratch2/charlie/archive/fates_fullmodel_bci_exp01a_cmpexc3_respterm1_mortterm0pt1_undmortfrac1_b753898_108d346/rest/0401-01-01-00000/fates_fullmodel_bci_exp01a_cmpexc3_respterm1_mortterm0pt1_undmortfrac1_b753898_108d346.clm2.r.0401-01-01-00000.nc'
    # fates_paramfile = '/glade/u/home/charlie/cesm_input_data/lnd/clm2/paramdata/fates_params.standardparams_cmpex3_allmort.reducedcmortparam.lowcushion.c171201.nc'
    # fates_paramfile = '/glade/u/home/charlie/cesm_input_data/lnd/clm2/paramdata/fates_params.coextest.round2.04.2xseed.lowcmort.pt875dens.allmortdist.c171205.nc'
    # fates_paramfile = '/glade/u/home/charlie/cesm_input_data/lnd/clm2/paramdata/fates_params.standardparams_strictppa_allmort.reducedcmortparam.higher_resageoutput.c180118.nc'
    # 
    # finidat = '/glade2/scratch2/charlie/archive/fates_fullmodel_bci_exp03_hiresagedist_cc1fd62_2230787/rest/0401-01-01-00000/fates_fullmodel_bci_exp03_hiresagedist_cc1fd62_2230787.clm2.r.0401-01-01-00000.nc'
    cat > user_nl_clm <<EOF
fates_paramfile = '/glade/u/home/charlie/cesm_input_data/lnd/clm2/paramdata/fates_params.standardparams_stochppa3_allmort.reducedcmortparam.higher_resageoutput.c180118.nc'
fsurdat = '${CLM_SURFDAT_DIR}/${CLM_USRDAT_SURDAT}'
hist_fincl1 = 'DEMOTION_RATE_SCLS', 'PROMOTION_RATE_SCLS', 'YESTERDAYCANLEV_CANOPY_SCLS', 'YESTERDAYCANLEV_UNDERSTORY_SCLS','NPATCH_BY_AGE','BIOMASS_BY_AGE','CROWN_AREA_CANOPY_SCLS','CROWN_AREA_UNDERSTORY_SCLS'
hist_fexcl1 = 'NPLANT_SCAG'
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

if [ "${SETUP_CASE}" == "fates_fullmodel_bci_exp03c_higherresage_multiinst" ]; then
    CASE_NAME=${SETUP_CASE}_${GITHASH1}_${GITHASH2}
    basedir=$HOME/clmed/fates-clm/cime/scripts
    export SITE_NAME=bci_0.1x0.1_v4.0i                         # Name of folder with site data
    export SITE_BASE_DIR=/glade/u/home/charlie/cesm_input_data/atm/datm7/CLM_USRDAT_datasets/
    export CLM_USRDAT_DOMAIN=domain_bci_panama_v1_c171113.nc   # Name of domain file in scripts/${SITE_DIR}/
    export CLM_USRDAT_SURDAT=surfdata_bci_panama_v1_c171113.nc # Name of surface file in scripts/${SITE_DIR}/

    #### load_machine_files
    cd $basedir
    export RES=CLM_USRDAT
    ./create_newcase -case ${CASE_NAME} -res ${RES} -compset ICLM45ED -mach cheyenne -project P93300041 --run-unsupported
    cd ${CASE_NAME}
    export DIN_LOC_ROOT_FORCE=${SITE_BASE_DIR}
    export CLM_SURFDAT_DIR=${SITE_BASE_DIR}/${SITE_NAME}
    export CLM_DOMAIN_DIR=${SITE_BASE_DIR}/${SITE_NAME}

    ./xmlchange -file env_run.xml -id STOP_OPTION -val nyears
    ./xmlchange -file env_run.xml -id STOP_N -val 200
    ./xmlchange -file env_run.xml -id REST_N -val 10
    ./xmlchange -file env_run.xml -id CONTINUE_RUN -val FALSE
    ./xmlchange -file env_run.xml -id RESUBMIT -val 3
    ./xmlchange -file env_build.xml -id DEBUG -val FALSE
    
    ./xmlchange -file env_run.xml -id DIN_LOC_ROOT -val /glade/u/home/charlie/cesm_input_data

    # SET PATHS TO SCRATCH ROOT, DOMAIN AND MET DATA (USERS WILL PROB NOT CHANGE THESE)
    # =================================================================================
    
    ./xmlchange -file env_run.xml -id ATM_DOMAIN_FILE -val ${CLM_USRDAT_DOMAIN}
    ./xmlchange -file env_run.xml -id ATM_DOMAIN_PATH -val ${CLM_DOMAIN_DIR}
    ./xmlchange -file env_run.xml -id LND_DOMAIN_FILE -val ${CLM_USRDAT_DOMAIN}
    ./xmlchange -file env_run.xml -id LND_DOMAIN_PATH -val ${CLM_DOMAIN_DIR}
    ./xmlchange -file env_run.xml -id DATM_MODE -val CLM1PT
    ./xmlchange -file env_run.xml -id CLM_USRDAT_NAME -val ${SITE_NAME}
    ./xmlchange -file env_run.xml -id DIN_LOC_ROOT_CLMFORC -val ${DIN_LOC_ROOT_FORCE}

    
    ./xmlchange -file env_build.xml -id EXEROOT -val /glade2/scratch2/charlie/$CASE_NAME/bld
    ./xmlchange -file env_run.xml -id RUNDIR -val /glade2/scratch2/charlie/$CASE_NAME/run
    ./xmlchange -file env_run.xml -id DOUT_S_ROOT -val /glade2/scratch2/charlie/archive/$CASE_NAME

    ./xmlchange -file env_batch.xml -id JOB_WALLCLOCK_TIME -val 11:59:00
    ./xmlchange -file env_run.xml -id STOP_OPTION -val nyears
    ./xmlchange -file env_run.xml -id DATM_CLMNCEP_YR_START -val 2003
    ./xmlchange -file env_run.xml -id DATM_CLMNCEP_YR_END -val 2016

    ./xmlchange NINST_LND=6
    ./xmlchange ROOTPE_LND=1

    cat > user_nl_clm_0001 <<EOF
fates_paramfile = '/glade/u/home/charlie/cesm_input_data/lnd/clm2/paramdata/fates_params.standardparams_strictppa_allmort.reducedcmortparam.higher_resageoutput.c180118.nc'
fsurdat = '${CLM_SURFDAT_DIR}/${CLM_USRDAT_SURDAT}'
hist_nhtfrq = 17520
hist_mfilt = 5
hist_fincl1 = 'DEMOTION_RATE_SCLS', 'PROMOTION_RATE_SCLS', 'YESTERDAYCANLEV_CANOPY_SCLS', 'YESTERDAYCANLEV_UNDERSTORY_SCLS','NPATCH_BY_AGE','BIOMASS_BY_AGE','CROWN_AREA_CANOPY_SCLS','CROWN_AREA_UNDERSTORY_SCLS'
hist_fexcl1= 'NPLANT_SCAG','ACTUAL_IMMOB','AR','ATM_TOPO','BCDEP','BTRAN','BTRAN2','BTRANMN','BUILDHEAT','COL_CTRUNC','COL_NTRUNC','DENIT','DSL','DSTDEP','DSTFLXT','EFFECT_WSPEED','EFLX_DYNBAL','EFLX_GRND_LAKE','EFLX_LH_TOT','EFLX_LH_TOT_R','EFLX_LH_TOT_U','ELAI','ERRH2O','ERRH2OSNO','ERRSEB','ERRSOI','ERRSOL','ESAI','FCEV','FCOV','FCTR','FFIX_TO_SMINN','FGEV','FGR','FGR12','FGR_R','FGR_U','FH2OSFC','FIRA','FIRA_R','FIRA_U','FIRE','FIRE_AREA','FIRE_R','FIRE_ROS','FIRE_TFC_ROS','FIRE_U','FLDS','FPSN','FPSN_WC','FPSN_WJ','FPSN_WP','FROST_TABLE','FSA','FSAT','FSA_R','FSA_U','FSDS','FSDSND','FSDSNDLN','FSDSNI','FSDSVD','FSDSVDLN','FSDSVI','FSDSVILN','FSH','FSH_G','FSH_PRECIP_CONVERSION','FSH_R','FSH_TO_COUPLER','FSH_U','FSH_V','FSM','FSM_R','FSM_U','FSNO','FSNO_EFF','FSR','FSRND','FSRNDLN','FSRNI','FSRVD','FSRVDLN','FSRVI','GROSS_NMIN','GROWTH_RESP','H2OCAN','H2OSFC','H2OSNO','H2OSNO_TOP','H2OSOI','HEAT_CONTENT1','HEAT_CONTENT1_VEG','HEAT_FROM_AC','HR','HR_vr','HTOP','ICE_CONTENT1','LAISHA','LAISUN','LAKEICEFRAC','LAKEICETHICK','LIQCAN','LIQUID_CONTENT1','LITHR','LITR1C','LITR1C_TO_SOIL1C','LITR1C_vr','LITR1N','LITR1N_TO_SOIL1N','LITR1_HR','LITR2C','LITR2C_TO_SOIL1C','LITR2C_vr','LITR2N','LITR2N_TO_SOIL1N','LITR2_HR','LITR3C','LITR3C_TO_SOIL2C','LITR3C_vr','LITR3N','LITR3N_TO_SOIL2N','LITR3_HR','LITTERC','LITTERC_HR','M_LITR1C_TO_LEACHING','M_LITR2C_TO_LEACHING','M_LITR3C_TO_LEACHING','M_SOIL1C_TO_LEACHING','M_SOIL2C_TO_LEACHING','M_SOIL3C_TO_LEACHING','NDEP_TO_SMINN','NET_NMIN','NFIX_TO_SMINN','NPP_column','OCDEP','O_SCALAR','PARVEGLN','PBOT','PCO2','POTENTIAL_IMMOB','Q2M','QBOT','QCHARGE','QDRAI','QDRAI_PERCH','QDRAI_XS','QDRIP','QFLOOD','QFLX_ICE_DYNBAL','QFLX_LIQ_DYNBAL','QFLX_SNOW_DRAIN','QH2OSFC','QINFL','QINTR','QIRRIG','QOVER','QRGWL','QRUNOFF','QRUNOFF_ICE_TO_COUPLER','QRUNOFF_R','QRUNOFF_TO_COUPLER','QRUNOFF_U','QSNOFRZ','QSNOMELT','QSNOTEMPUNLOAD','QSNOWINDUNLOAD','QSNWCPICE','QSNWCPLIQ','QSOIL','QVEGE','QVEGT','RAIN','RAIN_REPARTITIONED','RH2M','RH2M_R','RH2M_U','SABG','SABG_PEN','SABV','SMINN','SMINN_LEACHED','SMINN_TO_DENIT_L1S1','SMINN_TO_DENIT_L2S1','SMINN_TO_DENIT_L3S2','SMINN_TO_DENIT_S1S2','SMINN_TO_DENIT_S1S3','SMINN_TO_DENIT_S2S1','SMINN_TO_DENIT_S2S3','SMINN_TO_DENIT_S3S1','SMINN_TO_PLANT','SMINN_TO_SOIL1N_L1','SMINN_TO_SOIL1N_L2','SMINN_TO_SOIL1N_S2','SMINN_TO_SOIL1N_S3','SMINN_TO_SOIL2N_L3','SMINN_TO_SOIL2N_S1','SMINN_TO_SOIL3N_S1','SMINN_TO_SOIL3N_S2','SMINN_vr','SMP','SNOBCMCL','SNOBCMSL','SNOCAN','SNODSTMCL','SNODSTMSL','SNOINTABS','SNOOCMCL','SNOOCMSL','SNOUNLOAD','SNOW','SNOWDP','SNOWICE','SNOWLIQ','SNOW_DEPTH','SNOW_REPARTITIONED','SNOW_SINKS','SNOW_SOURCES','SOIL1C','SOIL1C_TO_SOIL2C','SOIL1C_TO_SOIL3C','SOIL1C_vr','SOIL1N','SOIL1N_TO_SOIL2N','SOIL1N_TO_SOIL3N','SOIL1_HR_S2','SOIL1_HR_S3','SOIL2C','SOIL2C_TO_SOIL1C','SOIL2C_TO_SOIL3C','SOIL2C_vr','SOIL2N','SOIL2N_TO_SOIL1N','SOIL2N_TO_SOIL3N','SOIL2_HR_S1','SOIL2_HR_S3','SOIL3C','SOIL3C_TO_SOIL1C','SOIL3C_vr','SOIL3N','SOIL3N_TO_SOIL1N','SOIL3_HR','SOILC','SOILC_HR','SOILC_LOSS','SOILICE','SOILLIQ','SOILRESIS','SOILWATER_10CM','SOMC_FIRE','SOMHR','SOM_C_LEACHED','SUM_FUEL','SUPPLEMENT_TO_SMINN','SoilAlpha','SoilAlpha_U','TAUX','TAUY','TBOT','TBUILD','TG','TG_R','TG_U','TH2OSFC','THBOT','TKE1','TLAI','TLAKE','TOTLITN','TOTLITN_1m','TOTSOMN','TOTSOMN_1m','TREFMNAV','TREFMNAV_R','TREFMNAV_U','TREFMXAV','TREFMXAV_R','TREFMXAV_U','TRIMMING','TSA','TSAI','TSA_R','TSA_U','TSOI','TSOI_10CM','TSOI_ICE','TV','TWS','T_SCALAR','U10','URBAN_AC','URBAN_HEAT','VOLR','VOLRMCH','WA','WASTEHEAT','WIND','W_SCALAR','ZBOT','ZWT','ZWT_PERCH'
EOF

    cat > user_nl_clm_0002 <<EOF
fates_paramfile = '/glade/u/home/charlie/cesm_input_data/lnd/clm2/paramdata/fates_params.standardparams_stochppa3_allmort.reducedcmortparam.higher_resageoutput.c180118.nc'
fsurdat = '${CLM_SURFDAT_DIR}/${CLM_USRDAT_SURDAT}'
hist_nhtfrq = 17520
hist_mfilt = 5
hist_fincl1 = 'DEMOTION_RATE_SCLS', 'PROMOTION_RATE_SCLS', 'YESTERDAYCANLEV_CANOPY_SCLS', 'YESTERDAYCANLEV_UNDERSTORY_SCLS','NPATCH_BY_AGE','BIOMASS_BY_AGE','CROWN_AREA_CANOPY_SCLS','CROWN_AREA_UNDERSTORY_SCLS'
hist_fexcl1= 'NPLANT_SCAG','ACTUAL_IMMOB','AR','ATM_TOPO','BCDEP','BTRAN','BTRAN2','BTRANMN','BUILDHEAT','COL_CTRUNC','COL_NTRUNC','DENIT','DSL','DSTDEP','DSTFLXT','EFFECT_WSPEED','EFLX_DYNBAL','EFLX_GRND_LAKE','EFLX_LH_TOT','EFLX_LH_TOT_R','EFLX_LH_TOT_U','ELAI','ERRH2O','ERRH2OSNO','ERRSEB','ERRSOI','ERRSOL','ESAI','FCEV','FCOV','FCTR','FFIX_TO_SMINN','FGEV','FGR','FGR12','FGR_R','FGR_U','FH2OSFC','FIRA','FIRA_R','FIRA_U','FIRE','FIRE_AREA','FIRE_R','FIRE_ROS','FIRE_TFC_ROS','FIRE_U','FLDS','FPSN','FPSN_WC','FPSN_WJ','FPSN_WP','FROST_TABLE','FSA','FSAT','FSA_R','FSA_U','FSDS','FSDSND','FSDSNDLN','FSDSNI','FSDSVD','FSDSVDLN','FSDSVI','FSDSVILN','FSH','FSH_G','FSH_PRECIP_CONVERSION','FSH_R','FSH_TO_COUPLER','FSH_U','FSH_V','FSM','FSM_R','FSM_U','FSNO','FSNO_EFF','FSR','FSRND','FSRNDLN','FSRNI','FSRVD','FSRVDLN','FSRVI','GROSS_NMIN','GROWTH_RESP','H2OCAN','H2OSFC','H2OSNO','H2OSNO_TOP','H2OSOI','HEAT_CONTENT1','HEAT_CONTENT1_VEG','HEAT_FROM_AC','HR','HR_vr','HTOP','ICE_CONTENT1','LAISHA','LAISUN','LAKEICEFRAC','LAKEICETHICK','LIQCAN','LIQUID_CONTENT1','LITHR','LITR1C','LITR1C_TO_SOIL1C','LITR1C_vr','LITR1N','LITR1N_TO_SOIL1N','LITR1_HR','LITR2C','LITR2C_TO_SOIL1C','LITR2C_vr','LITR2N','LITR2N_TO_SOIL1N','LITR2_HR','LITR3C','LITR3C_TO_SOIL2C','LITR3C_vr','LITR3N','LITR3N_TO_SOIL2N','LITR3_HR','LITTERC','LITTERC_HR','M_LITR1C_TO_LEACHING','M_LITR2C_TO_LEACHING','M_LITR3C_TO_LEACHING','M_SOIL1C_TO_LEACHING','M_SOIL2C_TO_LEACHING','M_SOIL3C_TO_LEACHING','NDEP_TO_SMINN','NET_NMIN','NFIX_TO_SMINN','NPP_column','OCDEP','O_SCALAR','PARVEGLN','PBOT','PCO2','POTENTIAL_IMMOB','Q2M','QBOT','QCHARGE','QDRAI','QDRAI_PERCH','QDRAI_XS','QDRIP','QFLOOD','QFLX_ICE_DYNBAL','QFLX_LIQ_DYNBAL','QFLX_SNOW_DRAIN','QH2OSFC','QINFL','QINTR','QIRRIG','QOVER','QRGWL','QRUNOFF','QRUNOFF_ICE_TO_COUPLER','QRUNOFF_R','QRUNOFF_TO_COUPLER','QRUNOFF_U','QSNOFRZ','QSNOMELT','QSNOTEMPUNLOAD','QSNOWINDUNLOAD','QSNWCPICE','QSNWCPLIQ','QSOIL','QVEGE','QVEGT','RAIN','RAIN_REPARTITIONED','RH2M','RH2M_R','RH2M_U','SABG','SABG_PEN','SABV','SMINN','SMINN_LEACHED','SMINN_TO_DENIT_L1S1','SMINN_TO_DENIT_L2S1','SMINN_TO_DENIT_L3S2','SMINN_TO_DENIT_S1S2','SMINN_TO_DENIT_S1S3','SMINN_TO_DENIT_S2S1','SMINN_TO_DENIT_S2S3','SMINN_TO_DENIT_S3S1','SMINN_TO_PLANT','SMINN_TO_SOIL1N_L1','SMINN_TO_SOIL1N_L2','SMINN_TO_SOIL1N_S2','SMINN_TO_SOIL1N_S3','SMINN_TO_SOIL2N_L3','SMINN_TO_SOIL2N_S1','SMINN_TO_SOIL3N_S1','SMINN_TO_SOIL3N_S2','SMINN_vr','SMP','SNOBCMCL','SNOBCMSL','SNOCAN','SNODSTMCL','SNODSTMSL','SNOINTABS','SNOOCMCL','SNOOCMSL','SNOUNLOAD','SNOW','SNOWDP','SNOWICE','SNOWLIQ','SNOW_DEPTH','SNOW_REPARTITIONED','SNOW_SINKS','SNOW_SOURCES','SOIL1C','SOIL1C_TO_SOIL2C','SOIL1C_TO_SOIL3C','SOIL1C_vr','SOIL1N','SOIL1N_TO_SOIL2N','SOIL1N_TO_SOIL3N','SOIL1_HR_S2','SOIL1_HR_S3','SOIL2C','SOIL2C_TO_SOIL1C','SOIL2C_TO_SOIL3C','SOIL2C_vr','SOIL2N','SOIL2N_TO_SOIL1N','SOIL2N_TO_SOIL3N','SOIL2_HR_S1','SOIL2_HR_S3','SOIL3C','SOIL3C_TO_SOIL1C','SOIL3C_vr','SOIL3N','SOIL3N_TO_SOIL1N','SOIL3_HR','SOILC','SOILC_HR','SOILC_LOSS','SOILICE','SOILLIQ','SOILRESIS','SOILWATER_10CM','SOMC_FIRE','SOMHR','SOM_C_LEACHED','SUM_FUEL','SUPPLEMENT_TO_SMINN','SoilAlpha','SoilAlpha_U','TAUX','TAUY','TBOT','TBUILD','TG','TG_R','TG_U','TH2OSFC','THBOT','TKE1','TLAI','TLAKE','TOTLITN','TOTLITN_1m','TOTSOMN','TOTSOMN_1m','TREFMNAV','TREFMNAV_R','TREFMNAV_U','TREFMXAV','TREFMXAV_R','TREFMXAV_U','TRIMMING','TSA','TSAI','TSA_R','TSA_U','TSOI','TSOI_10CM','TSOI_ICE','TV','TWS','T_SCALAR','U10','URBAN_AC','URBAN_HEAT','VOLR','VOLRMCH','WA','WASTEHEAT','WIND','W_SCALAR','ZBOT','ZWT','ZWT_PERCH'
EOF

    cat > user_nl_clm_0003 <<EOF
fates_paramfile = '/glade/u/home/charlie/cesm_input_data/lnd/clm2/paramdata/fates_params.standardparams_stochppa1_allmort.reducedcmortparam.higher_resageoutput.c180118.nc'
fsurdat = '${CLM_SURFDAT_DIR}/${CLM_USRDAT_SURDAT}'
hist_nhtfrq = 17520
hist_mfilt = 5
hist_fincl1 = 'DEMOTION_RATE_SCLS', 'PROMOTION_RATE_SCLS', 'YESTERDAYCANLEV_CANOPY_SCLS', 'YESTERDAYCANLEV_UNDERSTORY_SCLS','NPATCH_BY_AGE','BIOMASS_BY_AGE','CROWN_AREA_CANOPY_SCLS','CROWN_AREA_UNDERSTORY_SCLS'
hist_fexcl1= 'NPLANT_SCAG','ACTUAL_IMMOB','AR','ATM_TOPO','BCDEP','BTRAN','BTRAN2','BTRANMN','BUILDHEAT','COL_CTRUNC','COL_NTRUNC','DENIT','DSL','DSTDEP','DSTFLXT','EFFECT_WSPEED','EFLX_DYNBAL','EFLX_GRND_LAKE','EFLX_LH_TOT','EFLX_LH_TOT_R','EFLX_LH_TOT_U','ELAI','ERRH2O','ERRH2OSNO','ERRSEB','ERRSOI','ERRSOL','ESAI','FCEV','FCOV','FCTR','FFIX_TO_SMINN','FGEV','FGR','FGR12','FGR_R','FGR_U','FH2OSFC','FIRA','FIRA_R','FIRA_U','FIRE','FIRE_AREA','FIRE_R','FIRE_ROS','FIRE_TFC_ROS','FIRE_U','FLDS','FPSN','FPSN_WC','FPSN_WJ','FPSN_WP','FROST_TABLE','FSA','FSAT','FSA_R','FSA_U','FSDS','FSDSND','FSDSNDLN','FSDSNI','FSDSVD','FSDSVDLN','FSDSVI','FSDSVILN','FSH','FSH_G','FSH_PRECIP_CONVERSION','FSH_R','FSH_TO_COUPLER','FSH_U','FSH_V','FSM','FSM_R','FSM_U','FSNO','FSNO_EFF','FSR','FSRND','FSRNDLN','FSRNI','FSRVD','FSRVDLN','FSRVI','GROSS_NMIN','GROWTH_RESP','H2OCAN','H2OSFC','H2OSNO','H2OSNO_TOP','H2OSOI','HEAT_CONTENT1','HEAT_CONTENT1_VEG','HEAT_FROM_AC','HR','HR_vr','HTOP','ICE_CONTENT1','LAISHA','LAISUN','LAKEICEFRAC','LAKEICETHICK','LIQCAN','LIQUID_CONTENT1','LITHR','LITR1C','LITR1C_TO_SOIL1C','LITR1C_vr','LITR1N','LITR1N_TO_SOIL1N','LITR1_HR','LITR2C','LITR2C_TO_SOIL1C','LITR2C_vr','LITR2N','LITR2N_TO_SOIL1N','LITR2_HR','LITR3C','LITR3C_TO_SOIL2C','LITR3C_vr','LITR3N','LITR3N_TO_SOIL2N','LITR3_HR','LITTERC','LITTERC_HR','M_LITR1C_TO_LEACHING','M_LITR2C_TO_LEACHING','M_LITR3C_TO_LEACHING','M_SOIL1C_TO_LEACHING','M_SOIL2C_TO_LEACHING','M_SOIL3C_TO_LEACHING','NDEP_TO_SMINN','NET_NMIN','NFIX_TO_SMINN','NPP_column','OCDEP','O_SCALAR','PARVEGLN','PBOT','PCO2','POTENTIAL_IMMOB','Q2M','QBOT','QCHARGE','QDRAI','QDRAI_PERCH','QDRAI_XS','QDRIP','QFLOOD','QFLX_ICE_DYNBAL','QFLX_LIQ_DYNBAL','QFLX_SNOW_DRAIN','QH2OSFC','QINFL','QINTR','QIRRIG','QOVER','QRGWL','QRUNOFF','QRUNOFF_ICE_TO_COUPLER','QRUNOFF_R','QRUNOFF_TO_COUPLER','QRUNOFF_U','QSNOFRZ','QSNOMELT','QSNOTEMPUNLOAD','QSNOWINDUNLOAD','QSNWCPICE','QSNWCPLIQ','QSOIL','QVEGE','QVEGT','RAIN','RAIN_REPARTITIONED','RH2M','RH2M_R','RH2M_U','SABG','SABG_PEN','SABV','SMINN','SMINN_LEACHED','SMINN_TO_DENIT_L1S1','SMINN_TO_DENIT_L2S1','SMINN_TO_DENIT_L3S2','SMINN_TO_DENIT_S1S2','SMINN_TO_DENIT_S1S3','SMINN_TO_DENIT_S2S1','SMINN_TO_DENIT_S2S3','SMINN_TO_DENIT_S3S1','SMINN_TO_PLANT','SMINN_TO_SOIL1N_L1','SMINN_TO_SOIL1N_L2','SMINN_TO_SOIL1N_S2','SMINN_TO_SOIL1N_S3','SMINN_TO_SOIL2N_L3','SMINN_TO_SOIL2N_S1','SMINN_TO_SOIL3N_S1','SMINN_TO_SOIL3N_S2','SMINN_vr','SMP','SNOBCMCL','SNOBCMSL','SNOCAN','SNODSTMCL','SNODSTMSL','SNOINTABS','SNOOCMCL','SNOOCMSL','SNOUNLOAD','SNOW','SNOWDP','SNOWICE','SNOWLIQ','SNOW_DEPTH','SNOW_REPARTITIONED','SNOW_SINKS','SNOW_SOURCES','SOIL1C','SOIL1C_TO_SOIL2C','SOIL1C_TO_SOIL3C','SOIL1C_vr','SOIL1N','SOIL1N_TO_SOIL2N','SOIL1N_TO_SOIL3N','SOIL1_HR_S2','SOIL1_HR_S3','SOIL2C','SOIL2C_TO_SOIL1C','SOIL2C_TO_SOIL3C','SOIL2C_vr','SOIL2N','SOIL2N_TO_SOIL1N','SOIL2N_TO_SOIL3N','SOIL2_HR_S1','SOIL2_HR_S3','SOIL3C','SOIL3C_TO_SOIL1C','SOIL3C_vr','SOIL3N','SOIL3N_TO_SOIL1N','SOIL3_HR','SOILC','SOILC_HR','SOILC_LOSS','SOILICE','SOILLIQ','SOILRESIS','SOILWATER_10CM','SOMC_FIRE','SOMHR','SOM_C_LEACHED','SUM_FUEL','SUPPLEMENT_TO_SMINN','SoilAlpha','SoilAlpha_U','TAUX','TAUY','TBOT','TBUILD','TG','TG_R','TG_U','TH2OSFC','THBOT','TKE1','TLAI','TLAKE','TOTLITN','TOTLITN_1m','TOTSOMN','TOTSOMN_1m','TREFMNAV','TREFMNAV_R','TREFMNAV_U','TREFMXAV','TREFMXAV_R','TREFMXAV_U','TRIMMING','TSA','TSAI','TSA_R','TSA_U','TSOI','TSOI_10CM','TSOI_ICE','TV','TWS','T_SCALAR','U10','URBAN_AC','URBAN_HEAT','VOLR','VOLRMCH','WA','WASTEHEAT','WIND','W_SCALAR','ZBOT','ZWT','ZWT_PERCH'
EOF

    cat > user_nl_clm_0004 <<EOF
fates_paramfile = '/glade/u/home/charlie/cesm_input_data/lnd/clm2/paramdata/fates_params.standardparams_strictppa_alldistfracmort.reducedcmortparam.higher_resageoutput.c180118.nc'
fsurdat = '${CLM_SURFDAT_DIR}/${CLM_USRDAT_SURDAT}'
hist_nhtfrq = 17520
hist_mfilt = 5
hist_fincl1 = 'DEMOTION_RATE_SCLS', 'PROMOTION_RATE_SCLS', 'YESTERDAYCANLEV_CANOPY_SCLS', 'YESTERDAYCANLEV_UNDERSTORY_SCLS','NPATCH_BY_AGE','BIOMASS_BY_AGE','CROWN_AREA_CANOPY_SCLS','CROWN_AREA_UNDERSTORY_SCLS'
hist_fexcl1= 'NPLANT_SCAG','ACTUAL_IMMOB','AR','ATM_TOPO','BCDEP','BTRAN','BTRAN2','BTRANMN','BUILDHEAT','COL_CTRUNC','COL_NTRUNC','DENIT','DSL','DSTDEP','DSTFLXT','EFFECT_WSPEED','EFLX_DYNBAL','EFLX_GRND_LAKE','EFLX_LH_TOT','EFLX_LH_TOT_R','EFLX_LH_TOT_U','ELAI','ERRH2O','ERRH2OSNO','ERRSEB','ERRSOI','ERRSOL','ESAI','FCEV','FCOV','FCTR','FFIX_TO_SMINN','FGEV','FGR','FGR12','FGR_R','FGR_U','FH2OSFC','FIRA','FIRA_R','FIRA_U','FIRE','FIRE_AREA','FIRE_R','FIRE_ROS','FIRE_TFC_ROS','FIRE_U','FLDS','FPSN','FPSN_WC','FPSN_WJ','FPSN_WP','FROST_TABLE','FSA','FSAT','FSA_R','FSA_U','FSDS','FSDSND','FSDSNDLN','FSDSNI','FSDSVD','FSDSVDLN','FSDSVI','FSDSVILN','FSH','FSH_G','FSH_PRECIP_CONVERSION','FSH_R','FSH_TO_COUPLER','FSH_U','FSH_V','FSM','FSM_R','FSM_U','FSNO','FSNO_EFF','FSR','FSRND','FSRNDLN','FSRNI','FSRVD','FSRVDLN','FSRVI','GROSS_NMIN','GROWTH_RESP','H2OCAN','H2OSFC','H2OSNO','H2OSNO_TOP','H2OSOI','HEAT_CONTENT1','HEAT_CONTENT1_VEG','HEAT_FROM_AC','HR','HR_vr','HTOP','ICE_CONTENT1','LAISHA','LAISUN','LAKEICEFRAC','LAKEICETHICK','LIQCAN','LIQUID_CONTENT1','LITHR','LITR1C','LITR1C_TO_SOIL1C','LITR1C_vr','LITR1N','LITR1N_TO_SOIL1N','LITR1_HR','LITR2C','LITR2C_TO_SOIL1C','LITR2C_vr','LITR2N','LITR2N_TO_SOIL1N','LITR2_HR','LITR3C','LITR3C_TO_SOIL2C','LITR3C_vr','LITR3N','LITR3N_TO_SOIL2N','LITR3_HR','LITTERC','LITTERC_HR','M_LITR1C_TO_LEACHING','M_LITR2C_TO_LEACHING','M_LITR3C_TO_LEACHING','M_SOIL1C_TO_LEACHING','M_SOIL2C_TO_LEACHING','M_SOIL3C_TO_LEACHING','NDEP_TO_SMINN','NET_NMIN','NFIX_TO_SMINN','NPP_column','OCDEP','O_SCALAR','PARVEGLN','PBOT','PCO2','POTENTIAL_IMMOB','Q2M','QBOT','QCHARGE','QDRAI','QDRAI_PERCH','QDRAI_XS','QDRIP','QFLOOD','QFLX_ICE_DYNBAL','QFLX_LIQ_DYNBAL','QFLX_SNOW_DRAIN','QH2OSFC','QINFL','QINTR','QIRRIG','QOVER','QRGWL','QRUNOFF','QRUNOFF_ICE_TO_COUPLER','QRUNOFF_R','QRUNOFF_TO_COUPLER','QRUNOFF_U','QSNOFRZ','QSNOMELT','QSNOTEMPUNLOAD','QSNOWINDUNLOAD','QSNWCPICE','QSNWCPLIQ','QSOIL','QVEGE','QVEGT','RAIN','RAIN_REPARTITIONED','RH2M','RH2M_R','RH2M_U','SABG','SABG_PEN','SABV','SMINN','SMINN_LEACHED','SMINN_TO_DENIT_L1S1','SMINN_TO_DENIT_L2S1','SMINN_TO_DENIT_L3S2','SMINN_TO_DENIT_S1S2','SMINN_TO_DENIT_S1S3','SMINN_TO_DENIT_S2S1','SMINN_TO_DENIT_S2S3','SMINN_TO_DENIT_S3S1','SMINN_TO_PLANT','SMINN_TO_SOIL1N_L1','SMINN_TO_SOIL1N_L2','SMINN_TO_SOIL1N_S2','SMINN_TO_SOIL1N_S3','SMINN_TO_SOIL2N_L3','SMINN_TO_SOIL2N_S1','SMINN_TO_SOIL3N_S1','SMINN_TO_SOIL3N_S2','SMINN_vr','SMP','SNOBCMCL','SNOBCMSL','SNOCAN','SNODSTMCL','SNODSTMSL','SNOINTABS','SNOOCMCL','SNOOCMSL','SNOUNLOAD','SNOW','SNOWDP','SNOWICE','SNOWLIQ','SNOW_DEPTH','SNOW_REPARTITIONED','SNOW_SINKS','SNOW_SOURCES','SOIL1C','SOIL1C_TO_SOIL2C','SOIL1C_TO_SOIL3C','SOIL1C_vr','SOIL1N','SOIL1N_TO_SOIL2N','SOIL1N_TO_SOIL3N','SOIL1_HR_S2','SOIL1_HR_S3','SOIL2C','SOIL2C_TO_SOIL1C','SOIL2C_TO_SOIL3C','SOIL2C_vr','SOIL2N','SOIL2N_TO_SOIL1N','SOIL2N_TO_SOIL3N','SOIL2_HR_S1','SOIL2_HR_S3','SOIL3C','SOIL3C_TO_SOIL1C','SOIL3C_vr','SOIL3N','SOIL3N_TO_SOIL1N','SOIL3_HR','SOILC','SOILC_HR','SOILC_LOSS','SOILICE','SOILLIQ','SOILRESIS','SOILWATER_10CM','SOMC_FIRE','SOMHR','SOM_C_LEACHED','SUM_FUEL','SUPPLEMENT_TO_SMINN','SoilAlpha','SoilAlpha_U','TAUX','TAUY','TBOT','TBUILD','TG','TG_R','TG_U','TH2OSFC','THBOT','TKE1','TLAI','TLAKE','TOTLITN','TOTLITN_1m','TOTSOMN','TOTSOMN_1m','TREFMNAV','TREFMNAV_R','TREFMNAV_U','TREFMXAV','TREFMXAV_R','TREFMXAV_U','TRIMMING','TSA','TSAI','TSA_R','TSA_U','TSOI','TSOI_10CM','TSOI_ICE','TV','TWS','T_SCALAR','U10','URBAN_AC','URBAN_HEAT','VOLR','VOLRMCH','WA','WASTEHEAT','WIND','W_SCALAR','ZBOT','ZWT','ZWT_PERCH'
EOF

    cat > user_nl_clm_0005 <<EOF
fates_paramfile = '/glade/u/home/charlie/cesm_input_data/lnd/clm2/paramdata/fates_params.standardparams_stochppa3_alldistfracmort.reducedcmortparam.higher_resageoutput.c180118.nc'
fsurdat = '${CLM_SURFDAT_DIR}/${CLM_USRDAT_SURDAT}'
hist_nhtfrq = 17520
hist_mfilt = 5
hist_fincl1 = 'DEMOTION_RATE_SCLS', 'PROMOTION_RATE_SCLS', 'YESTERDAYCANLEV_CANOPY_SCLS', 'YESTERDAYCANLEV_UNDERSTORY_SCLS','NPATCH_BY_AGE','BIOMASS_BY_AGE','CROWN_AREA_CANOPY_SCLS','CROWN_AREA_UNDERSTORY_SCLS'
hist_fexcl1= 'NPLANT_SCAG','ACTUAL_IMMOB','AR','ATM_TOPO','BCDEP','BTRAN','BTRAN2','BTRANMN','BUILDHEAT','COL_CTRUNC','COL_NTRUNC','DENIT','DSL','DSTDEP','DSTFLXT','EFFECT_WSPEED','EFLX_DYNBAL','EFLX_GRND_LAKE','EFLX_LH_TOT','EFLX_LH_TOT_R','EFLX_LH_TOT_U','ELAI','ERRH2O','ERRH2OSNO','ERRSEB','ERRSOI','ERRSOL','ESAI','FCEV','FCOV','FCTR','FFIX_TO_SMINN','FGEV','FGR','FGR12','FGR_R','FGR_U','FH2OSFC','FIRA','FIRA_R','FIRA_U','FIRE','FIRE_AREA','FIRE_R','FIRE_ROS','FIRE_TFC_ROS','FIRE_U','FLDS','FPSN','FPSN_WC','FPSN_WJ','FPSN_WP','FROST_TABLE','FSA','FSAT','FSA_R','FSA_U','FSDS','FSDSND','FSDSNDLN','FSDSNI','FSDSVD','FSDSVDLN','FSDSVI','FSDSVILN','FSH','FSH_G','FSH_PRECIP_CONVERSION','FSH_R','FSH_TO_COUPLER','FSH_U','FSH_V','FSM','FSM_R','FSM_U','FSNO','FSNO_EFF','FSR','FSRND','FSRNDLN','FSRNI','FSRVD','FSRVDLN','FSRVI','GROSS_NMIN','GROWTH_RESP','H2OCAN','H2OSFC','H2OSNO','H2OSNO_TOP','H2OSOI','HEAT_CONTENT1','HEAT_CONTENT1_VEG','HEAT_FROM_AC','HR','HR_vr','HTOP','ICE_CONTENT1','LAISHA','LAISUN','LAKEICEFRAC','LAKEICETHICK','LIQCAN','LIQUID_CONTENT1','LITHR','LITR1C','LITR1C_TO_SOIL1C','LITR1C_vr','LITR1N','LITR1N_TO_SOIL1N','LITR1_HR','LITR2C','LITR2C_TO_SOIL1C','LITR2C_vr','LITR2N','LITR2N_TO_SOIL1N','LITR2_HR','LITR3C','LITR3C_TO_SOIL2C','LITR3C_vr','LITR3N','LITR3N_TO_SOIL2N','LITR3_HR','LITTERC','LITTERC_HR','M_LITR1C_TO_LEACHING','M_LITR2C_TO_LEACHING','M_LITR3C_TO_LEACHING','M_SOIL1C_TO_LEACHING','M_SOIL2C_TO_LEACHING','M_SOIL3C_TO_LEACHING','NDEP_TO_SMINN','NET_NMIN','NFIX_TO_SMINN','NPP_column','OCDEP','O_SCALAR','PARVEGLN','PBOT','PCO2','POTENTIAL_IMMOB','Q2M','QBOT','QCHARGE','QDRAI','QDRAI_PERCH','QDRAI_XS','QDRIP','QFLOOD','QFLX_ICE_DYNBAL','QFLX_LIQ_DYNBAL','QFLX_SNOW_DRAIN','QH2OSFC','QINFL','QINTR','QIRRIG','QOVER','QRGWL','QRUNOFF','QRUNOFF_ICE_TO_COUPLER','QRUNOFF_R','QRUNOFF_TO_COUPLER','QRUNOFF_U','QSNOFRZ','QSNOMELT','QSNOTEMPUNLOAD','QSNOWINDUNLOAD','QSNWCPICE','QSNWCPLIQ','QSOIL','QVEGE','QVEGT','RAIN','RAIN_REPARTITIONED','RH2M','RH2M_R','RH2M_U','SABG','SABG_PEN','SABV','SMINN','SMINN_LEACHED','SMINN_TO_DENIT_L1S1','SMINN_TO_DENIT_L2S1','SMINN_TO_DENIT_L3S2','SMINN_TO_DENIT_S1S2','SMINN_TO_DENIT_S1S3','SMINN_TO_DENIT_S2S1','SMINN_TO_DENIT_S2S3','SMINN_TO_DENIT_S3S1','SMINN_TO_PLANT','SMINN_TO_SOIL1N_L1','SMINN_TO_SOIL1N_L2','SMINN_TO_SOIL1N_S2','SMINN_TO_SOIL1N_S3','SMINN_TO_SOIL2N_L3','SMINN_TO_SOIL2N_S1','SMINN_TO_SOIL3N_S1','SMINN_TO_SOIL3N_S2','SMINN_vr','SMP','SNOBCMCL','SNOBCMSL','SNOCAN','SNODSTMCL','SNODSTMSL','SNOINTABS','SNOOCMCL','SNOOCMSL','SNOUNLOAD','SNOW','SNOWDP','SNOWICE','SNOWLIQ','SNOW_DEPTH','SNOW_REPARTITIONED','SNOW_SINKS','SNOW_SOURCES','SOIL1C','SOIL1C_TO_SOIL2C','SOIL1C_TO_SOIL3C','SOIL1C_vr','SOIL1N','SOIL1N_TO_SOIL2N','SOIL1N_TO_SOIL3N','SOIL1_HR_S2','SOIL1_HR_S3','SOIL2C','SOIL2C_TO_SOIL1C','SOIL2C_TO_SOIL3C','SOIL2C_vr','SOIL2N','SOIL2N_TO_SOIL1N','SOIL2N_TO_SOIL3N','SOIL2_HR_S1','SOIL2_HR_S3','SOIL3C','SOIL3C_TO_SOIL1C','SOIL3C_vr','SOIL3N','SOIL3N_TO_SOIL1N','SOIL3_HR','SOILC','SOILC_HR','SOILC_LOSS','SOILICE','SOILLIQ','SOILRESIS','SOILWATER_10CM','SOMC_FIRE','SOMHR','SOM_C_LEACHED','SUM_FUEL','SUPPLEMENT_TO_SMINN','SoilAlpha','SoilAlpha_U','TAUX','TAUY','TBOT','TBUILD','TG','TG_R','TG_U','TH2OSFC','THBOT','TKE1','TLAI','TLAKE','TOTLITN','TOTLITN_1m','TOTSOMN','TOTSOMN_1m','TREFMNAV','TREFMNAV_R','TREFMNAV_U','TREFMXAV','TREFMXAV_R','TREFMXAV_U','TRIMMING','TSA','TSAI','TSA_R','TSA_U','TSOI','TSOI_10CM','TSOI_ICE','TV','TWS','T_SCALAR','U10','URBAN_AC','URBAN_HEAT','VOLR','VOLRMCH','WA','WASTEHEAT','WIND','W_SCALAR','ZBOT','ZWT','ZWT_PERCH'
EOF

    cat > user_nl_clm_0006 <<EOF
fates_paramfile = '/glade/u/home/charlie/cesm_input_data/lnd/clm2/paramdata/fates_params.standardparams_stochppa1_alldistfracmort.reducedcmortparam.higher_resageoutput.c180118.nc'
fsurdat = '${CLM_SURFDAT_DIR}/${CLM_USRDAT_SURDAT}'
hist_nhtfrq = 17520
hist_mfilt = 5
hist_fincl1 = 'DEMOTION_RATE_SCLS', 'PROMOTION_RATE_SCLS', 'YESTERDAYCANLEV_CANOPY_SCLS', 'YESTERDAYCANLEV_UNDERSTORY_SCLS','NPATCH_BY_AGE','BIOMASS_BY_AGE','CROWN_AREA_CANOPY_SCLS','CROWN_AREA_UNDERSTORY_SCLS'
hist_fexcl1= 'NPLANT_SCAG','ACTUAL_IMMOB','AR','ATM_TOPO','BCDEP','BTRAN','BTRAN2','BTRANMN','BUILDHEAT','COL_CTRUNC','COL_NTRUNC','DENIT','DSL','DSTDEP','DSTFLXT','EFFECT_WSPEED','EFLX_DYNBAL','EFLX_GRND_LAKE','EFLX_LH_TOT','EFLX_LH_TOT_R','EFLX_LH_TOT_U','ELAI','ERRH2O','ERRH2OSNO','ERRSEB','ERRSOI','ERRSOL','ESAI','FCEV','FCOV','FCTR','FFIX_TO_SMINN','FGEV','FGR','FGR12','FGR_R','FGR_U','FH2OSFC','FIRA','FIRA_R','FIRA_U','FIRE','FIRE_AREA','FIRE_R','FIRE_ROS','FIRE_TFC_ROS','FIRE_U','FLDS','FPSN','FPSN_WC','FPSN_WJ','FPSN_WP','FROST_TABLE','FSA','FSAT','FSA_R','FSA_U','FSDS','FSDSND','FSDSNDLN','FSDSNI','FSDSVD','FSDSVDLN','FSDSVI','FSDSVILN','FSH','FSH_G','FSH_PRECIP_CONVERSION','FSH_R','FSH_TO_COUPLER','FSH_U','FSH_V','FSM','FSM_R','FSM_U','FSNO','FSNO_EFF','FSR','FSRND','FSRNDLN','FSRNI','FSRVD','FSRVDLN','FSRVI','GROSS_NMIN','GROWTH_RESP','H2OCAN','H2OSFC','H2OSNO','H2OSNO_TOP','H2OSOI','HEAT_CONTENT1','HEAT_CONTENT1_VEG','HEAT_FROM_AC','HR','HR_vr','HTOP','ICE_CONTENT1','LAISHA','LAISUN','LAKEICEFRAC','LAKEICETHICK','LIQCAN','LIQUID_CONTENT1','LITHR','LITR1C','LITR1C_TO_SOIL1C','LITR1C_vr','LITR1N','LITR1N_TO_SOIL1N','LITR1_HR','LITR2C','LITR2C_TO_SOIL1C','LITR2C_vr','LITR2N','LITR2N_TO_SOIL1N','LITR2_HR','LITR3C','LITR3C_TO_SOIL2C','LITR3C_vr','LITR3N','LITR3N_TO_SOIL2N','LITR3_HR','LITTERC','LITTERC_HR','M_LITR1C_TO_LEACHING','M_LITR2C_TO_LEACHING','M_LITR3C_TO_LEACHING','M_SOIL1C_TO_LEACHING','M_SOIL2C_TO_LEACHING','M_SOIL3C_TO_LEACHING','NDEP_TO_SMINN','NET_NMIN','NFIX_TO_SMINN','NPP_column','OCDEP','O_SCALAR','PARVEGLN','PBOT','PCO2','POTENTIAL_IMMOB','Q2M','QBOT','QCHARGE','QDRAI','QDRAI_PERCH','QDRAI_XS','QDRIP','QFLOOD','QFLX_ICE_DYNBAL','QFLX_LIQ_DYNBAL','QFLX_SNOW_DRAIN','QH2OSFC','QINFL','QINTR','QIRRIG','QOVER','QRGWL','QRUNOFF','QRUNOFF_ICE_TO_COUPLER','QRUNOFF_R','QRUNOFF_TO_COUPLER','QRUNOFF_U','QSNOFRZ','QSNOMELT','QSNOTEMPUNLOAD','QSNOWINDUNLOAD','QSNWCPICE','QSNWCPLIQ','QSOIL','QVEGE','QVEGT','RAIN','RAIN_REPARTITIONED','RH2M','RH2M_R','RH2M_U','SABG','SABG_PEN','SABV','SMINN','SMINN_LEACHED','SMINN_TO_DENIT_L1S1','SMINN_TO_DENIT_L2S1','SMINN_TO_DENIT_L3S2','SMINN_TO_DENIT_S1S2','SMINN_TO_DENIT_S1S3','SMINN_TO_DENIT_S2S1','SMINN_TO_DENIT_S2S3','SMINN_TO_DENIT_S3S1','SMINN_TO_PLANT','SMINN_TO_SOIL1N_L1','SMINN_TO_SOIL1N_L2','SMINN_TO_SOIL1N_S2','SMINN_TO_SOIL1N_S3','SMINN_TO_SOIL2N_L3','SMINN_TO_SOIL2N_S1','SMINN_TO_SOIL3N_S1','SMINN_TO_SOIL3N_S2','SMINN_vr','SMP','SNOBCMCL','SNOBCMSL','SNOCAN','SNODSTMCL','SNODSTMSL','SNOINTABS','SNOOCMCL','SNOOCMSL','SNOUNLOAD','SNOW','SNOWDP','SNOWICE','SNOWLIQ','SNOW_DEPTH','SNOW_REPARTITIONED','SNOW_SINKS','SNOW_SOURCES','SOIL1C','SOIL1C_TO_SOIL2C','SOIL1C_TO_SOIL3C','SOIL1C_vr','SOIL1N','SOIL1N_TO_SOIL2N','SOIL1N_TO_SOIL3N','SOIL1_HR_S2','SOIL1_HR_S3','SOIL2C','SOIL2C_TO_SOIL1C','SOIL2C_TO_SOIL3C','SOIL2C_vr','SOIL2N','SOIL2N_TO_SOIL1N','SOIL2N_TO_SOIL3N','SOIL2_HR_S1','SOIL2_HR_S3','SOIL3C','SOIL3C_TO_SOIL1C','SOIL3C_vr','SOIL3N','SOIL3N_TO_SOIL1N','SOIL3_HR','SOILC','SOILC_HR','SOILC_LOSS','SOILICE','SOILLIQ','SOILRESIS','SOILWATER_10CM','SOMC_FIRE','SOMHR','SOM_C_LEACHED','SUM_FUEL','SUPPLEMENT_TO_SMINN','SoilAlpha','SoilAlpha_U','TAUX','TAUY','TBOT','TBUILD','TG','TG_R','TG_U','TH2OSFC','THBOT','TKE1','TLAI','TLAKE','TOTLITN','TOTLITN_1m','TOTSOMN','TOTSOMN_1m','TREFMNAV','TREFMNAV_R','TREFMNAV_U','TREFMXAV','TREFMXAV_R','TREFMXAV_U','TRIMMING','TSA','TSAI','TSA_R','TSA_U','TSOI','TSOI_10CM','TSOI_ICE','TV','TWS','T_SCALAR','U10','URBAN_AC','URBAN_HEAT','VOLR','VOLRMCH','WA','WASTEHEAT','WIND','W_SCALAR','ZBOT','ZWT','ZWT_PERCH'
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


#if [ "${SETUP_CASE}" == "fates_prescribedphys_baseline2_maxpatch30" ]; then
#if [ "${SETUP_CASE}" == "fates_prescribedphys_baseline_frombareground" ]; then
#if [ "${SETUP_CASE}" == "fates_prescribedphys_bciallom" ]; then
#if [ "${SETUP_CASE}" == "fates_prescribedphys_oldallom_round2" ]; then
#if [ "${SETUP_CASE}" == "fates_prescribedphys_oldallom_cmpexcln3_round2" ]; then
#if [ "${SETUP_CASE}" == "fates_prescribedphys_oldallom_cmpexcln1" ]; then
#if [ "${SETUP_CASE}" == "fates_prescribedphys_cmptexp_e00_baseline" ]; then
#if [ "${SETUP_CASE}" == "fates_prescribedphys_cmptexp_e01_reducedseedalloc_newvars" ]; then
#if [ "${SETUP_CASE}" == "fates_prescribedphys_cmptexp_e01_2pfts_baseline2" ]; then
#if [ "${SETUP_CASE}" == "fates_prescribedphys_cmptexp_e01_2pfts_baseline3_stochppa3" ]; then
if [ "${SETUP_CASE}" == "fates_prescribedphys_cmptexp_e01_2pfts_baseline3_stochppa3_initperturb3" ]; then

    CASE_NAME=${SETUP_CASE}_${GITHASH1}_${GITHASH2}
    basedir=$HOME/clmed/fates-clm/cime/scripts
    #### load_machine_files
    cd $basedir
    ./create_newcase -case ${CASE_NAME} -res 1x1_brazil -compset ICLM45ED -mach cheyenne -project P93300041
    cd ${CASE_NAME}

    ./xmlchange -file env_run.xml -id STOP_OPTION -val nyears
    ./xmlchange -file env_run.xml -id STOP_N -val 200
    ./xmlchange -file env_run.xml -id REST_N -val 10
    ./xmlchange -file env_run.xml -id CONTINUE_RUN -val FALSE
    ./xmlchange -file env_run.xml -id RESUBMIT -val 0
    ./xmlchange -file env_build.xml -id DEBUG -val FALSE
    
    ./xmlchange -file env_run.xml -id DIN_LOC_ROOT -val /glade/u/home/charlie/cesm_input_data
    
    ./xmlchange -file env_build.xml -id EXEROOT -val /glade2/scratch2/charlie/$CASE_NAME/bld
    ./xmlchange -file env_run.xml -id RUNDIR -val /glade2/scratch2/charlie/$CASE_NAME/run
    ./xmlchange -file env_run.xml -id DOUT_S_ROOT -val /glade2/scratch2/charlie/archive/$CASE_NAME

    ./xmlchange -file env_batch.xml -id JOB_WALLCLOCK_TIME -val 11:59:00
    ./xmlchange -file env_run.xml -id STOP_OPTION -val nyears

    ./case.setup

    # fates_paramfile = '/glade/u/home/charlie/cesm_input_data/lnd/clm2/paramdata/fates_params_prescribedphys.noimort.c171018.nc'
    # fates_paramfile = '/glade/u/home/charlie/cesm_input_data/lnd/clm2/paramdata/fates_params_prescribedphys.disttest.c171017'
    # fates_paramfile = '/glade/u/home/charlie/cesm_input_data/lnd/clm2/paramdata/fates_params_prescribedphys.c171013.nc'
    # fates_paramfile = '/glade/u/home/charlie/cesm_input_data/lnd/clm2/paramdata/fates_params_prescribedphys.20pctincreasednpp.c171024.nc'
    # finidat = '/glade/u/home/charlie/scratch/archive/fates_prescribedphys_distexp_control_fc64d1e_6660c71/rest/0241-01-01-00000/fates_prescribedphys_distexp_control_fc64d1e_6660c71.clm2.r.0241-01-01-00000.nc'
    # finidat = '/glade2/scratch2/charlie/archive/fates_prescribedphys_controlfromrestart_b753898_3c24978/rest/0211-01-01-00000/fates_prescribedphys_controlfromrestart_b753898_3c24978.clm2.r.0211-01-01-00000.nc'
    # fates_paramfile = '/glade/u/home/charlie/cesm_input_data/lnd/clm2/paramdata/fates_params_prescribedphys.baseline.c171027.nc'
    # fates_paramfile = '/glade/u/home/charlie/cesm_input_data/lnd/clm2/paramdata/fates_params.standardparams_strictppa_allmort_bciallom.reducedcmortparam.c171205.nc'
    # fates_paramfile = '/glade/u/home/charlie/cesm_input_data/lnd/clm2/paramdata/fates_params.standardparams_strictppa_allmort.reducedcmortparam.c171201.nc'
    # fates_paramfile = '/glade/u/home/charlie/cesm_input_data/lnd/clm2/paramdata/fates_params.standardparams_cmpex3_allmort.reducedcmortparam.c171201.nc'
    # fates_paramfile = '/glade/u/home/charlie/cesm_input_data/lnd/clm2/paramdata/fates_params.prescribedphys_cmpex1_allmort.c171208.nc'
    # fates_paramfile = '/glade/u/home/charlie/cesm_input_data/lnd/clm2/paramdata/fates_params.prescribedphys_cmpex3_allmort.c171208.nc'
    # fates_paramfile = '/glade/u/home/charlie/cesm_input_data/lnd/clm2/paramdata/fates_params.prescribedphys_strictppa_allmort.c171208.nc'
    # fates_paramfile = '/glade/u/home/charlie/cesm_input_data/lnd/clm2/paramdata/fates_params.prescribedphys_strictppa_allmort.1pft.coexbaseline.c171201.nc'
    # fates_paramfile = '/glade/u/home/charlie/cesm_input_data/lnd/clm2/paramdata/fates_params.prescribedphys_strictppa_allmort.2pft.baseline.c171219.nc'
    # fates_paramfile = '/glade/u/home/charlie/cesm_input_data/lnd/clm2/paramdata/fates_params.prescribedphys_stochppa3_allmort.2pft.baseline.c171219.nc'
    cat > user_nl_clm <<EOF
use_fates_ed_prescribed_phys = .true.
fates_paramfile = '/glade/u/home/charlie/cesm_input_data/lnd/clm2/paramdata/fates_params.prescribedphys_stochppa3_allmort.2pft.perturbedinitd3.c171219.nc'
hist_fincl1 = 'BA_SCLS', 'DEMOTION_RATE_SCLS', 'PROMOTION_RATE_SCLS', 'NPLANT_CANOPY_SCLS', 'MORTALITY_CANOPY_SCLS','NPLANT_UNDERSTORY_SCLS', 'MORTALITY_UNDERSTORY_SCLS', 'DDBH_SCPF', 'DDBH_CANOPY_SCPF', 'DDBH_UNDERSTORY_SCPF','NPLANT_SCAG', 'YESTERDAYCANLEV_CANOPY_SCLS', 'YESTERDAYCANLEV_UNDERSTORY_SCLS','PATCH_AREA_BY_AGE','CANOPY_AREA_BY_AGE','NPATCH_BY_AGE','BIOMASS_BY_AGE','NPP_SCPF','CROWN_AREA_CANOPY_SCLS','CROWN_AREA_UNDERSTORY_SCLS','NPLANT_SCAGPFT','NPP_AGEPFT','BIOMASS_AGEPFT'
EOF

  ./case.build
  ./case.submit

fi

# if [ "${SETUP_CASE}" == "fates_prescribedphys_crownallomexp01" ]; then
#if [ "${SETUP_CASE}" == "fates_prescribedphys_crownallomexp02" ]; then
# finidat = '/glade2/scratch2/charlie/archive/fates_prescribedphys_controlfromrestart_b753898_3c24978/rest/0211-01-01-00000/fates_prescribedphys_controlfromrestart_b753898_3c24978.clm2.r.0211-01-01-00000.nc'

if [ "${SETUP_CASE}" == "fates_prescribedphys_crownallomexp02b" ]; then

    #canmort_array=(1.0 1.1 1.2 1.3 1.4 1.5 1.6 1.7 1.8 1.9 2.0)
    canmort_array=(1.8 1.9 2.0)

    for i in ${canmort_array[@]}; do
	CASE_NAME=${SETUP_CASE}_${GITHASH1}_${GITHASH2}_crownallom${i//./_}
	basedir=$HOME/clmed/fates-clm/cime/scripts
	#### load_machine_files
	cd $basedir
	./create_newcase -case ${CASE_NAME} -res 1x1_brazil -compset ICLM45ED -mach cheyenne -project P93300041
	cd ${CASE_NAME}

	./xmlchange -file env_run.xml -id STOP_OPTION -val nyears
	./xmlchange -file env_run.xml -id STOP_N -val 150
	./xmlchange -file env_run.xml -id REST_N -val 10
	./xmlchange -file env_run.xml -id CONTINUE_RUN -val FALSE
	./xmlchange -file env_run.xml -id RESUBMIT -val 1
	./xmlchange -file env_build.xml -id DEBUG -val FALSE
	
	./xmlchange -file env_run.xml -id DIN_LOC_ROOT -val /glade/u/home/charlie/cesm_input_data
	
	./xmlchange -file env_build.xml -id EXEROOT -val /glade2/scratch2/charlie/$CASE_NAME/bld
	./xmlchange -file env_run.xml -id RUNDIR -val /glade2/scratch2/charlie/$CASE_NAME/run
	./xmlchange -file env_run.xml -id DOUT_S_ROOT -val /glade2/scratch2/charlie/archive/$CASE_NAME

	./xmlchange -file env_batch.xml -id JOB_WALLCLOCK_TIME -val 11:59:00
	./xmlchange -file env_batch.xml -id JOB_QUEUE -val economy
	./xmlchange -file env_run.xml -id STOP_OPTION -val nyears

	./case.setup


	cat > user_nl_clm <<EOF
use_fates_ed_prescribed_phys = .true.
fates_paramfile = '/glade/u/home/charlie/cesm_input_data/lnd/clm2/paramdata/fates_params.perturbedcrownallomexp03.25pctnppincr.crownallomexp_${i}_.171122.nc'
hist_fincl1 = 'BA_SCLS', 'DEMOTION_RATE_SCLS', 'PROMOTION_RATE_SCLS', 'NPLANT_CANOPY_SCLS', 'MORTALITY_CANOPY_SCLS','NPLANT_UNDERSTORY_SCLS', 'MORTALITY_UNDERSTORY_SCLS', 'DDBH_SCPF', 'DDBH_CANOPY_SCPF', 'DDBH_UNDERSTORY_SCPF','NPLANT_SCAG', 'YESTERDAYCANLEV_CANOPY_SCLS', 'YESTERDAYCANLEV_UNDERSTORY_SCLS','PATCH_AREA_BY_AGE','CANOPY_AREA_BY_AGE','NPATCH_BY_AGE','BIOMASS_BY_AGE','NPP_SCPF','CROWN_AREA_CANOPY_SCLS','CROWN_AREA_UNDERSTORY_SCLS','DEMOTION_CARBONFLUX','MORTALITY_CARBONFLUX_CANOPY','MORTALITY_CARBONFLUX_UNDERSTORY','PROMOTION_CARBONFLUX'
finidat = '/glade2/scratch2/charlie/archive/fates_prescribedphys_crownallomexp02_b753898_2c6e73c_crownallom${i//./_}/rest/0301-01-01-00000/fates_prescribedphys_crownallomexp02_b753898_2c6e73c_crownallom${i//./_}.clm2.r.0301-01-01-00000.nc'
EOF

	./case.build
	./case.submit

    done
fi
if [ "${SETUP_CASE}" == "fates_prescribedphys_mortexp02" ]; then

    canmort_array=(.01 .02 .03 .04 .05)
    undmort_array=(.00 .01 .02 .03 .04 .05)

    for i in ${canmort_array[@]}; do
	for j in ${undmort_array[@]}; do 
	        CASE_NAME=${SETUP_CASE}_${GITHASH1}_${GITHASH2}_cm${i//./_}_um${j//./_}
		basedir=$HOME/clmed/fates-clm/cime/scripts
		#### load_machine_files
		cd $basedir
		./create_newcase -case ${CASE_NAME} -res 1x1_brazil -compset ICLM45ED -mach cheyenne -project P93300041
		cd ${CASE_NAME}

		./xmlchange -file env_run.xml -id STOP_OPTION -val nyears
		./xmlchange -file env_run.xml -id STOP_N -val 150
		./xmlchange -file env_run.xml -id REST_N -val 10
		./xmlchange -file env_run.xml -id CONTINUE_RUN -val FALSE
		./xmlchange -file env_run.xml -id RESUBMIT -val 1
		./xmlchange -file env_build.xml -id DEBUG -val FALSE
		
		./xmlchange -file env_run.xml -id DIN_LOC_ROOT -val /glade/u/home/charlie/cesm_input_data
		
		./xmlchange -file env_build.xml -id EXEROOT -val /glade2/scratch2/charlie/$CASE_NAME/bld
		./xmlchange -file env_run.xml -id RUNDIR -val /glade2/scratch2/charlie/$CASE_NAME/run
		./xmlchange -file env_run.xml -id DOUT_S_ROOT -val /glade2/scratch2/charlie/archive/$CASE_NAME

		./xmlchange -file env_batch.xml -id JOB_WALLCLOCK_TIME -val 11:59:00
		./xmlchange -file env_batch.xml -id JOB_QUEUE -val economy
		./xmlchange -file env_run.xml -id STOP_OPTION -val nyears

		./case.setup


		cat > user_nl_clm <<EOF
use_fates_ed_prescribed_phys = .true.
fates_paramfile = '/glade/u/home/charlie/cesm_input_data/lnd/clm2/paramdata/fates_params.perturbedmortexp02.cmort_${i}_umortinc_${j}_.171027.nc'
hist_fincl1 = 'BA_SCLS', 'DEMOTION_RATE_SCLS', 'PROMOTION_RATE_SCLS', 'NPLANT_CANOPY_SCLS', 'MORTALITY_CANOPY_SCLS','NPLANT_UNDERSTORY_SCLS', 'MORTALITY_UNDERSTORY_SCLS', 'DDBH_SCPF', 'DDBH_CANOPY_SCPF', 'DDBH_UNDERSTORY_SCPF','NPLANT_SCAG', 'YESTERDAYCANLEV_CANOPY_SCLS', 'YESTERDAYCANLEV_UNDERSTORY_SCLS','PATCH_AREA_BY_AGE','CANOPY_AREA_BY_AGE','NPATCH_BY_AGE','BIOMASS_BY_AGE','NPP_SCPF','CROWN_AREA_CANOPY_SCLS','CROWN_AREA_UNDERSTORY_SCLS'
finidat = '/glade2/scratch2/charlie/archive/fates_prescribedphys_controlfromrestart_b753898_3c24978/rest/0211-01-01-00000/fates_prescribedphys_controlfromrestart_b753898_3c24978.clm2.r.0211-01-01-00000.nc'
EOF

		./case.build
		./case.submit
	done
    done
fi
if [ "${SETUP_CASE}" == "fates_prescribedphys_mortexp02_transnppincr" ]; then

    #canmort_array=(.02 .03 .04 .05)
    #canmort_array=(.01)
    canmort_array=(.05)
    #undmort_array=(.00 .01 .02 .03 .04 .05)
    undmort_array=(.02 .03 .04 .05)

    for i in ${canmort_array[@]}; do
	for j in ${undmort_array[@]}; do 
	        CASE_NAME=${SETUP_CASE}_${GITHASH1}_${GITHASH2}_cm${i//./_}_um${j//./_}
		basedir=$HOME/clmed/fates-clm/cime/scripts
		#### load_machine_files
		cd $basedir
		./create_newcase -case ${CASE_NAME} -res 1x1_brazil -compset ICLM45ED -mach cheyenne -project P93300041
		cd ${CASE_NAME}

		./xmlchange -file env_run.xml -id STOP_OPTION -val nyears
		./xmlchange -file env_run.xml -id STOP_N -val 150
		./xmlchange -file env_run.xml -id REST_N -val 10
		./xmlchange -file env_run.xml -id CONTINUE_RUN -val FALSE
		./xmlchange -file env_run.xml -id RESUBMIT -val 0
		./xmlchange -file env_build.xml -id DEBUG -val FALSE
		
		./xmlchange -file env_run.xml -id DIN_LOC_ROOT -val /glade/u/home/charlie/cesm_input_data
		
		./xmlchange -file env_build.xml -id EXEROOT -val /glade2/scratch2/charlie/$CASE_NAME/bld
		./xmlchange -file env_run.xml -id RUNDIR -val /glade2/scratch2/charlie/$CASE_NAME/run
		./xmlchange -file env_run.xml -id DOUT_S_ROOT -val /glade2/scratch2/charlie/archive/$CASE_NAME

		./xmlchange -file env_batch.xml -id JOB_WALLCLOCK_TIME -val 11:59:00
		./xmlchange -file env_batch.xml -id JOB_QUEUE -val economy
		./xmlchange -file env_run.xml -id STOP_OPTION -val nyears

		./case.setup

		echo 'done setup'


		cat > user_nl_clm <<EOF
use_fates_ed_prescribed_phys = .true.
hist_fincl1 = 'BA_SCLS', 'DEMOTION_RATE_SCLS', 'PROMOTION_RATE_SCLS', 'NPLANT_CANOPY_SCLS', 'MORTALITY_CANOPY_SCLS','NPLANT_UNDERSTORY_SCLS', 'MORTALITY_UNDERSTORY_SCLS', 'DDBH_SCPF', 'DDBH_CANOPY_SCPF', 'DDBH_UNDERSTORY_SCPF','NPLANT_SCAG', 'YESTERDAYCANLEV_CANOPY_SCLS', 'YESTERDAYCANLEV_UNDERSTORY_SCLS','PATCH_AREA_BY_AGE','CANOPY_AREA_BY_AGE','NPATCH_BY_AGE','BIOMASS_BY_AGE','NPP_SCPF','CROWN_AREA_CANOPY_SCLS','CROWN_AREA_UNDERSTORY_SCLS'
fates_paramfile = '/glade/u/home/charlie/cesm_input_data/lnd/clm2/paramdata/fates_params.perturbedmortexp02.25pctnppincr.cmort_${i}_umortinc_${j}_.171029.nc'
finidat = '/glade2/scratch2/charlie/archive/fates_prescribedphys_mortexp02_b753898_a00482e_cm${i//./_}_um${j//./_}/rest/0451-01-01-00000/fates_prescribedphys_mortexp02_b753898_a00482e_cm${i//./_}_um${j//./_}.clm2.r.0451-01-01-00000.nc'
EOF

		# finidat = '/glade2/scratch2/charlie/archive/fates_prescribedphys_mortexp02_b753898_a00482e_cm${i//./_}_um${j//./_}/rest/0301-01-01-00000/fates_prescribedphys_mortexp02_b753898_a00482e_cm${i//./_}_um${j//./_}.clm2.r.0301-01-01-00000.nc'
		./case.build
		./case.submit
	done
    done
fi

#if [ "${SETUP_CASE}" == "fates_prescribedphys_agedistexp_control" ]; then
#if [ "${SETUP_CASE}" == "fates_prescribedphys_agedistexp_exp4" ]; then
#if [ "${SETUP_CASE}" == "fates_prescribedphys_agedistexp_exp6a_sitelevelspread_biomassperpatchageva" ]; then
if [ "${SETUP_CASE}" == "fates_prescribedphys_agedistexp_c1_biomassperpatchagevar" ]; then

    CASE_NAME=${SETUP_CASE}_${GITHASH1}_${GITHASH2}
    basedir=$HOME/clmed/fates-clm/cime/scripts
    #### load_machine_files
    cd $basedir
    ./create_newcase -case ${CASE_NAME} -res 1x1_brazil -compset ICLM45ED -mach cheyenne -project P93300041
    cd ${CASE_NAME}

    ./xmlchange -file env_run.xml -id STOP_OPTION -val nyears
    ./xmlchange -file env_run.xml -id STOP_N -val 150
    ./xmlchange -file env_run.xml -id REST_N -val 10
    ./xmlchange -file env_run.xml -id CONTINUE_RUN -val FALSE
    ./xmlchange -file env_run.xml -id RESUBMIT -val 0
    ./xmlchange -file env_build.xml -id DEBUG -val FALSE
    
    ./xmlchange -file env_run.xml -id DIN_LOC_ROOT -val /glade/u/home/charlie/cesm_input_data
    
    ./xmlchange -file env_build.xml -id EXEROOT -val /glade2/scratch2/charlie/$CASE_NAME/bld
    ./xmlchange -file env_run.xml -id RUNDIR -val /glade2/scratch2/charlie/$CASE_NAME/run
    ./xmlchange -file env_run.xml -id DOUT_S_ROOT -val /glade2/scratch2/charlie/archive/$CASE_NAME

    ./xmlchange -file env_batch.xml -id JOB_WALLCLOCK_TIME -val 11:59:00
    ./xmlchange -file env_run.xml -id STOP_OPTION -val nyears

    ./case.setup

    # fates_paramfile = '/glade/u/home/charlie/cesm_input_data/lnd/clm2/paramdata/fates_params_2troppftclones.prescribedphys.c170911.nc'
    # fates_paramfile = '/glade/u/home/charlie/cesm_input_data/lnd/clm2/paramdata/fates_params_2troppftclones.prescribedphys.c170911.revisedmort.nc'
    # fates_paramfile = '/glade/u/home/charlie/cesm_input_data/lnd/clm2/paramdata/fates_params_2troppftclones.prescribedphys.allmort.c170911.nc'
    # fates_paramfile = '/glade/u/home/charlie/cesm_input_data/lnd/clm2/paramdata/fates_params_2troppftclones.prescribedphys.c170911.revisedmort.stochppa.nc'
    # fates_paramfile = '/glade/u/home/charlie/cesm_input_data/lnd/clm2/paramdata/fates_params_2troppftclones.ppm.c170927.nc'
     cat > user_nl_clm <<EOF
use_fates_ed_prescribed_phys = .true.
fates_paramfile = '/glade/u/home/charlie/cesm_input_data/lnd/clm2/paramdata/fates_params_2troppftclones.ppm.c170927.nc'
hist_fincl1 = 'BA_SCLS', 'DEMOTION_RATE_SCLS', 'PROMOTION_RATE_SCLS', 'NPLANT_CANOPY_SCLS', 'MORTALITY_CANOPY_SCLS','NPLANT_UNDERSTORY_SCLS', 'MORTALITY_UNDERSTORY_SCLS', 'DDBH_SCPF', 'DDBH_CANOPY_SCPF', 'DDBH_UNDERSTORY_SCPF','NPLANT_SCAG', 'YESTERDAYCANLEV_CANOPY_SCLS', 'YESTERDAYCANLEV_UNDERSTORY_SCLS','PATCH_AREA_BY_AGE','CANOPY_AREA_BY_AGE','NPATCH_BY_AGE','BIOMASS_BY_AGE'
EOF

  ./case.build
  ./case.submit

fi


# if [ "${SETUP_CASE}" == "fates_fullmodel_sitelevelspread_v2" ]; then
# if [ "${SETUP_CASE}" == "fates_fullmodel_control" ]; then
# if [ "${SETUP_CASE}" == "fates_fullmodel_cbalancecheck" ]; then
if [ "${SETUP_CASE}" == "fates_fullmodel_gswp3" ]; then

    CASE_NAME=${SETUP_CASE}_${GITHASH1}_${GITHASH2}
    basedir=$HOME/clmed/fates-clm/cime/scripts
    #### load_machine_files
    cd $basedir
    ./create_newcase -case ${CASE_NAME} -res 1x1_brazil -compset ICLM45ED -mach cheyenne -project P93300041
    cd ${CASE_NAME}

    ./xmlchange DATM_MODE=CLMGSWP3v1

    ./xmlchange -file env_run.xml -id STOP_OPTION -val nyears
    ./xmlchange -file env_run.xml -id STOP_N -val 150
    ./xmlchange -file env_run.xml -id REST_N -val 10
    ./xmlchange -file env_run.xml -id CONTINUE_RUN -val FALSE
    ./xmlchange -file env_run.xml -id RESUBMIT -val 0
    ./xmlchange -file env_build.xml -id DEBUG -val FALSE
    
    ./xmlchange -file env_run.xml -id DIN_LOC_ROOT -val /glade/u/home/charlie/cesm_input_data
    
    ./xmlchange -file env_build.xml -id EXEROOT -val /glade2/scratch2/charlie/$CASE_NAME/bld
    ./xmlchange -file env_run.xml -id RUNDIR -val /glade2/scratch2/charlie/$CASE_NAME/run
    ./xmlchange -file env_run.xml -id DOUT_S_ROOT -val /glade2/scratch2/charlie/archive/$CASE_NAME

    ./xmlchange -file env_batch.xml -id JOB_WALLCLOCK_TIME -val 11:59:00
    ./xmlchange -file env_run.xml -id STOP_OPTION -val nyears

    ./case.setup

     cat > user_nl_clm <<EOF
hist_fincl1 = 'BA_SCLS', 'DEMOTION_RATE_SCLS', 'PROMOTION_RATE_SCLS', 'NPLANT_CANOPY_SCLS', 'MORTALITY_CANOPY_SCLS','NPLANT_UNDERSTORY_SCLS', 'MORTALITY_UNDERSTORY_SCLS', 'DDBH_SCPF', 'DDBH_CANOPY_SCPF', 'DDBH_UNDERSTORY_SCPF','NPLANT_SCAG', 'YESTERDAYCANLEV_CANOPY_SCLS', 'YESTERDAYCANLEV_UNDERSTORY_SCLS','PATCH_AREA_BY_AGE','CANOPY_AREA_BY_AGE','NPATCH_BY_AGE','BIOMASS_BY_AGE'
EOF

  ./case.build
  ./case.submit

fi



if [ "${SETUP_CASE}" == "fates_test" ]; then

    CASE_NAME=${SETUP_CASE}_${GITHASH1}_${GITHASH2}
    basedir=$HOME/clmed/fates-clm/cime/scripts
    #### load_machine_files
    cd $basedir
    ./create_newcase -case ${CASE_NAME} -res 1x1_brazil -compset ICLM45ED -mach cheyenne -project P93300041
    cd ${CASE_NAME}

    ./xmlchange -file env_run.xml -id STOP_OPTION -val nyears
    ./xmlchange -file env_run.xml -id STOP_N -val 1
    ./xmlchange -file env_run.xml -id REST_N -val 1
    ./xmlchange -file env_run.xml -id CONTINUE_RUN -val FALSE
    ./xmlchange -file env_run.xml -id RESUBMIT -val 0
    ./xmlchange -file env_build.xml -id DEBUG -val FALSE
    
    ./xmlchange -file env_run.xml -id DIN_LOC_ROOT -val /glade/u/home/charlie/cesm_input_data
    
    ./xmlchange -file env_build.xml -id EXEROOT -val /glade2/scratch2/charlie/$CASE_NAME/bld
    ./xmlchange -file env_run.xml -id RUNDIR -val /glade2/scratch2/charlie/$CASE_NAME/run
    ./xmlchange -file env_run.xml -id DOUT_S_ROOT -val /glade2/scratch2/charlie/archive/$CASE_NAME

    ./xmlchange -file env_batch.xml -id JOB_WALLCLOCK_TIME -val 00:59:00
    ./xmlchange -file env_run.xml -id STOP_OPTION -val nyears

    ./case.setup

#      cat > user_nl_clm <<EOF
# EOF

  ./case.build
  ./case.submit

fi


