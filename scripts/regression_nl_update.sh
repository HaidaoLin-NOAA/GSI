# Standalone script used to pass namelist updates to the regression tests.

# First, generate new variable to hole the first 6 characters of the experiment.
path_to_control_convinfo_fixed_file=/scratch1/portfolios/NCEPDEV/da/save/Xiujuan.Su/gsi/xsu_sattype/fix_test
path_to_experiment_convinfo_fixed_file=/scratch1/portfolios/NCEPDEV/da/save/Xiujuan.Su/gsi/xsu_sattype/fix

if [[ `expr substr $exp $((${#exp}-4)) ${#exp}` = "updat" ]]; then
   export SETUP_update=""
   export convinfopath="$path_to_experiment_convinfo_fixed_file"
else
   export SETUP_update=""
   export convinfopath="$path_to_control_convinfo_fixed_file"
fi
export GRIDOPTS_update=""
export BKGVERR_update=""
export ANBKGERR_update=""
export JCOPTS_update=""
if [[ `expr substr $exp 1 6` = "global" ]]; then
   if [[ `expr substr $exp $((${#exp}-4)) ${#exp}` = "updat" ]]; then
      export STRONGOPTS_update=""
      export convinfopath="$path_to_experiment_convinfo_fixed_file"
   else
      export STRONGOPTS_update=""
      export convinfopath="$path_to_control_convinfo_fixed_file"
   fi
fi
export OBSQC_update=""
export OBSINPUT_update=""
export SUPERRAD_update=""
export SINGLEOB_update=""
