mol new ionized.hmr.psf
mol addfile ionized.pdb

set sel [atomselect top all]
set fixed [atomselect top "protein"] 

$sel set beta 0
$fixed set beta 1

$sel writepdb fixed.protein.fix

quit
