package require Tk 
package require tile
lappend auto_path "~/Advenio/EccoTk"
package require EccoTk 1.0
ttk::combobox .c -values [list "COL ANGLO COLOMBIANO" "COL COLOMBO GALES" "COL HACIENDA LOS ALCAPARROS" "COL ANDINO" "GIMN EMILIO DE BRIGARD" "GIMNASIO MODERNO" "GIMN LOS ROBLES" "KALAPA" "QUALIA" "mandet Monj" "MIENT" "JUN METN"] -width 67
pack .c -padx 5 -pady 5
bind .c <KeyRelease> [list EccoTk::ComboBoxAutoComplete .c %K]

