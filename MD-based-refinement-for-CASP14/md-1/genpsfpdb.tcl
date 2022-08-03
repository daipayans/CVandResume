mol new [lindex $argv 0]
set molname [file rootname [molinfo top get filename]]

package require autopsf
autopsf -mol top -prefix $molname

package require solvate
solvate ${molname}_formatted_autopsf.psf ${molname}_formatted_autopsf.pdb -t 20 -o solvate

package require autoionize
autoionize -psf solvate.psf -pdb solvate.pdb -neutralize -o ionized

quit
