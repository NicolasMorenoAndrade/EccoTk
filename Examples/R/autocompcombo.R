library(tcltk)
library(tcltk2)
library(Eccolepack)

tcl('lappend', 'auto_path', "~/Desktop/EccoleRdev/EccoTk")
tclRequire('EccoTk','1.0')


win1 <- tktoplevel()
colegios <- as.character(crucecodigos$Nomlabel)
win1$env$combbox <- ttkcombobox(win1, values=colegios, width=67)
tkpack(win1$env$combbox, padx=5, pady=5)
tcl('bind', win1$env$combbox, "<KeyRelease>", tcl('list', 'EccoTk::ComboBoxAutoComplete',win1$env$combbox, '%K'))
tcl('bind', win1$env$combbox, "<BackSpace>",  tcl('list',win1$env$combbox, 'configure', '-values', colegios))


# package require Tk 
# package require tile
# lappend auto_path "~/Desktop/EccoleRdev/EccoTk"
# package require EccoTk 1.0
# 
# set colegios [list "Gimnasio Iragua" "Reyes Católicos" "Abraham Lincoln" "Andino"]
# ttk::combobox .c -values $colegios -width 67
# pack .c -padx 5 -pady 5
# bind .c <KeyRelease> [list EccoTk::ComboBoxAutoComplete .c %K]
# bind .c <BackSpace> [list .c configure -values $colegios]