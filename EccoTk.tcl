# Create the namespace
namespace eval ::EccoTk {
 
	# Export proc
    	namespace export Talk
	namespace export ComboBoxAutoComplete	
	
 
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
        # autocomplete a string in the ttk::combobox from the list of values
        #-
        # Any key string with more than one character and is not entirely
        # lower-case is considered a function key and is thus ignored.
        #
        # path -> path to the combobox
        #
        if {[string length $key] > 1 && [string tolower $key] != $key} {return}
        
        set text [string map [list {[} {\[} {]} {\]}] [$path get]]
        if {[string equal $text ""]} {return}
        
        set values [$path cget -values]
        set x [lsearch $values $text*]
        if {$x < 0} {return}
        
        set index [$path index insert]
        $path set [lindex $values $x]
        $path icursor $index
        $path selection range insert end
}

package provide EccoTk $EccoTk::version
package require Tcl      8.0
