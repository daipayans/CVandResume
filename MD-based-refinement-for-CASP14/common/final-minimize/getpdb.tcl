# -*- tcl -*-
mol new ionized.psf 
mol addfile ave.min.dcd waitfor all
#mol addfile $mdrun/s2.1.dcd waitfor all
#mol addfile $mdrun/s2.2.dcd waitfor all
#mol addfile $mdrun/s2.3.dcd waitfor all
#mol addfile $mdrun/s2.4.dcd waitfor all
#mol addfile $mdrun/s2.5.dcd waitfor all
#mol addfile $mdrun/s3.1.dcd waitfor all

for {set i 0} {$i < [molinfo 0 get numframes]} {incr i} {

    [atomselect 0 "protein and noh" frame $i] writepdb ave.min.pdb

}


quit
