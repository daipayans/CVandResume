#!/bin/bash
infile="$1"
module load vmd/1.9.3
vmd -dispdev text -e genpsfpdb.tcl -args ${infile} 
vmd -dispdev text -e hmr.tcl -args ionized.psf ionized.pdb
