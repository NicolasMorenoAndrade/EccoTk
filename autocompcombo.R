library(tcltk)
library(tcltk2)
library(Eccolepack)

tcl('lappend', 'auto_path', "~/Desktop/EccoleRdev/EccoTk")
tclRequire('EccoTk','1.0')


win1 <- tktoplevel()

win1$env$combbox <- ttkcombobox(win1, values=crucecodigos$Nomlabel, width=67)
tkpack(win1$env$combbox, padx=5, pady=5)
tcl('bind', win1$env$combbox, "<KeyRelease>", tcl('list', 'EccoTk::ComboBoxAutoComplete',win1$env$combbox, '%K'))



# package require Tk 
# package require tile
# lappend auto_path "~/Desktop/EccoleRdev/EccoTk"
# package require EccoTk 1.0
# 
# ttk::combobox .c -values [list one two three four five six seven]
# pack .c -padx 5 -pady 5
# bind .c <KeyRelease> [list EccoTk::ComboBoxAutoComplete .c %K]