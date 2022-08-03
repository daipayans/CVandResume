#!/bin/bash
module load vmd/1.9.3
my_namd='/net/kihara/home/sarkar30/Software/NAMD_Git-2019-10-03_Linux-x86_64-multicore-CUDA'

vmd -dispdev text -e get_cell_final.tcl

${my_namd}/namd2 +p2 minimize.inp | tee minimize.log 

vmd -dispdev text -e getpdb.tcl

/net/kihara/home/sarkar30/bin/clean_pdb ave.min.pdb

/net/kihara/home/sarkar30/bin/Run_relax_model_sc.sh ave.min.pdb

echo "Done."




