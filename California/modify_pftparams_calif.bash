#! /bin/bash

### where are all the things?
# param_file_dir=~/datasets/fates_param_files/CA_PFTs
# srcdir=~/Documents/model_source/ctsm/src/fates/
# scriptdir=$srcdir/tools/
param_file_dir=/glade/scratch/charlie/parameter_file_sandbox
srcdir=/glade/u/home/charlie/ctsm/src/fates/
scriptdir=$srcdir/tools/

### record the hash of the fates version of the original cdl file
cd $srcdir
GITHASH=`git log -n 1 --format=%h`
DATE=`date +%Y%m%d`

### what do you want to call the pft file?
descriptor=calif_4pfts_lesstreesmoregrass

### give the resulting file a name that incorporates both the hash, the descriptor, and the date
orig_fname=$param_file_dir/fates_params_default_$GITHASH.nc
mod_fname=$param_file_dir/fates_params_mod_${GITHASH}_${descriptor}_${DATE}.nc

### generate the netcdf binary from the cdl file
ncgen -o $orig_fname $srcdir/parameter_files/fates_params_default.cdl

### extract the relevant PFTs
#$scriptdir/FatesPFTIndexSwapper.py --pft-indices=2,2,6,7,12 --fin=$orig_fname --fout=$mod_fname
$scriptdir/FatesPFTIndexSwapper.py --pft-indices=2,2,7,12 --fin=$orig_fname --fout=$mod_fname

## rename the PFTs
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pft 1 --var fates_pftname --val ponderosa_pine
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pft 2 --var fates_pftname --val incense_cedar
#$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pft 3 --var fates_pftname --val calif_oak
#$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pft 4 --var fates_pftname --val calif_shrub
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pft 3 --var fates_pftname --val calif_shrub
# ## don't need to rename c4_grass

# ### modify parameter values for the calif_oak pft
# $scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname calif_oak --var fates_allom_agb1 --val 0.25 
# $scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname calif_oak --var fates_allom_agb2 --val 0.7238 
# $scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname calif_oak --var fates_allom_agb3 --val 1.491045 
# $scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname calif_oak --var fates_allom_agb4 --val 1 
# $scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname calif_oak --var fates_allom_d2bl1 --val 0.3 
# $scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname calif_oak --var fates_allom_d2h1 --val 0.688762 
# $scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname calif_oak --var fates_allom_d2h2 --val 0.1287216 
# $scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname calif_oak --var fates_allom_d2h3 --val -999.9 
# $scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname calif_oak --var fates_fire_bark_scaler --val 0.1 
# $scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname calif_oak --var fates_mort_bmort --val 0.014 
# $scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname calif_oak --var fates_wood_density --val 0.72 

### modify parameter values for the ponderosa_pine pft
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname ponderosa_pine --var fates_leaf_vcmax25top --val 65.7 
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname ponderosa_pine --var fates_alloc_storage_cushion --val 1 
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname ponderosa_pine --var fates_allom_agb1 --val 0.25 
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname ponderosa_pine --var fates_allom_agb2 --val 0.7 
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname ponderosa_pine --var fates_allom_agb3 --val 2 
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname ponderosa_pine --var fates_allom_agb4 --val 1.9 
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname ponderosa_pine --var fates_allom_d2bl1 --val 0.2 
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname ponderosa_pine --var fates_allom_d2bl2 --val 1.5 
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname ponderosa_pine --var fates_allom_d2bl3 --val 0.75 
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname ponderosa_pine --var fates_allom_d2ca_coefficient_max --val 0.7 
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname ponderosa_pine --var fates_allom_d2ca_coefficient_min --val 0.7 
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname ponderosa_pine --var fates_allom_d2h1 --val 1.45 
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname ponderosa_pine --var fates_allom_d2h2 --val -1 
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname ponderosa_pine --var fates_allom_d2h3 --val -999.9 
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname ponderosa_pine --var fates_allom_la_per_sa_int --val 0.4 
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname ponderosa_pine --var fates_fire_bark_scaler --val 0.079 
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname ponderosa_pine --var fates_leaf_BB_slope --val 9 
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname ponderosa_pine --var fates_leaf_diameter --val 0.004 
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname ponderosa_pine --var fates_leaf_long --val 4 
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname ponderosa_pine --var fates_leaf_slamax --val 0.0082 
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname ponderosa_pine --var fates_leaf_slatop --val 0.0082 
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname ponderosa_pine --var fates_leaf_stor_priority --val 0.7 
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname ponderosa_pine --var fates_mort_freezetol --val -29 
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname ponderosa_pine --var fates_mort_bmort --val 0.00215 
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname ponderosa_pine --var fates_recruit_initd --val 0.02
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname ponderosa_pine --var fates_roota_par --val 5 
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname ponderosa_pine --var fates_rootb_par --val 1 
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname ponderosa_pine --var fates_smpsc --val -357798 
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname ponderosa_pine --var fates_wood_density --val 0.369 
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname ponderosa_pine --var fates_z0mr --val 0.025 
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname ponderosa_pine --var fates_prt_nitr_stoich_p1 --val 0.019,0.016,0.00018,0.001,0,0.0066 

### modify parameter values for the incense_cedar pft
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname incense_cedar --var fates_leaf_vcmax25top --val 51 
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname incense_cedar --var fates_alloc_storage_cushion --val 1 
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname incense_cedar --var fates_allom_agb1 --val 0.25 
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname incense_cedar --var fates_allom_agb2 --val 0.7 
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname incense_cedar --var fates_allom_agb3 --val 2 
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname incense_cedar --var fates_allom_agb4 --val 1.9 
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname incense_cedar --var fates_allom_d2bl1 --val 0.2 
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname incense_cedar --var fates_allom_d2bl2 --val 1.5 
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname incense_cedar --var fates_allom_d2bl3 --val 0.75 
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname incense_cedar --var fates_allom_d2ca_coefficient_max --val 0.7 
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname incense_cedar --var fates_allom_d2ca_coefficient_min --val 0.7 
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname incense_cedar --var fates_allom_d2h1 --val 1.45 
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname incense_cedar --var fates_allom_d2h2 --val -1 
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname incense_cedar --var fates_allom_d2h3 --val -999.9 
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname incense_cedar --var fates_allom_la_per_sa_int --val 0.4 
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname incense_cedar --var fates_fire_bark_scaler --val 0.068 
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname incense_cedar --var fates_fire_crown_depth_frac --val 0.8 
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname incense_cedar --var fates_leaf_BB_slope --val 9 
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname incense_cedar --var fates_leaf_diameter --val 0.004 
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname incense_cedar --var fates_leaf_long --val 6 
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname incense_cedar --var fates_leaf_slamax --val 0.0063 
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname incense_cedar --var fates_leaf_slatop --val 0.0063 
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname incense_cedar --var fates_leaf_stor_priority --val 0.7 
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname incense_cedar --var fates_mort_freezetol --val -29 
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname incense_cedar --var fates_mort_bmort --val 0.00215 
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname incense_cedar --var fates_recruit_initd --val 0.02
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname incense_cedar --var fates_roota_par --val 5 
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname incense_cedar --var fates_rootb_par --val 1 
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname incense_cedar --var fates_smpsc --val -722806 
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname incense_cedar --var fates_wood_density --val 0.487 
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname incense_cedar --var fates_z0mr --val 0.025 
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname incense_cedar --var fates_prt_nitr_stoich_p1 --val 0.012,0.016,0.00018,0.001,0,0.0066 

### modify parameter values for the c4_grass pft
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname c4_grass --var fates_leaf_vcmax25top --val 40 
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname c4_grass --var fates_alloc_storage_cushion --val 2.25 
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname c4_grass --var fates_allom_agb1 --val 0.000964 
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname c4_grass --var fates_allom_agb2 --val 1.9492 
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname c4_grass --var fates_allom_agb3 --val 0 
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname c4_grass --var fates_allom_agb4 --val 0 
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname c4_grass --var fates_allom_agb_frac --val 1 
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname c4_grass --var fates_allom_d2bl1 --val 0.000964 
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname c4_grass --var fates_allom_d2bl2 --val 1.9492 
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname c4_grass --var fates_allom_d2bl3 --val 0 
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname c4_grass --var fates_allom_d2ca_coefficient_max --val 0.03 
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname c4_grass --var fates_allom_d2ca_coefficient_min --val 0.01 
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname c4_grass --var fates_allom_d2h1 --val 1 
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname c4_grass --var fates_allom_d2h2 --val 1 
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname c4_grass --var fates_allom_dbh_maxheight --val 1 
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname c4_grass --var fates_allom_hmode --val 3 
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname c4_grass --var fates_allom_la_per_sa_int --val 1000 
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname c4_grass --var fates_allom_sai_scaler --val 0.0012 
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname c4_grass --var fates_branch_turnover --val 0.3208 
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname c4_grass --var fates_fire_crown_kill --val 1 
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname c4_grass --var fates_leaf_BB_slope --val 4 
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname c4_grass --var fates_leaf_clumping_index --val 0.85 
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname c4_grass --var fates_leaf_long --val 0.3208 
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname c4_grass --var fates_leaf_slamax --val 0.04024 
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname c4_grass --var fates_leaf_slatop --val 0.02 
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname c4_grass --var fates_phen_evergreen --val 1 
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname c4_grass --var fates_phen_stress_decid --val 0 
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname c4_grass --var fates_recruit_hgt_min --val 0.5 
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname c4_grass --var fates_rholnir --val 0.45 
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname c4_grass --var fates_rhosnir --val 0.39 
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname c4_grass --var fates_rhosvis --val 0.16 
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname c4_grass --var fates_recruit_initd --val 1000 
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname c4_grass --var fates_roota_par --val 7 
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname c4_grass --var fates_rootb_par --val 1 
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname c4_grass --var fates_seed_dbh_repro_threshold --val 0.5 
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname c4_grass --var fates_wood_density --val 0.01 

### modify parameter values for the calif_shrub pft
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname calif_shrub --var fates_leaf_vcmax25top --val 47.86 
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname calif_shrub --var fates_allom_agb1 --val 0.12 
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname calif_shrub --var fates_allom_agb2 --val 0 
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname calif_shrub --var fates_allom_agb3 --val 2.13 
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname calif_shrub --var fates_allom_agb4 --val 0.93 
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname calif_shrub --var fates_allom_d2ca_coefficient_max --val 4.80 
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname calif_shrub --var fates_allom_d2ca_coefficient_min --val 4.8 
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname calif_shrub --var fates_allom_d2h1 --val 1.24 
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname calif_shrub --var fates_allom_d2h2 --val 0.39 
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname calif_shrub --var fates_allom_dbh_maxheight --val 0.68 
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname calif_shrub --var fates_leaf_slamax --val 0.01 
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname calif_shrub --var fates_leaf_slatop --val 0.01 
$scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --pftname calif_shrub --var fates_wood_density --val 0.63 



# ## non-pft parameters
# $scriptdir/modify_fates_paramfile.py --O --fin $mod_fname --fout $mod_fname --var fates_phen_mindayson --val 30 
