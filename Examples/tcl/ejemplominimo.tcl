package require Tk 
lappend auto_path "~/Desktop/EccoleRdev/EccoTk"
package require EccoTk 1.0
ttk::combobox .c -values $EccoTk::listaColegios -width 67
pack .c -padx 5 -pady 5
bind .c <KeyRelease> [list EccoTk::ComboBoxAutoComplete .c %K]

