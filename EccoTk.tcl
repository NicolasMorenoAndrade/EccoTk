# Create the namespace
namespace eval ::EccoTk {
 
	# Export proc
    	namespace export Talk
	namespace export ComboBoxAutoComplete
	namespace export ComboBoxAutoCompleteOriginal	
	
 
	# Set up Variable
	set version 1.0
	set EccoTkDescription "EccoTk: improvements on EccoleR's tcltk interface"
 
        # Variable for the path of the script
        variable home [file join [pwd] [file dirname [info script]]]
 
}
 
# Definition of the procedure talk
proc ::EccoTk::Talk {} {
	puts $EccoTk::EccoTkDescription
}
# Definition of the procedure getpath
proc ::EccoTk::GetPath {} {
	variable home
        return $home
}

proc ::EccoTk::ComboBoxAutoComplete {path key} {


	# Any key string with more than one character is considered a function key and is thus ignored
	if {[string length $key] > 1} {return}

	
	# disabling [ and ]
	
        set text [string map [list {[} {\[} {]} {\]}] [$path get]]
	
	#fix backspace??
	if {[string equal $text ""]} {return}
        set values [$path cget -values]


	# hace la b´usqueda de los strings en la lista values que empiezan por lo escrito ya sea al principio de la palabra o 		despu´es de un espacio, pero primero se asegura de que haya un match
	if {[lsearch -regexp -nocase $values [subst -nocommands -nobackslashes {(\A$text)|(\s$text)}]]<0} {return} 
        
	set actualizados [lsearch -regexp -nocase -all -inline $values [subst -nocommands -nobackslashes {(\A$text)|(\s$text)}]]

	$path configure -values $actualizados
	
	set prm [lindex $actualizados 0]

	if {[string compare [string toupper $text] $prm]<0} {set prol [string length $text]}

	set prol [expr [string first [string toupper " $text"] $prm] + [string length $text] + 1]
	$path set $prm
	$path icursor $prol
	$path selection range $prol end

	
}

proc ::EccoTk::ComboBoxAutoCompleteOriginal {path key} {

 # autocomplete a string in the ttk::combobox from the list of values
        #-
        # Any key string with more than one character and is not entirely
        # lower-case is considered a function key and is thus ignored.
        #
        # path -> path to the combobox
        #
	if {string equal "BackSpace"}

        if {[string length $key] > 1 && [string tolower $key] != $key} {return}
        
        set text [string map [list {[} {\[} {]} {\]}] [$path get]]
        if {[string equal $text ""]} {return}
        
        set values [$path cget -values]
        set x [lsearch -nocase $values $text*]
        if {$x < 0} {return}
        
        set index [$path index insert]
        $path set [lindex $values $x]	
        $path icursor $index
        #$path selection range insert end
	
}


package provide EccoTk $EccoTk::version
package require Tcl      8.0
