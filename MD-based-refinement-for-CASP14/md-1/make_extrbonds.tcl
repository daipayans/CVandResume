package require ssrestraints

mol new ionized.hmr.psf
mol addfile ionized.pdb

ssrestraints -psf ionized.hmr.psf -pdb ionized.pdb -o ss-extrabonds.txt -hbonds

quit
