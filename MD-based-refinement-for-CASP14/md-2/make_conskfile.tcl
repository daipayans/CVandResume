set selection [lindex $argv 0]
set k [lindex $argv 1]
set stage [lindex $argv 2]

mol new ionized.hmr.psf
mol addfile ionized.pdb

set all [atomselect top all]
set fixed [atomselect top "$selection"] 

$all set beta 0
$fixed set beta $k

$all writepdb ionized.2.$stage.cnst

quit
