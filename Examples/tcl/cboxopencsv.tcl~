package require Tk 

lappend auto_path "~/Desktop/EccoleRdev/EccoTk"
package require EccoTk 1.0

package require csv 
package require struct::matrix



struct::matrix crucecodigos
crucecodigos add columns 3
set cccsv [open ~/Desktop/EccoleRdev/PROGRAMATEST/tcl/crucecodigos.csv]
csv::read2matrix $cccsv crucecodigos 
close $cccsv



set colegios [list [crucecodigos get column 2]]
ttk::combobox .c -values $colegios -width 67
pack .c -padx 5 -pady 5
bind .c <KeyRelease> [list EccoTk::ComboBoxAutoComplete .c %K]
bind .c <BackSpace> [list .c configure -values $colegios]
