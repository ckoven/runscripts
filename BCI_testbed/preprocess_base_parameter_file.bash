#! /bin/bash

## to run on ncar machine, do this:
module load python/2.7.15
ncar_pylib


DATE=`date +%Y%m%d`
param_file_dir=~/scratch/parameter_file_sandbox/
srcdir=~/ctsm/src/fates/

scriptdir=$srcdir/tools/ 

cd $srcdir
GITHASH=`git log -n 1 --format=%h`

echo $DATE

ncgen -o $param_file_dir/fates_params_default_$GITHASH.nc $srcdir/parameter_files/fates_params_default.cdl

cd $param_file_dir

descriptor=1PFT_exp1

# set maximum crown area at 200 cm
$scriptdir/modify_fates_paramfile.py --fin fates_params_default_${GITHASH}.nc --fout fates_params_default_${GITHASH}_mod$descriptor.nc --O --allpfts --var fates_allom_dbh_maxheight --val 200

# use martinez-cano height allometry
$scriptdir/modify_fates_paramfile.py --fin fates_params_default_${GITHASH}_mod$descriptor.nc --fout fates_params_default_${GITHASH}_mod$descriptor.nc --O --allpfts --var fates_allom_hmode --val 5
$scriptdir/modify_fates_paramfile.py --fin fates_params_default_${GITHASH}_mod$descriptor.nc --fout fates_params_default_${GITHASH}_mod$descriptor.nc --O --allpfts --var fates_allom_d2h1 --val 57.6
$scriptdir/modify_fates_paramfile.py --fin fates_params_default_${GITHASH}_mod$descriptor.nc --fout fates_params_default_${GITHASH}_mod$descriptor.nc --O --allpfts --var fates_allom_d2h2 --val 0.74
$scriptdir/modify_fates_paramfile.py --fin fates_params_default_${GITHASH}_mod$descriptor.nc --fout fates_params_default_${GITHASH}_mod$descriptor.nc --O --allpfts --var fates_allom_d2h3 --val 21.6

# use chave AGB allometry
$scriptdir/modify_fates_paramfile.py --fin fates_params_default_${GITHASH}_mod$descriptor.nc --fout fates_params_default_${GITHASH}_mod$descriptor.nc --O --allpfts --var fates_allom_amode --val 3
$scriptdir/modify_fates_paramfile.py --fin fates_params_default_${GITHASH}_mod$descriptor.nc --fout fates_params_default_${GITHASH}_mod$descriptor.nc --O --allpfts --var fates_allom_agb1 --val 0.0673
$scriptdir/modify_fates_paramfile.py --fin fates_params_default_${GITHASH}_mod$descriptor.nc --fout fates_params_default_${GITHASH}_mod$descriptor.nc --O --allpfts --var fates_allom_agb2 --val 0.976
$scriptdir/modify_fates_paramfile.py --fin fates_params_default_${GITHASH}_mod$descriptor.nc --fout fates_params_default_${GITHASH}_mod$descriptor.nc --O --allpfts --var fates_allom_agb3 --val -999
$scriptdir/modify_fates_paramfile.py --fin fates_params_default_${GITHASH}_mod$descriptor.nc --fout fates_params_default_${GITHASH}_mod$descriptor.nc --O --allpfts --var fates_allom_agb4 --val -999

# set power-law crown area with capped crown area at dbh_maxh
$scriptdir/modify_fates_paramfile.py --fin fates_params_default_${GITHASH}_mod$descriptor.nc --fout fates_params_default_${GITHASH}_mod$descriptor.nc --O --allpfts --var fates_allom_lmode --val 3
$scriptdir/modify_fates_paramfile.py --fin fates_params_default_${GITHASH}_mod$descriptor.nc --fout fates_params_default_${GITHASH}_mod$descriptor.nc --O --allpfts --var fates_allom_d2bl3 --val -999

# decouple root from leaf biomass trimming logic
$scriptdir/modify_fates_paramfile.py --fin fates_params_default_${GITHASH}_mod$descriptor.nc --fout fates_params_default_${GITHASH}_mod$descriptor.nc --O --var fates_allom_fmode --val 2 --allpfts

# set disturbance parameters
$scriptdir/modify_fates_paramfile.py --fin fates_params_default_${GITHASH}_mod$descriptor.nc --fout fates_params_default_${GITHASH}_mod$descriptor.nc --O --var fates_comp_excln --val -1
$scriptdir/modify_fates_paramfile.py --fin fates_params_default_${GITHASH}_mod$descriptor.nc --fout fates_params_default_${GITHASH}_mod$descriptor.nc --O --var fates_mort_disturb_frac --val 0.5
$scriptdir/modify_fates_paramfile.py --fin fates_params_default_${GITHASH}_mod$descriptor.nc --fout fates_params_default_${GITHASH}_mod$descriptor.nc --O --var fates_mort_understorey_death --val 1.0

# kill off the second PFT entirely
$scriptdir/modify_fates_paramfile.py --fin fates_params_default_${GITHASH}_mod$descriptor.nc --fout fates_params_default_${GITHASH}_mod$descriptor.nc --O --var fates_recruit_initd --val 0 --pft 2

