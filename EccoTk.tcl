# Create the namespace
namespace eval ::EccoTk {

	# Export proc
    	namespace export Talk
	namespace export ComboBoxAutoComplete
	namespace export ComboBoxAutoCompleteOriginal	
	
 
	# Set up Variable
	set version 1.0
	set EccoTkDescription "EccoTk: improvements on EccoleR's tcltk interface"
	set listaColegios [list "ASPAEN GIMN IRAGUA" "CENT EDUC Y CULT ESPANOL REYES CATOLICOS" "COL ABRAHAM LINCOLN" "COL ANDINO" "COL ANGLO COLOMBIANO" "COL BILING BUCKINGHAM" "COL BILING CLERMONT - SEDE PRINCIPAL" "COL BILING RICHMOND" "COL CALATRAVA - SEDE PRINCIPAL" "COL CAMPOALEGRE LTDA - SEDE PRINCIPAL" "COL COLOMBO GALES" "COL COLOMBO HEBREO" "COL CUMBRES" "COL FUND CARDENAL JHON HENRY NEWMAN" "COL GRAN BRETANA" "COL HACIENDA LOS ALCAPARROS" "COL HELVETIA" "COL INTERNACIONAL DE BOGOTA" "COL ITALIANO LEONARDO DA VINCI" "COL LOS NOGALES" "COL LOS TREBOLES" "COL MAYOR DE LOS ANDES - SEDE PRINCIPAL" "COL MODERNO JOHN DEWEY" "COL NUEVA GRANADA" "COL NUEVO REINO DE GRANADA" "COL ROCHESTER" "COL SAN BARTOLOME LA MERCED" "COL SAN CARLOS" "COL SAN JORGE DE INGLATERRA" "COL SAN MATEO APOSTOL" "COL SAN TARSICIO" "COL SANTA FRANCISCA ROMANA" "COL SANTA MARIA" "COL TIERRA NUEVA" "COL TILATA - SEDE PRINCIPAL" "COL TRINIDAD DEL MONTE" "COL INTERNACIONAL DE EDUCACION INTEGRAL - CIEDI LTDA - SEDE PRINCIPAL" "COLEGIO AGUSTIN NIETO CABALLERO - SEDE PRINCIPAL" "COLEGIO CAMPESTRE SAN DIEGO - SEDE PRINCIPAL" "COLEGIO DE INGLATERRA (THE ENGLISH SCHOOL) - SEDE PRINCIPAL" "COLEGIO SAN JOSE - SEDE PRINCIPAL" "COLEGIO VICTORIA - SEDE PRINCIPAL" "CORPORACION GIMNASIO ALEMAN FRIENDRICH VON SCHILLER - SEDE PRINCIPAL" "FUND COL SAN JUAN DEL CAMINO" "FUND GIMN LOS PORTALES" "FUND IDEALES GIMN SANTA ANA" "FUND NUEVO MARYMOUNT" "GIMN ALESSANDRO VOLTA - SEDE PRINCIPAL" "GIMN BRITANICO" "GIMN CAMP LOS CEREZOS" "GIMNASIO CAMPESTRE SAN RAFAEL" "GIMN CAMPESTRE" "GIMN DE LOS CERROS" "GIMN DEL NORTE - SEDE PRINCIPAL" "GIMN FEMENINO" "GIMN FONTANA" "GIMN JOSEFINA CASTRO DE ESCOBAR" "GIMN LA MONTANA" "GIMN LOS CAOBOS" "GIMN VERMONT" "GIMNASIO YACARD" "LIC BOSTON" "LIC FRANCES LOUIS PASTEUR" "NUEVO GIMNASIO CRISTIANO" "COLEGIO MONTESSORI LA CALERA" "KNIGHTSBRIDGE SCHOOL INTERNATIONAL" "ACAD PANTANO DE VARGAS" "CENT MARIA AUXILIADORA" "COL ABRAHAM MASLOW - SEDE PRINCIPAL" "COL AGUSTINIANO CIUDAD SALITRE" "COL AGUSTINIANO NORTE" "COL AGUSTINIANO SUBA" "COL ANGLO AMERICANO" "COL BERTRAND RUSSELL" "COL CAFAM" "COL CALASANZ" "COL CALASANZ FEMENINO" "COL CHAMPAGNAT" "COL CLAUSTRO MODERNO" "COL CORAZONISTA HH DEL SAGRADO CORAZON" "COL DE CAMBRIDGE" "COL DE BTO PATRIA" "COL DE LA ENSENANZA" "COL DE LA PRESENTACION SANS FACON" "COL DE LA SALLE" "COLEGIO DE MARIA ANGELA" "COL DE NSTRA SRA DEL BUEN CONSEJO" "COL DE SAN ALBERTO MAGNO" "COL DEL BOSQUE" "COL DEL ROSARIO DE SANTO DOMINGO" "COL DEL SAGRADO CORAZON DE JESUS BETHLEMITAS" "COL DIVINO SALVADOR" "COL EMILIO VALENZUELA - SEDE PRINCIPAL" "COL EMMANUEL D ALZON" "COL ESCLAVAS SGDO CORAZON DE JESUS" "COL FRANCISCANO DEL VIRREY SOLIS" "COL FUND COLOMBIA" "COL FUND SAN MARTIN" "COL HIJAS DE CRISTO REY" "COL INGLATERRA REAL" "COL JOSE JOAQUIN CASTRO MARTINEZ" "COL LAUSANA" "COL LISA MEITNER" "COL MIGUEL ANTONIO CARO" "COL MILIT SIMON BOLIVAR" "COL NSTRA SRA DE FATIMA POLINAL" "COL NSTRA SRA DE NAZARETH" "COL NUEVA INGLATERRA" "COL NUEVA YORK EU" "COL NUEVO COLOMBO AMERICANO" "COL NUEVO GIMN" "COL PIO X" "COL PUREZA DE MARIA" "COL REAL DE SANTA FE" "COL REFOUS" "COL SAN FELIPE NERI" "COLEGIO SAN PATRICIO" "COL SAN VIATOR" "COL SANTA CLARA" "COL SANTA MARIANA DE JESUS" "COL SANTO TOMAS DE AQUINO" "COL UNIDAD PEDAGOGICA" "COLEGIO DEL SANTO ANGEL" "COLEGIO IBEROAMERICANO - SEDE PRINCIPAL" "ESC PEDAGOGICA EXPERIMENTAL" "FUND COL CLARA CASAS MORALES" "FUND COL MAYOR DE SAN BARTOLOME" "GIMN ACAD REGIONAL" "GIMN CAMPESTRE BETH-SHALOM (ANTIGUO EL REDIL)" "GIMNASIO EL HONTANAR" "GIMN ESPECIALIZADO DEL NORTE" "GIMN FIDEL CANO" "GIMN FUENTE DEL RIO" "GIMN JOSE JOAQUIN CASAS" "GIMN JUAN BAUTISTA LAMARCK" "GIMN LA CUSPIDE (ANTIGUO JARD INF PERSONITAS DEL MANANA) - SEDE PRINCIPAL" "GIMN LOS ANDES" "GIMN LOS MONJES" "GIMN LOS PINOS" "GIMN LOS ROBLES" "GIMNASIO MODERNO" "GIMN SAN ANGELO" "GIMN SAN JOSE DE BAVARIA" "GIMNASIO CAMPESTRE LA CUMBRE - SEDE PRINCIPAL" "GIMNASIO COLOMBO BRITANICO" "GIMNASIO KAIPORE CENTRO DE DESARROLLO TEMPRANO" "GIMNASIO LOS ARRAYANES - SEDE PRINCIPAL" "INSTITUTO ALBERTO MERANI" "INST CORDOBA" "INST PEDAG NACIONAL" "INSTITUTO TECNICO ANGELI - SEDE PRINCIPAL" "LICEO CERVANTES PADRES AGUSTINOS" "LIC CAMBRIDGE" "LIC CATOLICO CAMPESTRE" "LIC CHICO CAMPESTRE" "LIC DE CERVANTES EL RETIRO" "LICEO JUAN RAMON JIMENEZ" "LIC MODERNO CAMPESTRE" "LIC PEDAGOGICO" "LIC ROCELY" "LIC SEGOVIA" "OAKLAND COLEGIO CAMPESTRE - SEDE PRINCIPAL" "CENT DE CAPACITACION  LTDA (CENCABO)" "CENT PANAMERICANO DE CAPACITACION SEDE SUBA" "COL ALEJANDRIA" "COL BILING DE LA UNIVERSIDAD DEL BOSQUE" "COL FONTAN" "COL HARVARD" "COL INTEGRAL BAQUERIZO Y MURILLO" "COL TRIANGULO CHAPINERO - SEDE PRINCIPAL" "COL VIRTUAL SIGLO XXI" "COLEGIO CAMPESTRE PRINCIPADO DE MONACO" "COLEGIO RETOS - SEDE PRINCIPAL" "COLEGIO RETOS - SEDE PRINCIPAL" "FUNDACION PARA LA ACTUALIZACION DE LA EDUCACION (FACE)" "GIM VIRTUAL SAN FRANCISCO" "GIMN EMILIO DE BRIGARD" "GRUPO EDUCATIVO BACATA" "INST ANDINO" "INST SAN FERNANDO FERRINI  SEDE CEDRITOS" "INST STUDIUM" "INSTITUCION EDUCATIVA URIBESCO - SEDE PRINCIPAL" "INSTITUTO GERWILL - SEDE PRINCIPAL" "LIC MONTANA" "LIC VAL (VIDA-AMOR-LUZ)" "POLITECNICO UNIVERSAL DE CAPACITACION" "TANDEM - SEDE PRINCIPAL" "QUALIA" "KALAPA" "TyT" "COL LA COLINA" "LIC DE COLOMBIA"]
 
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

# Busca en la lista y la actualiza segun lo encontrado
proc buscarActualizar {path} {

	set text [$path get]
	variable listaColegios $listaColegios
	
	if {[lsearch -regexp -nocase $listaColegios [subst -nocommands -nobackslashes {(\A$text)|(\s$text)}]]<0} {return} 
        set actualizados [lsearch -regexp -nocase -all -inline $listaColegios [subst -nocommands -nobackslashes {(\A$text)|(\s$text)}]]

	$path configure -values $actualizados

	return $actualizados
	}

proc ::EccoTk::ComboBoxAutoComplete {path key} {


	# Any key string with more than one character is considered a function key and is thus ignored
	if {[string length $key] > 1} {return}

	
	# disabling [ and ]
	
        set text [string map [list {[} {\[} {]} {\]}] [$path get]]
	
	#fix backspace??
	if {[string equal $text "BackSpace"]} {return}

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
	#if {string equal $text "BackSpace"} {return}

        if {[string length $key] > 1 && [string tolower $key] != $key} {return}
        
        set text [string map [list {[} {\[} {]} {\]}] [$path get]]
        if {[string equal $text ""]} {return}
        
        set values [$path cget -values]
        set x [lsearch -nocase $values $text*]
        if {$x < 0} {return}
        
        set index [$path index insert]
        $path set [lindex $values $x]	
        $path icursor $index
        $path selection range insert end
	
}


package provide EccoTk $EccoTk::version
package require Tcl      8.0
