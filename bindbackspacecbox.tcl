package require Tk 
lappend auto_path "~/Desktop/EccoleRdev/EccoTk"
package require EccoTk 1.0

set colegios [list "Gimnasio Iragua" "Reyes Católicos" "Abraham Lincoln" "Andino"]
ttk::combobox .c -values $colegios -width 67
pack .c -padx 5 -pady 5
bind .c <KeyRelease> [list EccoTk::ComboBoxAutoComplete .c %K]
bind .c <BackSpace> [list .c configure -values $colegios]
