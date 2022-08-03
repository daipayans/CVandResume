mol new ionized.psf
mol addfile ionized.pdb

set fil [open "pbc-cell.txt" w+] 
set all [atomselect top all]
set minmax [measure minmax $all]
set vec [vecsub [lindex $minmax 1] [lindex $minmax 0]]
#puts $fil "cellBasisVector1 [lindex $vec 0] 0 0"
#puts $fil "cellBasisVector2 0 [lindex $vec 1] 0"
#puts $fil "cellBasisVector3 0 0 [lindex $vec 2]"
puts $fil $vec
set  center [measure center $all]
#puts $fil "cellOrigin $center"
puts $fil $center
close $fil
$all delete

quit
