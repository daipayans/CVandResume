# -*- tcl -*-
set mdrun [lindex $argv 0]

mol new $mdrun/ionized.hmr.psf 
mol addfile $mdrun/s1.1.dcd waitfor all
mol addfile $mdrun/s2.1.dcd waitfor all
mol addfile $mdrun/s2.2.dcd waitfor all
mol addfile $mdrun/s2.3.dcd waitfor all
mol addfile $mdrun/s2.4.dcd waitfor all
mol addfile $mdrun/s2.5.dcd waitfor all
mol addfile $mdrun/s3.1.dcd waitfor all

set dirname output-pdb
if {[file exist $dirname]} {
    # check that it's a directory
    if {! [file isdirectory $dirname]} {
        puts "$dirname exists, but it's a file"
    }
} else {
    file mkdir $dirname
}


for {set i 0} {$i < [molinfo 0 get numframes]} {incr i} {

    [atomselect 0 "protein and noh" frame $i] writepdb output-pdb/$mdrun-$i.pdb

}


quit
