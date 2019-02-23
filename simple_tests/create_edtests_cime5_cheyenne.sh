#!/bin/bash

#===============================================================================
# Standard clm-ed tests for the Lawrencium 
# Script based off of template from G. Bisht
#
#===============================================================================

# USER CHANGE THESE PARAMETERS ONLY
export MACH=cheyenne
export NOBUILD=off
export AUTOSUBMIT=off

export BASELINEROOT=/glade2/scratch2/charlie/fates-clm-baselines/
export TESTDIR=/glade2/scratch2/charlie/fates-clm-tests/
export BASEHASH=b753898_ae5d33d
export CLMHASH=`git log -n 1 --format=%h`
export FATESHASH=`(cd ../../components/clm/src/fates;git log -n 1 --format=%h)`
export GITHASH=${CLMHASH}"_"${FATESHASH}


export COMPILER=intel
export PROJECT=P93300041


TIMESTAMP=`date +"%y%m%d%H%M"`


if [ $1 = "fates" ] || [ $1 = "all" ]; then

   echo "fatesTests"
   export TEST_CATEGORY=fates
   export TESTROOT=${TESTDIR}/${TEST_CATEGORY}.${MACH}.${COMPILER}.${GITHASH}
   export BASELINENAME=${TEST_CATEGORY}.${MACH}.${COMPILER}.${GITHASH}
   export COMPARE=${TEST_CATEGORY}.${MACH}.${COMPILER}.${BASEHASH}

   ./create_test \
   --xml-category fates \
   --xml-compiler fates \
   --xml-machine fates \
   --test-id ${TIMESTAMP} \
   --walltime '02:30:00' \
   --machine ${MACH} \
   --baseline-root ${BASELINEROOT} \
   --generate ${BASELINENAME} \
   --compiler ${COMPILER} \
   --test-root ${TESTROOT} \
   --compare ${COMPARE}

fi
# if [ $1 = "clm_short_45" ] || [ $1 = "all" ]; then

#    echo "clm_short_45 tests"
#    # THE SHORT CLM TEST
  
#    export TEST_CATEGORY=clm_short_45
#    export TESTROOT=${TESTDIR}/${TEST_CATEGORY}.${MACH}.${COMPILER}.${GITHASH}
#    export BASELINENAME=${TEST_CATEGORY}.${MACH}.${COMPILER}.${GITHASH}
#    export COMPARE=${TEST_CATEGORY}.${MACH}.${COMPILER}.${BASEHASH}

#    echo "CREATING TESTS IN: "$TESTROOT
#    echo "BASELINES IN: "$BASELINENAME

#    ./create_test \
#    --xml-category  ${TEST_CATEGORY}  \
#    --machine ${MACH} \
#    --compiler ${COMPILER} \
#    --xml-machine  yellowstone \
#    --test-id ${TIMESTAMP} \
#    --walltime '01:00:00' \
#    --xml-compiler  intel  \
#    --test-root ${TESTROOT} \
#    --generate ${BASELINENAME} \
#    --baseline-root ${BASELINEROOT} \
#    --compare ${COMPARE} 
# fi
# if [ $1 = "clm_short_50" ] || [ $1 = "all" ]; then

#    echo "clm_short_50_tests"
#    # THE SHORT CLM TEST
#    export TEST_CATEGORY=clm_short_50
#    export TESTROOT=${TESTDIR}/${TEST_CATEGORY}.${MACH}.${COMPILER}.${GITHASH}
#    export BASELINENAME=${TEST_CATEGORY}.${MACH}.${COMPILER}.${GITHASH}
#    export COMPARE=${TEST_CATEGORY}.${MACH}.${COMPILER}.${BASEHASH}

#    echo "CREATING TESTS IN: "$TESTROOT
#    echo "BASELINES IN: "$BASELINENAME

#    ./create_test \
#    --xml-category  ${TEST_CATEGORY}  \
#    --machine ${MACH} \
#    --compiler ${COMPILER} \
#    --xml-machine  yellowstone \
#    --walltime '01:00:00' \
#    --xml-compiler  intel  \
#    --test-id ${TIMESTAMP} \
#    --test-root ${TESTROOT} \
#    --generate ${BASELINENAME} \
#    --baseline-root ${BASELINEROOT} \
#    --compare ${COMPARE} 

# fi


# FOR GENERATING BASELINES

#./create_test \
#-xml_category fates \
#-xml_compiler fates \
#-xml_mach fates \
#-mach ${MACH} \
#-generate ${BASELINENAME} \
#-baselineroot ${BASELINEROOT} \
#-compiler ${COMPILER} \
#-testroot ${TESTROOT} \
#-nobuild ${NOBUILD} \
#-autosubmit ${AUTOSUBMIT}


