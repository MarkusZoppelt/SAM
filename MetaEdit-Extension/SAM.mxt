<?xml version="1.0" encoding="UTF-8"?>
<gxl dbName="Sam2020313" dbPath="Sam2020313" timeStamp="2020-03-20T12:23:12.273Z" version="5.5" xmlns="http://www.metacase.com/gxlGOPRRType" xmlns:ns="http://www.w3.org/1999/xlink" xmlns:sym="http://www.metacase.com/symbol">
	<graph type="Graph_Security_sysadmin_3758565629" typeName="Security">
		<description>Security Abstraction Model </description>
		<superType>
			<graph type="Graph__EAST_ADL_sysadmin_3576828277" typeName="_EAST-ADL">
				<description>Abstract supertype of all EAST-ADL graph types</description>
				<slot id="c6cao0" name="__UUID" unique="false">
					<property id="Property___UUID_sysadmin_3604668056" type="Property___UUID_sysadmin_3604668056" typeName="__UUID">
						<description>Globally unique identifier.</description>
						<dataType>
							<simpleType>String</simpleType>
						</dataType>
						<widget>UUID Base64</widget>
					</property>
				</slot>
				<identProp slotID="c6cao0"></identProp>
				<report>
					Report '!Doc'
subreport 'Export graph hierarchy to Word' run 
endreport
					<icon offset="0,0" xmlns="http://www.metacase.com/icon">
						<svg baseProfile="tiny" height="20" version="1.2" width="20" xmlns="http://www.w3.org/2000/svg">
							<image height="20" ns:href="Graph__EAST_ADL_sysadmin_3576828277-!Doc-Icon-1.png" sym:scale="1,1" width="20" x="0" y="0"></image>
							<textArea display-align="center" fill="rgb(0,0,224)" font-family="constantia" font-size="12" font-style="italic" font-weight="bold" height="11" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="middle" width="14" x="6" y="7">W</textArea>
						</svg>
					</icon>
				</report>
				<report>Report 'All elements in other project'
$proj = projectid
'The following objects belong to another project than this graph type:' newline
do graphs where projectid = $proj {
	foreach .() where projectid &lt;&gt; $proj {
		id ' in ' id;1 ' exists in project ' project
		newline;
	}	
}
endreport</report>
				<report>Report 'Documentation in HTML'
_translators()
$Graphs=' '
variable 'starting_graph' write subreport '_id and oid' run close
subreport '_EAST-ADL graphs in HTML' run 
external '"' subreport '_default directory' run $starting_graph '.html"' execute 
endreport</report>
				<report>Import\ EAXML()
/* 
Importing the .EAXML file into the MetaEdit+ 
Remember to set the default project before importing 
*/
subreport '_translators' run 
subreport '_importTranslators' run

variable 'filename' write
	prompt 'Choose .eaxml file to be imported' askFileName
close 

if $filename; then

local 'importedFileName' write $filename%file close

filename subreport '_default directory' run 'XSLT_transform.bat' write
	'"C:\Program Files\Saxonica\SaxonHE9.4N\bin\transform" -s:"' $filename '" -xsl:"' subreport '_default directory' run 'EAST_ADL_import.xslt" -o:"' $filename '.mxm"'
close

external subreport '_default directory' run 'XSLT_transform.bat' executeBlocking 

/* File in the result.mxm file */
internal 'fileInPatch: "' $filename '.mxm"' execute 

endif
</report>
				<report>
					Realization\ relationships()
/* reports all realizations links among the elements */
$project = project
'Realization relationships in ' $project ' project:' newline;
do graphs where projectid = projectid;1 {
	foreach &gt;Realization {
		do ~Realized.() { id ' &lt;' Type '&gt; is realized by ' }
		do ~RealizedBy.() {id ' &lt;' Type '&gt;' newline}
	}
}

					<icon offset="0,0" xmlns="http://www.metacase.com/icon">
						<svg baseProfile="tiny" height="70" version="1.2" width="60" xmlns="http://www.w3.org/2000/svg">
							<polygon fill="rgb(255,255,255)" points="40,0 60,20 40,20 40,0 0,0 0,70 60,70 60,20" stroke="rgb(0,0,0)" stroke-width="1"></polygon>
							<line stroke="rgb(0,0,0)" stroke-width="1" x1="20" x2="10" y1="20" y2="20"></line>
							<line stroke="rgb(0,0,0)" stroke-width="1" x1="50" x2="40" y1="40" y2="40"></line>
							<line stroke="rgb(0,0,0)" stroke-width="1" x1="50" x2="30" y1="50" y2="50"></line>
							<line stroke="rgb(0,0,0)" stroke-width="1" x1="50" x2="20" y1="60" y2="60"></line>
							<line stroke="rgb(0,0,0)" stroke-width="1" x1="10" x2="30" y1="10" y2="10"></line>
							<polygon fill="rgb(255,255,255)" points="40,0 40,20 60,20" stroke="rgb(0,0,0)" stroke-width="1"></polygon>
							<polygon fill="rgb(0,0,0)" points="42,26 22,32.3333 35.333,45" stroke="rgb(0,0,0)" stroke-width="1"></polygon>
							<line stroke="rgb(0,0,0)" stroke-width="3" x1="25" x2="18.3333" y1="43" y2="49.6667"></line>
							<line stroke="rgb(0,0,0)" stroke-width="3" x1="11.6667" x2="5" y1="56.3333" y2="63"></line>
						</svg>
					</icon>
				</report>
				<report>
					Satisfy\ relationships()
/* reports all satisfy links among the elements */
$project = project
'Satisfy relationships in ' $project ' project:' newline;
do graphs where projectid = projectid;1 {
	foreach &gt;(Satisfy*) {
		do ~SatisfiedBy.() { id ' &lt;' Type '&gt; satisfies ' }
		do ~(^SatisfiedBy).() {id ' &lt;' Type '&gt;' newline}
	}
}

					<icon offset="0,0" xmlns="http://www.metacase.com/icon">
						<svg baseProfile="tiny" height="70" version="1.2" width="60" xmlns="http://www.w3.org/2000/svg">
							<polygon fill="rgb(255,255,255)" points="40,0 60,20 40,20 40,0 0,0 0,70 60,70 60,20" stroke="rgb(0,0,0)" stroke-width="1"></polygon>
							<line stroke="rgb(0,0,0)" stroke-width="1" x1="20" x2="10" y1="20" y2="20"></line>
							<line stroke="rgb(0,0,0)" stroke-width="1" x1="50" x2="40" y1="40" y2="40"></line>
							<line stroke="rgb(0,0,0)" stroke-width="1" x1="50" x2="30" y1="50" y2="50"></line>
							<line stroke="rgb(0,0,0)" stroke-width="1" x1="50" x2="20" y1="60" y2="60"></line>
							<line stroke="rgb(0,0,0)" stroke-width="1" x1="10" x2="30" y1="10" y2="10"></line>
							<polygon fill="rgb(255,255,255)" points="40,0 40,20 60,20" stroke="rgb(0,0,0)" stroke-width="1"></polygon>
							<polygon fill="rgb(170,170,170)" points="42,26 22,32.3333 35.333,45" stroke="rgb(170,170,170)" stroke-width="1"></polygon>
							<line stroke="rgb(170,170,170)" stroke-width="3" x1="25" x2="18.3333" y1="43" y2="49.6667"></line>
							<line stroke="rgb(170,170,170)" stroke-width="3" x1="11.6667" x2="5" y1="56.3333" y2="63"></line>
						</svg>
					</icon>
				</report>
				<report>_ARPortDetails()
do #();2 {
	id 
	if :Type; then 
		' (' 
		do :Type {:Short name; ':' type }
		')'
	endif 
	' connects with ' 
	if type;1 = 'DesignFunctionPrototype' then /* assembly */
		do #();2 {:Short name;}' port of ' :Short name;1  
		do graphs where oid; = oid;9 {
			foreach .DesignFunctionPrototype; where oid  = oid;3 {
				do ~InstanceRef;~Target.() {' allocated to ComponentType ' :Short name; }
			}
		}
	else
		:Short name;1 /* delegation port */
	endif
	
	newline
}	
</report>
				<report>_ArrayDatatype()
/* Reporting the ArrayDatatype properties */
if :MaxLength; then '&lt;MAX-LENGTH&gt;' :MaxLength '&lt;/MAX-LENGTH&gt;' newline endif
if :MinLength; then '&lt;MIN-LENGTH&gt;' :MinLength '&lt;/MIN-LENGTH&gt;' newline endif
'&lt;ELEMENT-TYPE-REF TYPE="' do :Type { type%minus%upper '"&gt;' variable oid '_path' read } '&lt;/ELEMENT-TYPE-REF&gt;' newline</report>
				<report>_baseRangeable()
/* Reporting the baseRangeable details */
if $EAXMLoids =~oid%wildsp AND not ($reported_elements =~ oid%wildsp) then
	variable 'reported_elements' append oid ' ' close
	variable 'type_name' write type%minus%upper close
	local 'BRName' write :Short name; close
	local 'BRShortName' write @BRName%toShortName close
	local 'nameValue' write :Name;%xml close 
	newline
	'&lt;!-- ' $type_name ' name: ' 
	if @nameValue &lt;&gt; '' then
		@nameValue ' (' @ShortName ')'
	else
		@BRShortName 
	endif
	' --&gt;' newline 
	'&lt;!-- path: ' variable oid '_path' read ' --&gt;' newline 
	'&lt;' $type_name ' UUID="' :__UUID '"&gt;' newline 
	'&lt;SHORT-NAME&gt;' @BRShortName '&lt;/SHORT-NAME&gt;' newline
	if @nameValue &lt;&gt; '' then
		'&lt;NAME&gt;' :Name;%xml '&lt;/NAME&gt;' 
	endif
	subreport '_description' run
	_EANumerical()
	'&lt;/' $type_name '&gt;'
	do :Unit { _unit() }
endif
</report>
				<report>_baseRangeable_details()
/* Reports the BaseRangeables details */
if $EAXMLoids =~oid%wildsp then
	newline
	local 'nameValue' write :Name;%xml close 
	'&lt;!-- ' $type_name ' name: '
	if @nameValue &lt;&gt; '' then
		@nameValue ' (' :Short name; ')'
	else
		:Short name;
	endif
	' --&gt;' newline
	'&lt;!-- path: ' variable oid '_path' read ' --&gt;' newline 
	'&lt;' $type_name ' UUID="' :__UUID '"&gt;' newline 
	'&lt;SHORT-NAME&gt;' :Short name; '&lt;/SHORT-NAME&gt;' newline
	if @nameValue &lt;&gt; '' then
		'&lt;NAME&gt;' @nameValue '&lt;/NAME&gt;' newline
	endif
	subreport '_description' run
	if :AmountOfSubstanceExp; then '&lt;AMOUNT-OF-SUBSTANCE-EXP&gt;' :AmountOfSubstanceExp;%xml '&lt;/AMOUNT-OF-SUBSTANCE-EXP&gt;' newline endif
	if :ElectricCurrentExp; then '&lt;ELECTRIC-CURRENT-EXP&gt;' :ElectricCurrentExp;%xml '&lt;/ELECTRIC-CURRENT-EXP&gt;' newline endif
	if :LengthExp; then '&lt;LENGTH-EXP&gt;' :LengthExp;%xml '&lt;/LENGTH-EXP&gt;' newline endif
	if :LuminousIntensityExp; then '&lt;LUMINOUS-INTENSITY-EXP&gt;' :LuminousIntensityExp;%xml '&lt;/LUMINOUS-INTENSITY-EXP&gt;' newline endif
	if :MassExp; then '&lt;MASS-EXP&gt;' :MassExp;%xml '&lt;/MASS-EXP&gt;' newline endif
	if :ThermodynamicTemperatureExp; then '&lt;THERMODYNAMIC-TEMPERATURE-EXP&gt;' :ThermodynamicTemperatureExp;%xml '&lt;/THERMODYNAMIC-TEMPERATURE-EXP&gt;' newline endif
	if :TimeExp; then '&lt;TIME-EXP&gt;' :TimeExp;%xml '&lt;/TIME-EXP&gt;' newline endif
	if type = 'EANumerical' then
		_EANumerical()
	endif
	'&lt;/' $type_name '&gt;'
	do :Unit { 
		if not $reported_elements =~ oid%wildsp then
			variable 'reported_elements' append oid ' ' close
			variable 'type_name' write type%minus%upper close
			_unit_details()
			do :Quantity {
				if not $reported_elements =~ oid%wildsp then
					variable 'reported_elements' append oid ' ' close
					variable 'type_name' write type%minus%upper close
					_quantity_details()
				endif
			}
			do :UnitReference {
				if not $reported_elements =~ oid%wildsp then
					variable 'reported_elements' append oid ' ' close
					variable 'type_name' write type%minus%upper close
					_unit_details()
					do :Quantity {
						if not $reported_elements =~ oid%wildsp then
							variable 'reported_elements' append oid ' ' close
							variable 'type_name' write type%minus%upper close
							_quantity_details()
						endif
					}
				endif
			}
		endif
	}
endif
</report>
				<report>_bindingsWithDeletedPorts()
/* Reports all bindings with ports in which target port object is deleted */
$ports = ' '
foreach .(*Prototype) 
{	do decompositions 
	{	foreach .(*Port | *Pin* ) { variable 'ports' append oid ' ' close	}}
	do ~(*Port* | *Pin* | FailureOut | FaultIn); 
	{	do #() 
		{	if not $ports =~ oid%wildsp then
				_reportWarnings()
				'Warning: ' id;2 ' in role ' type;1 ' does not have target port defined'
				if $extendedCheck = 'T' then
					' in the model ' id;3 ' &lt;' type;3 '&gt;'
				else
					'. Reconnect or remove the role ' if id;1 then id;1 ' ' else '&lt;' type;1 '&gt;.' endif
				endif
				newline
			endif
		}
	}
}
</report>
				<report>_build_typesAccessedFromLevels()
if type =~ '*Prototype' then
	do decompositions {
		if not $typesAccessedFromLevels =~ oid%wildsp then
			variable 'typesAccessedFromLevels' append oid ' ' close
			foreach .(*Prototype) {
				if not $typesAccessedFromLevels =~ oid%wildsp then
					/* Add oid to typesAccessedFromLevels variable */
					variable 'typesAccessedFromLevels' append oid ' ' close
					/* Goes through the submodels */
					do decompositions {
						foreach .(*) {	_build_typesAccessedFromLevels() }
					}
				endif
			}
			endif

		/* Ports and Pins */
		foreach .(*Port | *Pin*) {
			if not $typesAccessedFromLevels =~ oid%wildsp then
				/* Add oid to typesAccessedFromLevels variable */
				variable 'typesAccessedFromLevels' append oid ' ' close
				subreport '_data-type type' run
				if (type =~ 'Client*') OR (type =~ 'Server*') then
					do :Type {			
						if not $typesAccessedFromLevels =~ oid%wildsp then
							variable 'typesAccessedFromLevels' append oid ' ' close
							subreport '_data-type type' run
						endif
					}
				endif
			endif
		}
	}
endif
	
/* Add oid to typesAccessedFromLevels variable */
if (type =~'*Port') OR (type =~ '*Pin*') then 
	if not $typesAccessedFromLevels =~ oid%wildsp then
		variable 'typesAccessedFromLevels' append oid ' ' close
		subreport '_data-type type' run
		if (type =~ 'Client*') OR (type =~ 'Server*') then
			do :Type {
				if not $typesAccessedFromLevels =~ oid%wildsp then
					variable 'typesAccessedFromLevels' append oid ' ' close
					subreport '_data-type type' run
				endif
			}
		endif
	endif
endif

if type = 'SystemModel' then
	do decompositions { 
		foreach .(*Prototype | Allocations) {
			subreport '_build_typesAccessedFromLevels' run
		}
	}
endif

/* Package */
if type = 'Package'; then
	do decompositions { subreport '_find packaged types' run }
endif</report>
				<report>_checkEATypesInEAXML()
if type = 'AnalysisFunctionType' or type = 'DesignFunctionType' or type = 'HardwareComponentType' then
	foreach .(*Prototype) {
		do decompositions {
			if not $TypesInEAXML =~ oid%wildsp and not $ReportedTypeDefsErrors =~ oid%wildsp then
				variable 'ReportedTypeDefsErrors' append oid ' ' close
				_reportWarnings()
				'Warning: ' id ' &lt;' type '&gt; is not defined in any package' newline
				_checkPrototypesInEAXML()
			endif 
		}
	}
	
endif

if type = 'AnalysisFunctionType' or type = 'DesignFunctionType' then
	variable 'typesChecked' append oid ' ' close
	_EAXML_CheckDataTypesInFunctionTypes()				
endif
</report>
				<report>_checkEAXMLPathSystemModel()
@shortnames = ' '
foreach .(*Prototype) 
{	subreport '_name checks' run
	@prototypeName = :Short name;
	if @shortnames =~ @prototypeName%wildsp; then
		_reportWarnings()
		'Warning: ' id;1 ' contains several prototypes with the same short name ' :Short name; newline
	else
		local 'shortnames' append :Short name; ' ' close
	endif
}</report>
				<report>_CheckIfDuplicatesInFunctionTypeDefinition()
/* checks that not duplicate F*A elements in the hierarchy */
foreach .(*Prototype | *Port ) {
	if not $prototypes =~ oid%wildsp then
		variable 'prototypes' append oid ' ' close
	else
		$error = 'T'
		'Warning: ' type ' ' id ' exists in several types. Open Info... for it' newline
	endif
	do decompositions {
		if not $visitedGraphs =~ oid%wildsp then
			variable 'visitedGraphs' append oid ' ' close
			_CheckIfDuplicatesInFunctionTypeDefinition()
		endif
	}
}</report>
				<report>_checkingForShortNameUniqueness()
@portsAndPrototypes = ' '
foreach .( *Prototype | *Port | *Pin* ) 
{	@name = :Short name;
	if @portsAndPrototypes =~ @name%wildsp; then
		_reportWarnings()
		'Warning: ' id;1 ' contains several elements (prototypes, pins, ports) having same identifier ' :Short name; '. Please rename them as unique in the model!'  newline
	else
		local 'portsAndPrototypes' append @name%var ' ' close
	endif
}</report>
				<report>_checkingPortDatatypes()
/* Checkings for the Port datatypes */
to '%typeName
$EABoolean $Boolean
'
endto

/* Next is executed only by running the explicit Check report button from toolbar, not by real time LiveCheck */
if $LiveCheck &lt;&gt; 'T' then 
	foreach &gt;(Flow | Power | ClientServerInterface)
	{	@port1Type = @port2Type = ''
		@element1Type = @element2Type = ''
		
		/* Port1 */
		do ~(OutFlowPort | OutPowerPort | ServerPort | InFlow | InPower | Client) 
		{	do .() { @element1Type = type }
			local 'port1Type' write
				if @element1Type =~ '*Prototype' then
					do #() {	do :Type { type }}
				else
					do .() {	do :Type { type }}
				endif
			close
		}

		/* Port2 */
		do ~(InFlowPort | InPowerPort | ClientPort | OutFlow | OutPower | Server) 
		{	do .() { @element2Type = type }
			local 'port2Type' write
				if @element2Type =~ '*Prototype' then
					do #() {	do :Type { type }}
				else
					do .() {	do :Type { type }}
				endif
			close
		}

		/* Reporting */
		if @port1Type &lt;&gt; @port2Type; then 
			/* Data-types are different */
			_reportWarnings()
			'Warning: Relationship ' id ' &lt;' type '&gt; has ports with different types: ' 
			if @port1Type then '&lt;' @port1Type%typeName '&gt;' else '&lt;undefined&gt;' endif 
				' and ' 
			if @port2Type then '&lt;' @port2Type%typeName '&gt; ' else '&lt;undefined&gt; ' endif 
			_extendedCheckOutput_level1()
			newline 	
		endif
	}
endif</report>
				<report>Report '_checkings for the graph'
/*******************/
/* Model checkings */
/*******************/
if not id then
	_reportWarnings()
	'Warning: There is no identifier for model: (' type ')' newline
endif
if type &lt;&gt; 'HardwareComponentType' then
	if not id =/ '[a-zA-Z]([a-zA-Z0-9]|_[a-zA-Z0-9])*_?' then
		_reportWarnings()
		'Warning: There are illegal character(s) in the graph''s FunctionName/Short name property ' id; newline
	endif
else
	do :Type 
	{	if not :Short name; =/ '[a-zA-Z]([a-zA-Z0-9]|_[a-zA-Z0-9])*_?' then
			_reportWarnings()
			'Warning: There are illegal character(s) in graph''s name ' :Short name; ' &lt;' type '&gt;' newline
		endif
	}
endif

/* Checking for IsElementary property */
if :IsElementary; then
	@hasElements = 'F'
	foreach .(*Prototype) {	@hasElements = 'T' }
	if @hasElements; = 'T' then
		_reportWarnings()
		'Warning: ' type ' is marked elementary but it has prototypes defined as parts' newline
	endif
endif

/* Checking for the DesignFunctionType which Type is defined as HardwarefunctionType */
@HardwareFunctionTypeFound = ''
$prototype_list = ''
@delimeter = ''
if type = 'DesignFunctionType' And :Type = 'HardwareFunctionType' then
	foreach .DesignFunctionPrototype 
	{ 	do decompositions 
		{	if :Type &lt;&gt; 'HardwareFunctionType' then
				@HardwareFunctionTypeFound = 'F'
				variable 'prototype_list' append @delimeter id ' &lt;' :Type '&gt;' close
				@delimeter = ', '
			endif
		}
	}
endif
@delimeter = ''

if @HardwareFunctionTypeFound; &lt;&gt; '' then
	_reportWarnings()
	'Warning: Model ' id ' &lt;' :Type '&gt; should contain only prototypes typed as HardwareFunctionType, now it contains following prototypes: ' $prototype_list newline
endif

endreport</report>
				<report>Report '_checkings for the objects'
/*****************************/
/* Checkings for the objects */
/*****************************/
$emptyIdFound = 'F'

foreach .(^Comment | ^Operator) 
{	/* Identifier checks */
	subreport '_name checks' run

	/* Finding the objects where Type undefined */
	if (type =~ '*Prototype') and not (type =~ '*FaultPrototype') then
		if not decompositions then
			_reportWarnings()
			'Warning: Type undefined for ' 
			if type &lt;&gt; 'HardwareComponentType' then
				:Short name; ' &lt;' type '&gt; '
			else
				id ' &lt;' type '&gt; ' 
			endif
			_extendedCheckOutput_level1()
			if $LiveCheck = 'T' then
				'Define a suitable subgraph for it (Ctrl + double click the object).' 
			endif
			newline
		endif
	endif

	/* PowerPort can be owned only by FunctionalDevice or HardwareFunctionType 
	if type = 'PowerPort' and type;1 =~ '*FunctionType' then
		if :Type;1 &lt;&gt; 'FunctionalDevice' and :Type;1 &lt;&gt; 'HardwareFunctionType' then
			_reportWarnings() 
			'Warning: The owner of ' id ' must be ' 
			if type;1 = 'AnalysisFunctionType' then
				'FunctionalDevice'
			else
				'HardwareFunctionType'
			endif
			newline
		endif
	endif */

	/* HardwareComponentPrototypes */
	if type = 'HardwareComponentPrototype' then
		/* Finding the sensors and actuators connected in series */
		_sensorsAndActuatorsInSeries()
	endif
	
	/* HardwarePortConnectors */
	if type = 'HardwarePortConnector' then
		/* HardwarePortConnector checkings */
		_hardwarePortConnectorCheck()
	endif
	
	/* Finding QualityRequirement Kind undefined */
	if type =~ 'QualityRequirement' And :Kind = '' then
		_reportWarnings()
		'Warning: Undefined Kind property for ' id 
		_extendedCheckOutput_level1()
		newline
	endif
}

/* Finding the duplicate object short names */
@duplicateObjects = _duplicatedObjects()
if @duplicateObjects; then
	_reportWarnings()
	'Warning: Same short name identifier ' 
	dowhile @duplicateObjects; where id orderby id unique id
	{	@temp = id
		'"' @temp '" used for:'
		@prefix = ' '
		foreach .(^Comment) where :Short name; = :Short name;1 orderby x NUM, y NUM
		{	@prefix
			@prefix = ', '
			'&lt;' type '&gt;'
		}
		', '
	}
	if $extendedCheck = 'T' then
		' in the model ' id ' &lt;' type '&gt;. '
	else
		'. Give a unique short name identifier for every object.'
	endif
	newline
endif


/* Reporting the Port Type checks */
@undefinedTypeFound = 'F'
foreach .(*Port) 
{	/* Undefined type values */
	if :Type = '' then
		@undefinedTypeFound = 'T'
	endif
	/* Reporting the undefined values */
	do :Type {	_validateDataTypes() }
}

/* Reporting the undefined Port datatypes */
if @undefinedTypeFound = 'T' then
	@delimeter = ''
	_reportWarnings()
	'Warning: Undefined Type(s) for Ports: '
	foreach .(*Port) 
	{	if :Type = '' then
			@delimeter id ' &lt;' type '&gt;'
			@delimeter = ', '
		endif
	}
	if $extendedCheck = 'T' then
		' in the model ' id ' &lt;' type '&gt;'
	endif
	@delimeter = ''
	if $LiveCheck = 'T' then
		'. Run ''Check'' report to see detailed analysis for the whole architecture.'
	endif
	newline
endif

endreport</report>
				<report>Report '_checkings for the relationships'
/***********************************/
/* Checkings for the relationships */
/***********************************/
$emptyIdFound = 'F'
foreach &gt;(Flow | ClientServerInterface | Power | HardwareConnector | FaultFailurePropagationLink )
{	/* Relationship Name checkings */
	subreport '_name checks' run
	
	if type = 'HardwareConnector' then
	/* Finding the incorrect pin types */
	@checkIO = 'F'
	do ~() 
	{ 	if type =~ 'IO*' then 			
			@checkIO = 'T'
		endif
	}
	if @checkIO; = 'T' then
		subreport '_inCorrectPinTypes' run 
		if $fromtype &lt;&gt; $totype then 
			_reportWarnings()
			'Warning: Incompatible pin types in relationship ' id ' &lt;' type '&gt;: ' $fromtype ' &lt;&gt; ' $totype; newline 
		endif
	endif
	endif
}

/* Reporting the empty relationship ids */
@delimeter = ''
if $emptyIdFound; = 'T' then
	_reportWarnings()
	'Warning: Short name missing for relationship: '
	foreach &gt;() where :Short name; = '' 
	{ 	@delimeter 
		subreport '_id or type' run 
		@delimeter = ', '
	}
	if $extendedCheck = 'T' then
		' in the model ' id ' &lt;' type '&gt;. '
	else
		'. Give a unique short name to every relationship.'
	endif
	newline
endif
$emptyIdFound = 'F'
@delimeter = ''

/* Finding the duplicate relationship short names */
@duplicatedRelationships = _duplicatedRelationships()
if @duplicatedRelationships; then
	_reportWarnings()
	'Warning: Same relationship short name used for ' 
	dowhile @duplicatedRelationships; where id orderby id unique id
	{	@temp = id
		'"' @temp '":'
		@prefix = ' '
		foreach &gt;(^Comment) where :Short name; = :Short name;1 orderby x NUM, y NUM
		{	@prefix
			@prefix = ', '
			'&lt;' type '&gt;'
		}
	}
	if $extendedCheck = 'T' then
		' in the model ' id ' &lt;' type '&gt;. '
	else
		'. Give a unique short name for every relationship.'
	endif
	newline
endif

_checkingPortDatatypes()

endreport</report>
				<report>Report '_checkings for the roles'
/***************************/
/* Checkings for the roles */
/***************************/
/* Reporting the ports which have been connected but port information later deleted, ie. binding still exists without the port */
_bindingsWithDeletedPorts()

/* More extensive check is launched, when Check report is explicitely launched from the toolbar */ 
if $LiveCheck &lt;&gt; 'T' then
	/* Reporting the undefined Port Types */
	$undefinedTypeFound = 'F'
	_undefinedType()
endif
endreport</report>
				<report>_checkingsForFunctionAndHardwarePrototypes()
/* Checkings for the Model */
subreport '_checkings for the graph' run

/* Checkings for FAA, FDA and HDA prototypes */
subreport '_checkings for the objects' run

/* Checkings for Roles */
subreport '_checkings for the roles' run

/* Undefined subgraph */
foreach .(*Prototype)
{	/* Follow the subgraph hiearchy */
	do decompositions 
	{	if not $visited =~ oid%wildsp then
			variable 'visited' append oid ' ' close
			_checkingsForFunctionAndHardwarePrototypes()	
		endif
	}
}

/* Reporting the Requirements which are not defined in any Package, but still used in the model (path information may be missing in EAXML output) */
foreach .(*Requirement)
{	if not $requirementsInThisPackageHiearchy =~ oid%wildsp then
		_reportWarnings()
		'Warning: ' id ' &lt;' type '&gt; has been used in model ' id;1 ' &lt;' type; 1 '&gt;, but it is not defined in any Package, so reference path may be missing in EAXML output.' newline
	endif
}</report>
				<report>_checkingsForFunctionPrototypes()
/* Checkings for FAA and FDA */
/* Empty Type properties */
foreach .(*Port)
{
	if :Type = '' then
		_reportWarnings()
		'Warning: ' id; ' &lt;' type '&gt; does not have Type property defined in model ' id;1 ' &lt;' type;1 '&gt;' newline
	endif
}

/* Undefined subgraph */
foreach .(*FunctionPrototype)
{	
	/* Subgraph undefined */
	if not decompositions then
		_reportWarnings()
		'Warning: Type undefined for ' :Short name; ' &lt;' type '&gt; in model ' id;1 newline
	endif
	/* Follow the subgraph hiearhcy */
	do decompositions 
	{ 
		if not $visited =~ oid%wildsp then
			variable 'visited' append oid ' ' close
			_checkingsForFunctionPrototypes()	
		endif
	}
}</report>
				<report>_checkingsForTimingModels()

if type = 'TimingModel' then
	/* Checking for the events */
	_EventChecks()
	/* Checking for the constraints */
	_ConstraintChecks()
else 
	foreach .() 
	{
		if $LiveCheck &lt;&gt; 'T' then
			if type = 'Package'; then
				do decompositions { _checkingsForTimingModels()	}
			endif
		endif
	}
endif 
</report>
				<report>_checkingShortNameUniqueness()
@shortNames = ' '
@reported = ' '
foreach .( * | ^Comment | ^Generic* | ^User* ) 
{	@this = ''
	if type = 'EAType' then
		do decompositions 
		{	if type =~ '*FunctionType' then
				local 'this' write :FunctionName; close
			else
				if type = 'HardwareComponentType' then
					do :Type { local 'this' write :Short name; close }
				else
					local 'this' write :Short name; close
				endif
			endif
		}
	else
		if type = 'Package' or type = 'SystemModel' then
			do decompositions 
			{	local 'this' write :Short name; close }
		else
			local 'this' write :Short name; close
		endif
	endif
	
	if @shortNames =~ @this%wildsp; and not @reported =~ @this%wildsp then
		local 'reported' append @this ' ' close
		_reportWarnings()
		'Warning: ' :Short name;1 ' contains several elements with' 
		if @this then 
			' the same name ' @this 
		else 
			' empty identifier e.g. ' type 
		endif 
		newline
	else
		local 'shortNames' append @this ' ' close
	endif
}</report>
				<report>_checkPrototypesInEAXML()
foreach .(*Prototype) 
{	do decompositions 
	{	if not $TypesInEAXML =~ oid%wildsp and not $ReportedTypeDefsErrors =~ oid%wildsp then
			variable 'ReportedTypeDefsErrors' append oid ' ' close
			_reportWarnings()
			'Warning: ' id ' &lt;' type '&gt; is not defined in any package' newline
			_checkPrototypesInEAXML()
		endif 
		
		if not $EATypeGraphs =~ oid%wildsp then
			variable 'ReportedTypeDefsErrors' append oid ' ' close
			_reportWarnings()
			'Warning: ' id ' &lt;' type '&gt; referred via '
			do stack 
			{	if type = 'SystemModel' and metatype = 'Graph' then 
					id ' &lt;' type '&gt; is not defined in any package' newline
				endif
			}
		endif
		
		if type = 'AnalysisFunctionType' or type = 'DesignFunctionType' then
			variable 'typesChecked' append oid ' ' close
			_EAXML_CheckDataTypesInFunctionTypes()				
		endif
	}
}</report>
				<report>_checkTimingAndBehaviorModelsForEAXML()
if type = 'TimingModel' or type = 'BehaviorGraph' or type = 'Dependability' then
	_EAXML_CheckIfFunctionsDefined()
	_EAXML_CheckIfFunctionTypesDefined()
	_EAXML_CheckIfEventChainsDefined()
	_EAXML_CheckIfModesDefined()
	_EAXML_CheckIfEventsDefined()
	_EAXML_CheckIfDatatypesDefined()
	_EAXML_CheckIfPortsDefined()
	_EAXML_CheckIfFeatureFlawsDefined()
	_EAXML_CheckIfFaultFailuresDefined()
	_EAXML_CheckIfFeaturesDefined()
	_EAXML_CheckIfSafetyGoalsDefined()
	_EAXML_CheckIfHazardousEventDefined()
endif

foreach .Package 
{	do decompositions 
	{	if not $visited =~ oid%wildsp; then
			_checkTimingAndBehaviorModelsForEAXML() 
		endif
	}
}
</report>
				<report>_checkUsedTypesInEAXML()

_EAXML_CheckIfArrayDataTypeDefined()
_EAXML_CheckIfEANumericalDataTypeDefined()
_EAXML_CheckIfCompositeDataTypesTypeDefined()
_EAXML_CheckIfRangeableValueTypesDataTypeDefined()
_EAXML_CheckClientServerInterfaceTypesDefined()

foreach .EAType {
	do decompositions {
		_checkEATypesInEAXML()
	}
}

foreach .SystemModel {
	do decompositions {
		_checkPrototypesInEAXML()
	}
}

foreach .Package {
	do decompositions {
		_checkUsedTypesInEAXML()	
	}
}</report>
				<report>Report '_client-server properties'
/* Generating the client-server type property */
'&lt;KIND&gt;' 
if type = 'ClientPort' then
	'Client'%upper
else
	'Server'%upper
endif
'&lt;/KIND&gt;' newline
'&lt;TYPE-TREF TYPE="FUNCTION-CLIENT-SERVER-INTERFACE"&gt;' 
do :Type { variable oid '_path' read }
'&lt;/TYPE-TREF&gt;' newline

endreport</report>
				<report>Report '_ClientServerInterface'
/* Generating the Function-Client-Server-Interface definitions */
if not $reported_elements =~ oid%wildsp then
	variable 'reported_elements' append oid ' ' close
	do :Type {
	if not $reported_elements =~ oid%wildsp then
		variable 'reported_elements' append oid ' ' close
		subreport '_ClientServerInterfaceDetails' run 
	endif
	}
endif
endreport</report>
				<report>Report '_ClientServerInterfaceDetails'
if $EAXMLoids =~oid%wildsp then
	local 'nameValue' write :Name;%xml close 
	newline
	'&lt;!-- FUNCTION-CLIENT-SERVER-INTERFACE name: ' 
	if @nameValue &lt;&gt; '' then
		@nameValue ' (' :Short name; ')'
	else
		:Short name;
	endif
	' --&gt;' newline
	'&lt;FUNCTION-CLIENT-SERVER-INTERFACE UUID="' :__UUID '"&gt;' newline
	'&lt;SHORT-NAME&gt;' :Short name; '&lt;/SHORT-NAME&gt;' newline
	if @nameValue &lt;&gt; '' then
		'&lt;NAME&gt;' @nameValue '&lt;/NAME&gt;' newline
	endif
	_FunctionClientServerInterface()
	'&lt;/FUNCTION-CLIENT-SERVER-INTERFACE&gt;'
endif
endreport</report>
				<report>_ClientServerInterfaces()
/* Creates the ClientServerInterfaces */
foreach &gt;ClientServerInterface
{	do ~(^Comment) 
	{	variable 'port' write do #(){ oid } close 
		do .() 
		{ 	do decompositions 
			{	foreach .(*Port) 
				{	if oid = $port then
						subreport '_ClientServerInterface' run
					endif
				}
			}
		}
	}
}</report>
				<report>_collectAllPackagedRequirements()
/* Creates a variable listing all the packaged Requirements */
foreach .(*Requirement | Package)
{	if type =~ '*Requirement' then
		if not $requirementsInThisPackageHiearchy =~ oid%wildsp then
			variable 'requirementsInThisPackageHiearchy' append oid ' ' close
		endif
	else
		if type = 'Package' then
			do decompositions { _collectAllPackagedRequirements() }
		endif
	endif
}</report>
				<report>_collectAllTypesInThisEAXML()
$EAXMLoids = ' '
	
foreach .Package 
{	do decompositions {	_createThisEAXMLTypeCollection()	}}</report>
				<report>_collectEATypes()
if not $packages_in_cycle =~ oid%wildsp then
	variable 'packages_in_cycle' append oid ' ' close
	/* Collecting all the types accessed via the EAType objects */
	foreach .() 
	{	if type ='EAType' then
			do decompositions 
			{	if not $EATypeGraphs =~ oid%wildsp then
					variable 'EATypeGraphs' append oid ' ' close
				endif
			}
		endif
	
		if type ='Package' then
			do decompositions { _collectEATypes() }
		endif
	
		if type = 'CompositeDatatype' then
			@duplicateEADataTypePrototypes = ' '
			do :DatatypePrototypes; 
			{	@short = :Short name;
				if not @duplicateEADataTypePrototypes =~ @short%wildsp; then
					local 'duplicateEADataTypePrototypes' append :Short name; ' ' close
				else
					_reportWarnings()
					'Warning: ' id; ' &lt;' type '&gt; in ' id;1 ' defined several times in DatatypePrototypes with the same Short name ' newline
				endif
			}
		endif
	}
endif</report>
				<report>_collectGraphsInThisHierarchy()

/* collects the hierarchy of graphs based on the model hierarchy via packages and system models */
if not $myGraphs =~ oid%wildsp then
	variable 'myGraphs' append oid ' ' close /* add to the list of graphs */
	foreach .() {
		do decompositions {
			_collectGraphsInThisHierarchy()
		}
		do explosions {
			_collectGraphsInThisHierarchy()
		}
	}
endif</report>
				<report>_CompositeDatatype()
/* Reporting the CompositeDatatype information */
'&lt;DATATYPE-PROTOTYPES&gt;'
do :DatatypePrototypes { 
	newline
	'&lt;EA-DATATYPE-PROTOTYPE UUID="' :__UUID '"&gt;' newline
	'&lt;SHORT-NAME&gt;' :Short name; '&lt;/SHORT-NAME&gt;' newline
	if :Name; then
		'&lt;NAME&gt;' :Name%xml '&lt;/NAME&gt;' newline
	endif
	do :Type { 
		'&lt;TYPE-TREF TYPE="' type%minus%upper '"&gt;' variable oid '_path' read '&lt;/TYPE-TREF&gt;' newline
	} 
	'&lt;/EA-DATATYPE-PROTOTYPE&gt;' newline
} 
'&lt;/DATATYPE-PROTOTYPES&gt;' newline</report>
				<report>_createFunctionTypePath()

if not $pathsVisited =~oid%wildsp then
	variable 'pathsVisited' append oid ' ' close
	
	_StackforEAXMLPath()
		
	foreach .(*Prototype | HardwarePortConnector) 
	{
		 _StackforEAXMLPath()	
	} 

	foreach .(*Pin* | *Port) 
	{
		_StackforEAXMLPath()
	}
	
	/* Relationships */
	foreach &gt;(^Comment)
	{
		 _StackforEAXMLPath()	
	} 

endif
</report>
				<report>_createGraphTypePath()
/* Create the path information for this graph type */
_StackforEAXMLPath()

/* All other objects */
foreach .(^EAType) 
{	do decompositions {	_createGraphTypePath() }}
</report>
				<report>_createThisEAXMLTypeCollection()

if not $EAXMLoids =~oid%wildsp then
	variable 'EAXMLoids' append oid ' ' close
	foreach .(&lt;_EADatatype | Unit | Quantity | FunctionClientServerInterface ) {
		if not $EAXMLoids =~oid%wildsp then
			variable 'EAXMLoids' append oid ' ' close
		endif
	}

	foreach .EAType {
		do decompositions where type ='AnalysisFunctionType' or type = 'DesignFunctionType' or type = 'HardwareComponentType' {
			if not $EAXMLoids =~oid%wildsp then
				variable 'EAXMLoids' append oid ' ' close
				foreach .(*Pin* | *Port | *Prototype) {
					if not $EAXMLoids =~oid%wildsp then
						variable 'EAXMLoids' append oid ' ' close
					endif
				}
			endif
		}
	}
	
	foreach .(*Requirement) {
		if not $EAXMLoids =~oid%wildsp then
			variable 'EAXMLoids' append oid ' ' close
		endif
	}
	
	foreach .Package {
		do decompositions {
			_createThisEAXMLTypeCollection()
		}
	}
endif</report>
				<report>_createTypePath()
if not $pathsVisited =~oid%wildsp then
	variable 'pathsVisited' append oid ' ' close
	foreach .(&lt;_EADatatype | Unit | Quantity | FunctionClientServerInterface ) 
	{	_StackforEAXMLPath()	}

	/* Creating the path information for elements accessd via the EAType */
	foreach .EAType 
	{	do decompositions where type =~ '*Type' or type = 'ErrorModel' or type = 'EnvironmentModel' or type =~ 'BehaviorGraph'  
		{	_createFunctionTypePath() }
	} 
	
	/* RequirementModel objects */
	foreach .(*Requirement | UseCase | OperationalSituation) 
	{	if type;1 = 'RequirementsModel' then
		/* Path information generated only when the Requirement objects are in the RequirementsModel, otherwise the path information would not be correct (like Requirements can exist in Dependability, FAA, FDA, Hardware */
			_StackforEAXMLPath()
		endif
	}

	/* BehaviorGraph objects */
	foreach .(ModeGroup | FunctionBehavior | FunctionTrigger) 
	{	_StackforEAXMLPath()
		if type = 'ModeGroup' then
			do :Mode 
			{	_StackforEAXMLPath()	}
		endif
	}

	/* TimingModel objects */
	foreach .(*Event* | *Constraint) 
	{	_StackforEAXMLPath()	}
	
	/* Dependabilty objects */
	foreach .(FeatureFlaw | FaultFailure | Item | SafetyGoal | HazardousEvent | Hazard) 
	{	_StackforEAXMLPath()	}
	
	/* VehicleFeature and Feature objects */
	foreach .(VehicleFeature | Feature) 
	{	if not ~Child; then 
			_StackforEAXMLPath()
			if ~Parent; then
				/* Goes through the subfeatures to get the correct path for each feature */
				_subfeatures()
			endif
		endif 
	}	
	
	/* SystemModel object */
	foreach .(SystemModel) 
	{	_StackforEAXMLPath()	
	}	
	
	foreach .Package 
	{	do decompositions 
		{	
			/* Creating the path information for graph types accessed via the package sturcture */
			_createGraphTypePath()
			_createTypePath()	
		}
	}
endif</report>
				<report>_createTypePaths()
$pathsVisisted = ' '

do graphs where type = 'EAXML' 
{	foreach .Package 
	{	do decompositions 
		{	_createTypePath()	}
	}
}

do graphs where type = 'Package' 
{	@rootPackage = 'T'

	do graphs where type = 'Package' 
	{	foreach .Package 
		{	do decompositions where type = 'Package' 
			{	if oid = oid;3 then
					@rootPackage = 'F'
				endif
			}
		}
	}
	if @rootPackage = 'T' then
		_createTypePath()
	endif
}
</report>
				<report>_createTypePathsInThisHierarchy()
foreach .Package
{	do decompositions 
	{	if $visited =~ oid%wildsp then
			_createTypePath()
		endif
		_createTypePathsInThisHierarchy()
	}
}
</report>
				<report>_create_data-types()
/* Generation of data-types found in own package */
/* Every data-type/unit/unit-reference/quantity/base-rangeable, is created as an own variable, syntax: oid_path */
variable 'modelOid' write oid '_data-types_content' close
foreach .(^Comment) { 
	if type = 'ArrayDatatype' OR type = 'CompositeDatatype' OR type = 'EABoolean' OR type = 'EANumerical' OR type = 'EAString' OR type = 'Enumeration' OR type = 'RangeableValueType' or type = 'FunctionClientServerInterface' then 
		if not ($data-types_modeled =~ oid%wildsp) and not ($reported_elements =~ oid%wildsp) then
			variable 'data-types_modeled' append oid ' ' close 
			variable 'reported_elements' append oid ' ' close 
			variable 'type_name' write type%minus%upper close
			variable $modelOid append
				_data-type_content();
			close
		endif
	endif
	do :Unit {
		if not ($data-types_modeled =~ oid%wildsp) And not ($reported_elements =~ oid%wildsp) then
			variable 'data-types_modeled' append oid ' '	close
			variable 'reported_elements' append oid ' ' close 
			variable 'type_name' write type%minus%upper close
			variable $modelOid append
				_unit_details()
			close
			do :Quantity {	_quantity_element() }
			do :UnitReference {
				if not ($data-types_modeled =~ oid%wildsp) then
					variable 'data-types_modeled' append oid ' '	close 
					if not $reported_elements =~ oid%wildsp then
						variable 'reported_elements' append oid ' ' close 
						variable 'type_name' write type%minus%upper close
						variable $modelOid append
							_unit_details()
						close
						do :Quantity {	_quantity_element() }
					endif
				endif
			}
		endif 
	}
	do :BaseRangeable {
		if not ($data-types_modeled =~ oid%wildsp) and not ($reported_elements =~ oid%wildsp) then
			variable 'data-types_modeled' append oid ' '	close 
			variable 'reported_elements' append oid ' ' close 
			variable 'type_name' write type%minus%upper close
			variable $modelOid append
				_baseRangeable_details()
			close
		endif
	}
	
	/* Navigate to the next package level */
	if type = 'Package' then
		if decompositions then
			do decompositions { _create_data-types() }
		endif
	endif
}</report>
				<report>_Cycle()
do ~(Realized | Start | Parent ) {
	do .(*) { $this = oid }
	do ~(RealizedBy | End | Child ).() {
		if oid = $this; then
			'Error: cycle '
		endif
	}
}</report>
				<report>Report '_data-type type'
if :Type &lt;&gt; '' then
	do :Type {
		if not $typesAccessedFromLevels =~ oid%wildsp then
			variable 'typesAccessedFromLevels' append oid ' ' close
			subreport '_data-type type' run	
			if type = 'CompositeDatatype' then
				do :DatatypePrototypes { subreport '_data-type type' run	}
			endif
		endif
	}
endif
endreport</report>
				<report>_data-types()
/* Reporting the data-types */
foreach .(&lt;_EADatatype | FunctionClientServerInterface) 
{	_data-type_details() }</report>
				<report>_data-type_content()
/* Reports the data-type content */
if $EAXMLoids =~oid%wildsp then
	local 'DTName' write :Short name; close
	local 'DTShortName' write @DTName%toShortName close
	local 'nameValue' write :Name;%xml close 
	'&lt;!-- ' $type_name ' name: ' 
	if @nameValue; then
		@nameValue ' (' @DTShortName ')'
	else
		@DTShortName
	endif
	' --&gt;' newline 
	'&lt;!-- path: ' variable oid '_path' read ' --&gt;' newline 
	'&lt;' $type_name ' UUID="' :__UUID '"&gt;' newline 
	'&lt;SHORT-NAME&gt;' @DTShortName '&lt;/SHORT-NAME&gt;' newline
	if @nameValue &lt;&gt; '' then
		'&lt;NAME&gt;' :Name;%xml '&lt;/NAME&gt;' newline
	endif
	subreport '_description' run
	subreport '_' type run 
	'&lt;/' $type_name '&gt;' newline
endif

if :Type; then
	do :Type 
	{	if not $reported_elements =~ oid%wildsp then
			variable 'reported_elements' append oid ' ' close
			variable 'type_name' write type%minus%upper close
			_data-type_content();
		endif
	}
endif

if type = 'CompositeDatatype' then
	do :DatatypePrototypes 
	{ 	if :Type; then
			do :Type { _data-type_details()	}
		endif
	}
endif
</report>
				<report>_data-type_details()
/* Reporting the data-type details */
if not $reported_elements =~ oid%wildsp then
	variable 'reported_elements' append oid ' ' close
	variable 'type_name' write type%minus%upper close
	if $type_name = 'FUNCTION-CLIENT-SERVER-INTERFACE' then
		subreport '_ClientServerInterfaceDetails' run
	else
		_data-type_content();
	endif

	/* Report the Unit definition */
	do :Unit { _unit() }

	/* Report the BaseRangeable definition */
	do :BaseRangeable { _baseRangeable() }
endif
</report>
				<report>_dataTypeDetails()
newline; newline;
do :() where id &lt;&gt; id;1 and type &lt;&gt; '__UUID' and type &lt;&gt; 'Description' 
{
	containers ': ' id newline
}</report>
				<report>Report '_dataTypeReference'
/* Generates the typeReference for the data-types */
do :Type 
{	'&lt;TYPE-TREF TYPE="' type;%minus%upper '"&gt;' variable oid '_path' read '&lt;/TYPE-TREF&gt;' newline }
endreport</report>
				<report>Report '_decomposed type information'
if (type = 'AnalysisFunctionType') or (type = 'DesignFunctionType') or (type = 'HardwareComponentType') then
	/* Reported only if type is among the typesAccessedFromLevels and it is not among the packaged_types, ie. reported earlier */
	if ($typesAccessedFromLevels =~ oid%wildsp) AND not ($packaged_types =~ oid%wildsp) then 
		subreport '_' type run
	endif
endif
endreport</report>
				<report>_DepDiagramRepr()
'		&lt;diagram displayGrid="false" grid="10,10" timeStamp="" useGrid="true" xmlns="http://www.metacase.com/gxlGOPRRRepr"&gt;
			&lt;graph href="#_dep' oid '" xmlns="http://www.metacase.com/gxlGOPRR"&gt;&lt;/graph&gt;
			&lt;objectRepr id="_r_pt' oid '" place="100,200"&gt;
				&lt;object href="#_pt' oid '" xmlns="http://www.metacase.com/gxlGOPRR"&gt;&lt;/object&gt;
			&lt;/objectRepr&gt;' newline
@y='1'
do $modes {
'			&lt;objectRepr id="_r' id%xml '" place="500,' @y++ '00"&gt;
				&lt;object href="#_' id%xml '" xmlns="http://www.metacase.com/gxlGOPRR"&gt;&lt;/object&gt;
			&lt;/objectRepr&gt;' newline
}
do $modes {
	foreach .(Out* | ServerPort) {
		'			&lt;bindingRepr isStraight="true" oid="_br' id;1 oid '" place="300,200"&gt;
				&lt;binding href="#_b'id;1 oid'" xmlns="http://www.metacase.com/gxlGOPRR"&gt;&lt;/binding&gt;
				&lt;connectionRepr id="1"&gt;
					&lt;objectRepr href="#_r' id;1 '"&gt;&lt;/objectRepr&gt;
				&lt;/connectionRepr&gt;
				&lt;connectionRepr id="2"&gt;
					&lt;objectRepr href="#_r_pt' oid;2 '"&gt;&lt;/objectRepr&gt;
				&lt;/connectionRepr&gt;
			&lt;/bindingRepr&gt;' newline 
	}
}
'		&lt;/diagram&gt;
' </report>
				<report>_DepGraph()
'	&lt;graph id="_dep'oid'" type="Graph_Dependability_sysadmin_3509190231"&gt;
		&lt;slot name="Short name"&gt;
			&lt;value&gt;
				&lt;string&gt;' :FunctionName%xml '&lt;/string&gt;
			&lt;/value&gt;
		&lt;/slot&gt;
		&lt;slot name="Name"&gt;
			&lt;value&gt;
				&lt;string&gt;' :Name%xml '&lt;/string&gt;
			&lt;/value&gt;
		&lt;/slot&gt;		
		&lt;slot name="Description"&gt;
			&lt;value&gt;
				&lt;text&gt;This dependability diagram is originally generarated from ' type ' ' :FunctionName%xml '.' 
				:Description%xml '&lt;/text&gt;
			&lt;/value&gt;
		&lt;/slot&gt; 
		&lt;object id="_pt'oid'" type="Object_EAType_sysadmin_3541158109"&gt;
					'
			_ErrorGraph()
'		&lt;/object&gt;
'
		_FaultFailures()
		_FailureBindings() 
		_DepDiagramRepr() 
'	&lt;/graph&gt;
'</report>
				<report>Report '_description'
/* Generating the OWNED-COMMENTS section */
if :Description; then 
	'&lt;OWNED-COMMENTS&gt;' newline
	'&lt;COMMENT&gt;' newline
	'&lt;BODY&gt;' :Description;%xml '&lt;/BODY&gt;' newline
	'&lt;/COMMENT&gt;' newline
	'&lt;/OWNED-COMMENTS&gt;' newline
endif 
endreport</report>
				<report>_DiagramBehaviorRepr()
'		&lt;diagram displayGrid="false" grid="10,10" timeStamp="" useGrid="true" xmlns="http://www.metacase.com/gxlGOPRRRepr"&gt;
			&lt;graph href="#_'oid '" xmlns="http://www.metacase.com/gxlGOPRR"&gt;&lt;/graph&gt;' newline
			foreach .(InFlowPort | ServerPort | OutFlowPort | ClientPort ) {
			'			&lt;objectRepr id="_r' oid '" place="' x ',' y '"&gt;
				&lt;object href="#_' oid'" xmlns="http://www.metacase.com/gxlGOPRR"&gt;&lt;/object&gt;
			&lt;/objectRepr&gt;' newline
			}
			/* add operators */
			foreach .(OutFlowPort | ServerPort ) {
				if x &lt; '170' num then 
					@place = '200' /* to keep added operator in diagram */
				else
					local 'place' write x '-150' close /* left from outport */
				endif	
				'			&lt;objectRepr id="_rOper' oid '" place="' math @place evaluate ',' y '"&gt;
					&lt;object href="#_Oper_' oid'" xmlns="http://www.metacase.com/gxlGOPRR"&gt;&lt;/object&gt;
				&lt;/objectRepr&gt;' newline
			}

/* operators to outports */
foreach .(OutFlowPort | ServerPort) {
	'			&lt;bindingRepr isStraight="true" oid="_br' oid '" place="300,200"&gt;
			&lt;binding href="#_b' oid '" xmlns="http://www.metacase.com/gxlGOPRR"&gt;&lt;/binding&gt;
				&lt;connectionRepr id="1"&gt;
					&lt;objectRepr href="#_rOper' oid '"&gt;&lt;/objectRepr&gt;&lt;/connectionRepr&gt;
				&lt;connectionRepr id="2"&gt;
					&lt;objectRepr href="#_r' oid '"&gt;&lt;/objectRepr&gt;
				&lt;/connectionRepr&gt;
			&lt;/bindingRepr&gt;' newline 
}

/* inport to operators */
foreach .(OutFlowPort | ServerPort) {
	foreach .(InFlowPort | ClientPort) {
		'			&lt;bindingRepr isStraight="true" oid="_br' oid '_' oid;1 '" place="300,200"&gt;
				&lt;binding href="#_ob' oid '_' oid;1 '" xmlns="http://www.metacase.com/gxlGOPRR"&gt;&lt;/binding&gt;
				&lt;connectionRepr id="1"&gt;
					&lt;objectRepr href="#_r' oid '"&gt;&lt;/objectRepr&gt;&lt;/connectionRepr&gt;
				&lt;connectionRepr id="2"&gt;
					&lt;objectRepr href="#_rOper' oid;1 '"&gt;&lt;/objectRepr&gt;
				&lt;/connectionRepr&gt;
			&lt;/bindingRepr&gt;' newline 
	}
}
'		&lt;/diagram&gt;
' </report>
				<report>_DiagramRepr()
'		&lt;diagram displayGrid="false" grid="10,10" timeStamp="" useGrid="true" xmlns="http://www.metacase.com/gxlGOPRRRepr"&gt;
			&lt;graph href="#_'oid '" xmlns="http://www.metacase.com/gxlGOPRR"&gt;&lt;/graph&gt;' newline
			foreach .(InFlowPort | ServerPort | OutFlowPort | ClientPort | *FunctionPrototype) {
			'			&lt;objectRepr id="_r' oid '" place="' x ',' y '"'
				if type =~ '*FunctionPrototype'; then _error_function_scale() endif
			'&gt;
				&lt;object href="#_' oid'" xmlns="http://www.metacase.com/gxlGOPRR"&gt;&lt;/object&gt;
			&lt;/objectRepr&gt;' newline
			}
			foreach  &gt;(Flow | ClientServerInterface ) {
				_FlowDirected()
				if $directed = 'T' then /* reports only directed flows as error model expects direction */
					'			&lt;bindingRepr isStraight="true" oid="_br' oid '" place="' x ',' y '"&gt;
					&lt;binding href="#_b' oid '" xmlns="http://www.metacase.com/gxlGOPRR"&gt;&lt;/binding&gt;
					&lt;connectionRepr id="1"' 
					do ~(Client | ServerPort | InFlow | OutFlowPort ) {
						do .() {
							_objTargetOffset(x;1, y;1) '&gt;' newline
							'					&lt;objectRepr href="#_r' oid '"&gt;&lt;/objectRepr&gt;' newline
						}
					}
					'				&lt;/connectionRepr&gt;
					&lt;connectionRepr id="2"'
					do ~(ClientPort | Server | InFlowPort | OutFlow ) {
						do .() {
							_objTargetOffset(x;1, y;1) '&gt;' newline
						'					&lt;objectRepr href="#_r' oid '"&gt;&lt;/objectRepr&gt;' newline
						}
					}
					'				&lt;/connectionRepr&gt;
					&lt;/bindingRepr&gt;' newline 
				endif
			}
'		&lt;/diagram&gt;
' </report>
				<report>_duplicatedObjects()
/* Finding the duplicated objects, where the short names are identical */
@prev = ' '
foreach .(^Comment | ^Operator) orderby :Short name;
{	if :Short name; = @prev then 
		:Short name; newline
	else
		@prev = :Short name;
	endif
}</report>
				<report>_duplicatedRelationships()
/* Finding the duplicated relationships, where the short names are identical */
@prev = ' '
foreach &gt;(^Comment) where :Short name; &lt;&gt; '' orderby :Short name;
{	if :Short name; = @prev then 
		:Short name; newline
	else
		@prev = :Short name;
	endif
}</report>
				<report>_EANumerical()
/* Reporting the EANumerical information */
'&lt;MAX&gt;' :Max '&lt;/MAX&gt;' newline 
'&lt;MIN&gt;' :Min '&lt;/MIN&gt;' newline
do :Unit; { '&lt;UNIT-REF TYPE="' type%minus%upper '"&gt;' variable oid '_path' read '&lt;/UNIT-REF&gt;' newline } 
</report>
				<report>Report '_EAST-ADL Dictionary in HTML'
'&lt;a name="' oid '"&gt;&lt;/a&gt;' newline
'&lt;h2&gt;Graph documentation: ' id%xml '&lt;/h2&gt;' newline
do :() {
	'&lt;b&gt;' to '%xml' translate containers endto ': &lt;/b&gt;'
	id%xml '&lt;br /&gt;' newline
}
@matrix = 'F'
foreach .() {
	if x = '0' or y = '0' then @matrix = 'T' endif
}
if @matrix = 'F' then
	filename subreport '_default directory' run subreport '_id and oid' run '.png' print
	'&lt;img src="' subreport '_id and oid' run '.png" border="0" usemap="#' subreport '_default directory' run subreport '_id and oid' run '.png"&gt;&lt;br /&gt;' newline
else
	_MatrixToHTMLTable()
endif
foreach .() 
{ 
	'&lt;a name="' oid '"&gt;&lt;/a&gt;'
	'&lt;h3&gt;' subreport '__id and type' run '&lt;/h3&gt;'
	'Properties:'
	subreport '__Table HTML' run
	_propsDeeplyInHTML()
	do decompositions 
	{	'&lt;tr&gt;&lt;th align="left" bgcolor="#F2F2F2"&gt;' type%xml '&lt;/th&gt;&lt;td&gt;'
		'&lt;a href="' subreport '_id and oid' run '.html"&gt;' id '&lt;/a&gt;' 
		'&lt;/td&gt;&lt;/tr&gt;' newline		
		subreport '_EAST-ADL graphs in HTML' run		 
	}
	do explosions 
	{	'&lt;tr&gt;&lt;th align="left" bgcolor="#F2F2F2"&gt;' type '&lt;/th&gt;&lt;td&gt;'
		'&lt;a href="' subreport '_id and oid' run '.html"&gt;' id '&lt;/a&gt;'
		'&lt;/td&gt;&lt;/tr&gt;' newline				
		subreport '_EAST-ADL graphs in HTML' run		 		
	}
	'&lt;/table&gt;&lt;br /&gt;' newline
	'&lt;hr /&gt;' newline
}
endreport</report>
				<report>Report '_EAST-ADL graphs in HTML'
if not $Graphs =~ oid%wildsp then
	variable 'Graphs' append oid ' ' close
	filename subreport '_default directory' run subreport '_id and oid' run '.html' encoding 'UTF-8' write
		'&lt;html&gt;&lt;head&gt;' newline
		'&lt;meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /&gt;'
		subreport '__stylesheet in HTML' run
		'&lt;/head&gt;&lt;body&gt;'
		'&lt;a href="' $starting_graph '.html"&gt;Root package&lt;/a&gt;&lt;br /&gt;'		
		subreport '_EAST-ADL Dictionary in HTML' run
		'&lt;a href="' $starting_graph '.html"&gt;Root package&lt;/a&gt;&lt;br /&gt;'				
		'&lt;/body&gt;&lt;/html&gt;'
	close
endif
endreport</report>
				<report>Report '_EAST-ADL specific translators'
/* EAST-ADL specific translators */
to '%port_to_role
$_To $In
$_From $Out
'
endto 

/* Removing the extra underscores (used to create the valid shortnames) */
to '%toShortName
/__+/ $_'
endto

/* $HardwareArchitecture $Hardware\-Design\-Architecture is not needed anymore since name has changed*/
to '%minus
$ActuatorType $Actuator
$AllocationMatrix $Allocation
$AnalysisFunctionPrototype $Analysis\-Function\-Prototype
$AnalysisFunctionType $Analysis\-Function\-Type
$ArrayDatatype $Array\-Datatype
$BasicSoftwareFunctionType $Basic\-Software\-Function\-Type
$BehaviorConstraintType $Behavior\-Constraint\-Type
$ClientPort $Function\-Client\-Server\-Port
$ServerPort $Function\-Client\-Server\-Port
$CommunicationHardwarePin_From $Communication\-Hardware\-Pin
$CommunicationHardwarePin_To $Communication\-Hardware\-Pin
$CommunicationHardwarePinInOut $Communication\-Hardware\-Pin
$CommunicationHardwarePinIn $Communication\-Hardware\-Pin
$CommunicationHardwarePinOut $Communication\-Hardware\-Pin
$CompositeDatatype $Composite\-Datatype
$DerivedFrom $Derived\-From
$DeriveRequirement $Derive\-Requirement
$DesignFunctionPrototype $Design\-Function\-Prototype
$DesignFunctionType $Design\-Function\-Type
$EABoolean $EA\-Boolean
$EADatatypePrototype $EA\-Datatype\-Prototype
$EANumerical $EA\-Numerical
$EAString $EA\-String
$ElectricalComponentType $Electrical\-Component
$ErrorModel $Error\-Model\-Type
$FaultFailure $Fault\-Failure
$FeatureFlaw $Feature\-Flaw
$FunctionalAnalysisArchitecture $Functional\-Analysis\-Architecture
$FunctionBehavior $Function\-Behavior
$FunctionTrigger $Function\-Trigger
$FunctionConnector $Function\-Connector
$FunctionalDesignArchitecture $Functional\-Design\-Architecture
$FunctionalDevice $Functional\-Device
$FunctionClientServerInterface $Function\-Client\-Server\-Interface
$HardwareComponentPrototype $Hardware\-Component\-Prototype
$HardwareComponentType $Hardware\-Component\-Type
$HardwareConnector $Hardware\-Connector
$HardwareFunctionType $Hardware\-Function\-Type
$HardwarePortConnector $Hardware\-Port\-Connector
$HazardousEvent $Hazardous\-Event
$InFlowPort $Function\-Flow\-Port
$InOutFlowPort $Function\-Flow\-Port
$IOHardwarePinInOut $IO\-Hardware\-Pin
$IOHardwarePinIn $IO\-Hardware\-Pin
$IOHardwarePinOut $IO\-Hardware\-Pin
$IOHardwarePin_From $IO\-Hardware\-Pin
$IOHardwarePin_To $IO\-Hardware\-Pin
$LocalDeviceManager $Local\-Device\-Manager
$ModeGroup $Mode\-Group
$NodeType $Node
$OutFlowPort $Function\-Flow\-Port
$OperationalSituation $Operational\-Situation
$PowerHardwarePinInOut $Power\-Hardware\-Pin
$PowerHardwarePinIn $Power\-Hardware\-Pin
$PowerHardwarePinOut $Power\-Hardware\-Pin
$PowerHardwarePin_From $Power\-Hardware\-Pin
$PowerHardwarePin_To $Power\-Hardware\-Pin
$PowerPort $Function\-Power\-Port
$QualityRequirement $Quality\-Requirement
$RangeableValueType $Rangeable\-Value\-Type
$RealizedBy $Realized\-By
$RefinedBy $Refined\-By
$RefinedRequirement $Refined\-Requirement
$RequirementsLink $Requirements\-Link
$SafetyGoal $Safety\-Goal
$SatisfiedBy $Satisfied\-By
$SatisfiedRequirement $Satisfied\-Requirement
$SensorType $Sensor
$UseCase $Use\-Case
$VehicleFeatureModel $Feature\-Model
$VehicleFeature $Vehicle\-Feature

'
endto

to '%legal
$ActuatorType $Actuator
$Boolean $EA\-BOOLEAN
$CommunicationHardwarePinIn $CommunicationHWPinIn
$CommunicationHardwarePinOut $CommunicationHWPinOut
$EAString $EA\-STRING
$ElectricalComponentType $ElectricalComponent
$Float $EA\-FLOAT
$Flow $FUNCTION\-CONNECTOR
$Integer $EA\-INTEGER
$RangeableValueType $RANGEABLE\-VALUE\-TYPE
$NodeType $Node
$SensorType $Sensor
'
endto

to '%relationships
$Flow $Function\-Connector
$Power $Function\-Connector
$ClientServerInterface $Function\-Connector
$HardwareConnector $Hardware\-Connector
'
endto

endreport</report>
				<report>_EAST-ADL_nameTranslator()
to '%NoType
$Type $
'
endto 
</report>
				<report>_EAXML_CheckClientServerInterfaceTypesDefined()
foreach .FunctionClientServerInterface {
	do :Operations {
		do :Arguments {
			if :Type = '' then
				_reportWarnings()
				'Warning: Argument ' id ' has undefined type in operation ' id;1 ' for ' id;3 newline					
			else	
				do :Type {
					if not $dataTypesDefined =~ oid%wildsp then
						_reportWarnings()
						'Warning: Datatype ' id ' is not defined in a package, but used in port ' id;4 '''s type ' id;3 ' as argument for operation ' id;2 newline					
					endif
				}
			endif
		}
		do :Return {
			if :Type = '' then
				_reportWarnings()
				'Warning: Return ' id ' has undefined type in operation ' id;1 ' for ' id;3 newline						
			else	
				do :Type {
					if not $dataTypesDefined =~ oid%wildsp then
						_reportWarnings()
						'Warning: Datatype ' id ' is not defined in a package, but used in port ' id;4 '''s type ' id;3 ' as return for operation ' id;2 newline					
					endif
				}
			endif
		}
	}
}</report>
				<report>_EAXML_CheckDataTypesInFunctionTypes()
/* Checks if datetypes are defined for function types, both analysis and design functions */
/* Types for FlowPorts and PowerPorts */
/* Types for arguments and returns in operations of ClientServerInterface for Client and Server ports */

foreach .(*FlowPort | PowerPort) 
{	do :Type 
	{	if not $dataTypesDefined =~ oid%wildsp then
			_reportWarnings()
			'Warning: &lt;' type '&gt; ' id ' for port ' id;1 ' is not defined in a package' newline
		endif
	}
}

foreach .(ClientPort | ServerPort) 
{	do :Type 
	{	if not $dataTypesDefined =~ oid%wildsp then
			_reportWarnings()
			'Warning: Interface ' id ' is not defined in a package, but used in port ' id;1 newline					
		endif
	}
}

foreach .(*Prototype) 
{	do decompositions 
	{	if not $typesChecked =~ oid%wildsp then
			variable 'typesChecked' append oid ' ' close
			_EAXML_CheckDataTypesInFunctionTypes()
		endif
	}
}</report>
				<report>_EAXML_CheckIfArrayDataTypeDefined()
foreach .ArrayDatatype {
	if not :Type; then
		_reportWarnings()
		'Warning: ' id ' &lt;' type '&gt; has undefined type in ' id;1 ' &lt;' type;1 '&gt;' newline					
	else	
		do :Type {
			if not $visited =~ oid%wildsp then
				variable 'visited' append oid ' ' close
				if not $dataTypesDefined =~ oid%wildsp then
					_reportWarnings()
					'Warning: Type ' id ' is not defined in a package for ArrayDatatype ' id;1  newline			
				endif
			endif
		}
	endif
}
</report>
				<report>_EAXML_CheckIfCompositeDataTypesTypeDefined()
foreach .CompositeDatatype {
	do :DatatypePrototypes {
		if :Type = '' then
			_reportWarnings()
			'Warning: ' id ' &lt;' type '&gt; has undefined type in CompositeDatatype ' id;1 ' &lt;' type;1 '&gt;' newline					
		else	
			do :Type {
				if not $visited =~ oid%wildsp then
					variable 'visited' append oid ' ' close
					if not $dataTypesDefined =~ oid%wildsp then
						_reportWarnings()
						'Warning: ' id;2 ' &lt;' type;2 '&gt; has a prototype ' id;1 ' with type ' id ' that is not defined in a package' newline
					endif
				endif
			}
		endif
	}
}
</report>
				<report>_EAXML_CheckIfDatatypesDefined()
foreach .(*Constraint) 
{
	/* Minimum property field */
	do :Minimum 
	{
		@myPropertyType = 'Minimum'
		_testAndReport(@myPropertyType)
	}

	/* Maximum property field */
	do :Maximum 
	{
		@myPropertyType = 'Maximum'
		_testAndReport(@myPropertyType)
	}

	/* Tolerance property field */	
	do :Tolerance 
	{
		@myPropertyType = 'Tolerance'
		_testAndReport(@myPropertyType)
	}

	/* Length property field */
	do :Length 
	{
		@myPropertyType = 'Length'
		_testAndReport(@myPropertyType)
	}

	/* Lower property field */
	do :Lower 
	{
		@myPropertyType = 'Lower'
		_testAndReport(@myPropertyType)
	}

	/* Upper property field */
	do :Upper 
	{
		@myPropertyType = 'Upper'
		_testAndReport(@myPropertyType)
	}

	/* Period property field */
	do :Period 
	{
		@myPropertyType = 'Period'
		_testAndReport(@myPropertyType)
	}

	/* Jitter property field */
	do :Jitter 
	{
		@myPropertyType = 'Jitter'
		_testAndReport(@myPropertyType)
	}

	/* Offset property field */
	do :Offset 
	{
		@myPropertyType = 'Offset'
		_testAndReport(@myPropertyType)
	}
}

/* Type property field */
foreach .(EventFunctionFlowPort | EventFunctionClientServerPort) 
{
	do :Type
	{
		@myPropertyType = 'Type'
		_testAndReport(@myPropertyType)
	}
}</report>
				<report>_EAXML_CheckIfEANumericalDataTypeDefined()
foreach .EANumerical {
	do :Unit {
		if not $visited =~ oid%wildsp then
			variable 'visited' append oid ' ' close
			if not $dataTypesDefined =~ oid%wildsp then
				_reportWarnings()
				'Warning: Unit ' id ' is not defined in a package for EANumerical ' id;1  newline			
			endif
			_EAXML_CheckUnitDefined()
		endif
	}
}
</report>
				<report>_EAXML_CheckIfEventChainsDefined()
foreach .(EventChain) 
{
	do :Segment 
	{
		if not $eventChains =~ oid%wildsp then
			_reportWarnings()
			'Warning: ' id;1 ' &lt;' type;1 '&gt; has Segment property defined as ' id ', which is not defined in anywhere in this hierarchy.' newline			
		endif
	}
}

foreach .(*Constraint) 
{
	do :Scope 
	{
		if not $eventChains =~ oid%wildsp then
			_reportWarnings()
			'Warning: ' id;1 ' &lt;' type;1 '&gt; has Scope property defined as ' id ', which is not defined in anywhere in this hierarchy.' newline			
		endif
	}
}</report>
				<report>_EAXML_CheckIfEventsDefined()
/* Checking if all the events were defined */
foreach .(*Constraint) 
{
	do :Event 
	{
		if not $events =~ oid%wildsp then
			_reportWarnings()
			'Warning: ' id;1 ' &lt;' type;1 '&gt; has Event property defined as ' id ' &lt;' type '&gt;, which is not defined in anywhere in this hierarchy.' newline			
		endif
	}
	
	do :Source 
	{
		if not $events =~ oid%wildsp then
			_reportWarnings()
			'Warning: ' id;1 ' &lt;' type;1 '&gt; has Source property defined as ' id ' &lt;' type '&gt;, which is not defined in anywhere in this hierarchy.' newline			
		endif
	}

	do :Target 
	{
		if not $events =~ oid%wildsp then
			_reportWarnings()
			'Warning: ' id;1 ' &lt;' type;1 '&gt; has Target property defined as ' id ' &lt;' type '&gt;, which is not defined in anywhere in this hierarchy.' newline			
		endif
	}
	
	do :Start 
	{
		if not $events =~ oid%wildsp then
			_reportWarnings()
			'Warning: ' id;1 ' &lt;' type;1 '&gt; has Start property defined as ' id ' &lt;' type '&gt;, which is not defined in anywhere in this hierarchy.' newline			
		endif
	}

	do :Stop 
	{
		if not $events =~ oid%wildsp then
			_reportWarnings()
			'Warning: ' id;1 ' &lt;' type;1 '&gt; has Stop property defined as ' id ' &lt;' type '&gt;, which is not defined in anywhere in this hierarchy.' newline			
		endif
	}
	
	do :Preemption 
	{
		if not $events =~ oid%wildsp then
			_reportWarnings()
			'Warning: ' id;1 ' &lt;' type;1 '&gt; has Preemption property defined as ' id ' &lt;' type '&gt;, which is not defined in anywhere in this hierarchy.' newline			
		endif
	}

	do :Resume 
	{
		if not $events =~ oid%wildsp then
			_reportWarnings()
			'Warning: ' id;1 ' &lt;' type;1 '&gt; has Resume property defined as ' id ' &lt;' type '&gt;, which is not defined in anywhere in this hierarchy.' newline			
		endif
	}
}</report>
				<report>_EAXML_CheckIfFaultFailuresDefined()
/* Checking if all the FaultFailures were defined */
foreach .(EventFaultFailure) 
{
	do :FaultFailure
	{
		if not $faultfailures =~ oid%wildsp then
			_reportWarnings()
			'Warning: ' id;1 ' &lt;' type;1 '&gt; has FaultFailure property defined as ' id ' &lt;' type '&gt;, which is not defined in anywhere in this hierarchy.' newline			
		endif
	}
}</report>
				<report>_EAXML_CheckIfFeatureFlawsDefined()
/* Checking if all the FeatureFlaws were defined */
foreach .(EventFeatureFlaw) 
{
	do :FeatureFlaw
	{
		if not $featureflaws =~ oid%wildsp then
			_reportWarnings()
			'Warning: ' id;1 ' &lt;' type;1 '&gt; has FeatureFlaw property defined as ' id ' &lt;' type '&gt;, which is not defined in anywhere in this hierarchy.' newline			
		endif
	}
}</report>
				<report>_EAXML_CheckIfFeaturesDefined()
/* Checking if all the Features were defined */
foreach .(Item) 
{
	do :Vehicle features
	{
		if not $features =~ oid%wildsp then
			_reportWarnings()
			'Warning: ' id;1 ' &lt;' type;1 '&gt; has VehicleFeatures property defined as ' id ' &lt;' type '&gt;, which is not defined in anywhere in this hierarchy.' newline			
		endif
	}
}</report>
				<report>_EAXML_CheckIfFunctionsDefined()
foreach .(EventFunction) 
{
	do :Function 
	{
		if not $functionPrototypesDefinedInThisHierarchy =~ oid%wildsp then
			_reportWarnings()
			'Warning: ' id;1 ' &lt;' type;1 '&gt; has Function property defined as ' id ', but is not defined in anywhere in this hierarchy.' newline			
		endif
	}
}</report>
				<report>_EAXML_CheckIfFunctionTypesDefined()
/* TimingModel object types */
foreach .(EventFunction) 
{
	do :FunctionType 
	{
		if not decompositions then
			_reportWarnings()
			'Warning: ' id;1 ' &lt;' type;1 '&gt; has Function property defined as ' id '.' newline			
		else
			do decompositions
			{
				if not $functionTypesDefinedInThisHierarchy =~ oid%wildsp then
					_reportWarnings()
					'Warning: ' id;1 ' &lt;' type;1 '&gt; has FunctionType property defined as ' id ', but is not defined in anywhere in this hierarchy.' newline			
				endif
			}
		endif
	}
}

/* BehaviorGraph object types */
foreach .(FunctionTrigger | FunctionBehavior) 
{
	do :Function 
	{
		if not decompositions then
			_reportWarnings()
			'Warning: ' id;1 ' &lt;' type;1 '&gt; has Function property defined as ' id '.' newline			
		else
			do decompositions
			{
				if not $functionTypesDefinedInThisHierarchy =~ oid%wildsp then
					_reportWarnings()
					'Warning: ' id;1 ' &lt;' type;1 '&gt; has Function property defined as ' id ', but this Function is not defined in anywhere in this hierarchy.' newline
				endif
			}
		endif
	}

}</report>
				<report>_EAXML_CheckIfHazardousEventDefined()
_HazardEvent()</report>
				<report>_EAXML_CheckIfModesDefined()
foreach .(ModeEvent) 
{
	do :Start 
	{
		if not $modes =~ oid%wildsp then
			_reportWarnings()
			'Warning: ' id;1 ' &lt;' type;1 '&gt; has Start property defined as ' id ', which is not defined in any ModeGroup in this hierarchy.' newline			
		endif
	}
	do :End
	{
		if not $modes =~ oid%wildsp then
			_reportWarnings()
			'Warning: ' id;1 ' &lt;' type;1 '&gt; has End property defined as ' id ', which is not defined in any ModeGroup in this hierarchy.' newline	
		endif
	}
}

foreach .(*Constraint) 
{
	do :Mode 
	{
		if not $modes =~ oid%wildsp then
			_reportWarnings()
			'Warning: ' id;1 ' &lt;' type;1 '&gt; has Mode property defined as ' id ', which is not defined in any ModeGroup in this hierarchy.' newline			
		endif
	}
}

/* BehaviorGraph obejct types */
foreach .(FunctionTrigger | FunctionBehavior) 
{
	do :Mode 
	{
		if not $modes =~ oid%wildsp then
			_reportWarnings()
			'Warning: ' id;1 ' &lt;' type;1 '&gt; has Mode property defined as ' id ', but this ' id ' is not defined in any ModeGroup.' newline	
		endif
	}

}</report>
				<report>_EAXML_CheckIfPortsDefined()
/* Checking if all the ports (flow and client&amp;server) were defined */
foreach .(EventFunctionFlowPort) 
{
	do :Port 
	{
		if not $flowports =~ oid%wildsp then
			_reportWarnings()
			'Warning: ' id;1 ' &lt;' type;1 '&gt; has Port property defined as ' id ' &lt;' type '&gt;, which is not defined in anywhere in this hierarchy.' newline			
		endif
	}
}

foreach .(EventFunctionClientServerPort) 
{
	do :Port 
	{
		if not $cs_ports =~ oid%wildsp then
			_reportWarnings()
			'Warning: ' id;1 ' &lt;' type;1 '&gt; has Port property defined as ' id ' &lt;' type '&gt;, which is not defined in anywhere in this hierarchy.' newline			
		endif
	}
}</report>
				<report>_EAXML_CheckIfRangeableValueTypesDataTypeDefined()
foreach .RangeableValueType {
	do :BaseRangeable; {
		if not $visited =~ oid%wildsp then
			variable 'visited' append oid ' ' close
			if not $dataTypesDefined =~ oid%wildsp then
				_reportWarnings()
				'Warning: EANumerical ' id ' is not defined in a package for RangeableValueType ' id;1  newline
			endif
		endif
	}
}
</report>
				<report>_EAXML_CheckIfSafetyGoalsDefined()
_SafetyReq()
</report>
				<report>_EAXML_CheckUnitDefined()

	do :Quantity {
		if not $visited =~ oid%wildsp then
			variable 'visited' append oid ' ' close
			if not $dataTypesDefined =~ oid%wildsp then
				_reportWarnings()
				'Warning: Quantity ' id ' is not defined in a package for Unit ' id;1  newline			
			endif
		endif
	}
	do :UnitReference {
		if not $visited =~ oid%wildsp then
			variable 'visited' append oid ' ' close
			if not $dataTypesDefined =~ oid%wildsp then
				_reportWarnings()
				'Warning: UnitReference ' id ' is not defined in a package for Unit ' id;1  newline			
			endif
			_EAXML_CheckUnitDefined()
		endif
	}
</report>
				<report>_Enumeration()
/* Reporting the Enumeration information */
'&lt;IS-MULTI-VALUED&gt;' if :IsMultiValued; then  'true' else 'false' endif '&lt;/IS-MULTI-VALUED&gt;' newline 
'&lt;LITERALS&gt;'
	do :Literals { 
		newline 
		'&lt;ENUMERATION-LITERAL&gt;' newline 
		'&lt;SHORT-NAME&gt;' id;%xml '&lt;/SHORT-NAME&gt;' newline 
		'&lt;/ENUMERATION-LITERAL&gt;' 
	} 
	newline
'&lt;/LITERALS&gt;' newline </report>
				<report>_ErrorBehaviorInternal()
/* no incoming ports, have just internal error */
'		&lt;object id="_IFP' oid '" type="Object_InternalFaultPrototype_user_3548398352"&gt;
			&lt;slot name="Short name"&gt;
				&lt;value&gt;
					&lt;string&gt;':FunctionName '_VariableCorrupted&lt;/string&gt;
				&lt;/value&gt;
			&lt;/slot&gt;
		&lt;/object&gt;
'
foreach .(OutFlowPort | ServerPort) {
'		&lt;binding id="_b' oid '"&gt;
			&lt;relationship type="Relationship_reference_sysadmin_3524947284"&gt;&lt;/relationship&gt;
			&lt;connection id="1"&gt;
				&lt;role type="Role_FailureKind_sysadmin_3627561116"&gt;
					&lt;slot name="Short name"&gt;
						&lt;value&gt;
							&lt;string&gt;O&lt;/string&gt;
						&lt;/value&gt;
					&lt;/slot&gt;
					&lt;slot name="Name"&gt;
						&lt;value&gt;
							&lt;string&gt;' id '_OmissionFailure&lt;/string&gt;
						&lt;/value&gt;
					&lt;/slot&gt;
				&lt;/role&gt;
				&lt;object href="#_IFP' oid;1 '"&gt;&lt;/object&gt;
			&lt;/connection&gt;
			&lt;connection id="2"&gt;
				&lt;role type="Role_refer_to_sysadmin_3524947529"&gt;&lt;/role&gt;
				&lt;object href="#_' oid '"&gt;&lt;/object&gt;
			&lt;/connection&gt;
		&lt;/binding&gt;' newline
}

'		&lt;diagram displayGrid="false" grid="10,10" timeStamp="" useGrid="true" xmlns="http://www.metacase.com/gxlGOPRRRepr"&gt;
			&lt;graph href="#_'oid '" xmlns="http://www.metacase.com/gxlGOPRR"&gt;&lt;/graph&gt;' newline
foreach .(OutFlowPort | ServerPort ) {
'			&lt;objectRepr id="_r' oid '" place="' x ',' y '"&gt;
				&lt;object href="#_' oid'" xmlns="http://www.metacase.com/gxlGOPRR"&gt;&lt;/object&gt;
			&lt;/objectRepr&gt;' newline
}

/* internal faults */
'			&lt;objectRepr id="_rIFP' oid '" place="150,50"&gt;
				&lt;object href="#_IFP' oid '" xmlns="http://www.metacase.com/gxlGOPRR"&gt;&lt;/object&gt;
			&lt;/objectRepr&gt;' newline			

foreach  .(OutFlowPort | ServerPort) {
'			&lt;bindingRepr isStraight="true" oid="_br' oid '" place="300,200"&gt;
				&lt;binding href="#_b' oid '" xmlns="http://www.metacase.com/gxlGOPRR"&gt;&lt;/binding&gt;
				&lt;connectionRepr id="1"&gt;
					&lt;objectRepr href="#_rIFP' oid;1 '"&gt;&lt;/objectRepr&gt;
				&lt;/connectionRepr&gt;
				&lt;connectionRepr id="2"&gt;
					&lt;objectRepr href="#_r' oid '"&gt;&lt;/objectRepr&gt;
				&lt;/connectionRepr&gt;
			&lt;/bindingRepr&gt;' newline 
}
'		&lt;/diagram&gt;
' 
</report>
				<report>_ErrorBehaviorSingle()
/* one incoming port creating the error */
local 'inPort' write
	foreach .(InFlowPort | ClientPort) { oid } 
close

foreach .(OutFlowPort | ServerPort) {
'		&lt;binding id="_b' oid '"&gt;
			&lt;relationship type="Relationship_reference_sysadmin_3524947284"&gt;&lt;/relationship&gt;
			&lt;connection id="1"&gt;
				&lt;role type="Role_FailureKind_sysadmin_3627561116"&gt;
					&lt;slot name="Short name"&gt;
						&lt;value&gt;
							&lt;string&gt;O&lt;/string&gt;
						&lt;/value&gt;
					&lt;/slot&gt;
					&lt;slot name="Name"&gt;
						&lt;value&gt;
							&lt;string&gt;' id '_OmissionFailure&lt;/string&gt;
						&lt;/value&gt;
					&lt;/slot&gt;
				&lt;/role&gt;
				&lt;object href="#_' @inPort '"&gt;&lt;/object&gt;
			&lt;/connection&gt;
			&lt;connection id="2"&gt;
				&lt;role type="Role_refer_to_sysadmin_3524947529"&gt;&lt;/role&gt;
				&lt;object href="#_' oid '"&gt;&lt;/object&gt;
			&lt;/connection&gt;
		&lt;/binding&gt;' newline
}

'		&lt;diagram displayGrid="false" grid="10,10" timeStamp="" useGrid="true" xmlns="http://www.metacase.com/gxlGOPRRRepr"&gt;
			&lt;graph href="#_'oid '" xmlns="http://www.metacase.com/gxlGOPRR"&gt;&lt;/graph&gt;' newline
foreach .(OutFlowPort | ClientPort | InFlowPort | ServerPort) {
'			&lt;objectRepr id="_r' oid '" place="' x ',' y '"&gt;
				&lt;object href="#_' oid'" xmlns="http://www.metacase.com/gxlGOPRR"&gt;&lt;/object&gt;
			&lt;/objectRepr&gt;' newline
}
foreach  .(OutFlowPort | ServerPort) {
'			&lt;bindingRepr isStraight="true" oid="_br' oid '" place="300,200"&gt;
				&lt;binding href="#_b' oid '" xmlns="http://www.metacase.com/gxlGOPRR"&gt;&lt;/binding&gt;
				&lt;connectionRepr id="1"&gt;
					&lt;objectRepr href="#_r' @inPort '"&gt;&lt;/objectRepr&gt;
				&lt;/connectionRepr&gt;
				&lt;connectionRepr id="2"&gt;
					&lt;objectRepr href="#_r' oid '"&gt;&lt;/objectRepr&gt;
				&lt;/connectionRepr&gt;
			&lt;/bindingRepr&gt;' newline 
}
'		&lt;/diagram&gt;
' </report>
				<report>_ErrorBehaviourOperators()
/* generate default error logic for omission case now. Other defaults like comission, timing, value could be generated as well */

foreach .(OutFlowPort | ServerPort) {
'		&lt;object id="_Oper_'oid'" type="Object_Operator_sysadmin_3627560660"&gt;
			&lt;slot name="Operator"&gt;
				&lt;value&gt;
					&lt;string&gt;OR&lt;/string&gt;
				&lt;/value&gt;
			&lt;/slot&gt;
		&lt;/object&gt;
'
}
_ErrorFailureKindBinding()
_DiagramBehaviorRepr()</report>
				<report>_ErrorBindings()
foreach &gt;(Flow | ClientServerInterface) {
	_FlowDirected()
	if $directed = 'T' then /* reports only directed flows as error model expects direction */
'		&lt;binding id="_b' oid '" &gt;
			&lt;relationship type="Relationship_FaultFailure_sysadmin_3509188221"&gt;
				&lt;slot name="Short name"&gt;
					&lt;value&gt;
						&lt;string&gt;' :Short name%xml '&lt;/string&gt;
					&lt;/value&gt;
				&lt;/slot&gt;
				&lt;slot name="Name"&gt;
					&lt;value&gt;
						&lt;string&gt;' :Name%xml '&lt;/string&gt;
					&lt;/value&gt;
				&lt;/slot&gt;				
				&lt;slot name="ImmediatePropagation"&gt;
					&lt;value&gt;
						&lt;string&gt;True&lt;/string&gt; 
					&lt;/value&gt;
				&lt;/slot&gt;
				&lt;slot name="Description"&gt;
					&lt;property type="Property_2Description_user_3310902697"&gt;&lt;/property&gt;
					&lt;value&gt;
						&lt;text&gt;' :Description%xml '&lt;/text&gt;
					&lt;/value&gt;
				&lt;/slot&gt;
			&lt;/relationship&gt;
			&lt;connection id="1"&gt;' newline
			do ~(Client | ServerPort | InFlow | OutFlowPort ) {
				'				&lt;role type="Role_FailureOut_sysadmin_3509188624"&gt;&lt;/role&gt;' newline
				do .() {'					&lt;object href="#_' oid '"&gt;&lt;/object&gt;' newline }
				do #() {'					&lt;port href="#_' oid '"&gt;&lt;/port&gt;' newline }
			}
			'			&lt;/connection&gt;
			&lt;connection id="2"&gt;' newline
			do ~(ClientPort | Server | InFlowPort | OutFlow ) {
				'				&lt;role type="Role_FaultIn_sysadmin_3509188513"&gt;&lt;/role&gt;' newline
				do .() {'				&lt;object href="#_' oid '"&gt;&lt;/object&gt;' newline }
				do #() {'				&lt;port href="#_' oid '"&gt;&lt;/port&gt;' newline }
			}
'			&lt;/connection&gt;
		&lt;/binding&gt;
'
	endif
}</report>
				<report>_ErrorFailureKindBinding()

foreach .(OutFlowPort | ServerPort) {
'		&lt;binding id="_b' oid '"&gt;
			&lt;relationship type="Relationship_reference_sysadmin_3524947284"&gt;&lt;/relationship&gt;
			&lt;connection id="1"&gt;
				&lt;role type="Role_FailureKind_sysadmin_3627561116"&gt;
					&lt;slot name="Short name"&gt;
						&lt;value&gt;
							&lt;string&gt;O&lt;/string&gt;
						&lt;/value&gt;
					&lt;/slot&gt;
					&lt;slot name="Name"&gt;
						&lt;value&gt;
							&lt;string&gt;' id '_OmissionFailure&lt;/string&gt;
						&lt;/value&gt;
					&lt;/slot&gt;
				&lt;/role&gt;
				&lt;object href="#_Oper_' oid '"&gt;&lt;/object&gt;
			&lt;/connection&gt;
			&lt;connection id="2"&gt;
				&lt;role type="Role_refer_to_sysadmin_3524947529"&gt;&lt;/role&gt;
				&lt;object href="#_' oid '"&gt;&lt;/object&gt;
			&lt;/connection&gt;
		&lt;/binding&gt;' newline
}
foreach .(OutFlowPort | ServerPort) {
	foreach .(InFlowPort | ClientPort) {
'		&lt;binding id="_ob' oid '_' oid;1 '"&gt;
		&lt;relationship type="Relationship_reference_sysadmin_3524947284"&gt;&lt;/relationship&gt;
		&lt;connection id="1"&gt;
			&lt;role type="Role_referred_from_sysadmin_3524947545"&gt;&lt;/role&gt;
			&lt;object href="#_' oid'"&gt;&lt;/object&gt;
		&lt;/connection&gt;
		&lt;connection id="2"&gt;
			&lt;role type="Role_ConditionTo_sysadmin_3627560810"&gt;&lt;/role&gt;
			&lt;object href="#_Oper_' oid;1 '"&gt;&lt;/object&gt;
		&lt;/connection&gt;
	&lt;/binding&gt;' newline
	}
}</report>
				<report>_ErrorFailureOutPorts()
foreach .(OutFlowPort | ServerPort) {
'		&lt;object id="_' oid '" type="Object_FailureOutPort_sysadmin_3509188783"&gt;
			&lt;slot name="Short name"&gt;
				&lt;value&gt;
					&lt;string&gt;' :Short name%xml '&lt;/string&gt;
				&lt;/value&gt;
			&lt;/slot&gt;
			&lt;slot name="Name"&gt;
				&lt;value&gt;
					&lt;string&gt;' :Name%xml '&lt;/string&gt;
				&lt;/value&gt;
			&lt;/slot&gt;			
			&lt;slot name="Type"&gt;
				&lt;value&gt;' 
				if not type = 'ServerPort' then
					do :Type {
						if not $reportedDatatypes  =~ oid%wildsp then
							variable 'reportedDatatypes' append oid ' ' close
							subreport '_portdt' type run 
						else
							'&lt;object href="#_' oid '"&gt;&lt;/object&gt;' 
						endif
					}
				endif
'				&lt;/value&gt;
			&lt;/slot&gt;
		&lt;/object&gt;
'
}</report>
				<report>_ErrorFaultInPorts()
foreach .(InFlowPort | ClientPort) {
'		&lt;object id="_' oid '" type="Object_FaultInPort_sysadmin_3509188722"&gt;
			&lt;slot name="Short name"&gt;
				&lt;value&gt;
					&lt;string&gt;' :Short name%xml '&lt;/string&gt;
				&lt;/value&gt;
			&lt;/slot&gt;
			&lt;slot name="Name"&gt;
				&lt;value&gt;
					&lt;string&gt;' :Name%xml '&lt;/string&gt;
				&lt;/value&gt;
			&lt;/slot&gt;
			&lt;slot name="Type"&gt;
				&lt;value&gt;' newline
				if not type = 'ClientPort' then				
					do :Type {
						if not $reportedDatatypes  =~ oid%wildsp then
							variable 'reportedDatatypes' append oid ' ' close
							subreport '_portdt' type run 
						else
							'&lt;object href="#_' oid '"&gt;&lt;/object&gt;' newline
						endif
					}
				endif
'				&lt;/value&gt;
			&lt;/slot&gt;
		&lt;/object&gt;
'
}</report>
				<report>_ErrorGraph()

@root = 'T' /* does not have prototypes */
foreach .(*FunctionPrototype) {
	@root = 'F'
}

'	&lt;graph id="_'oid'" type="Graph_ErrorModel_sysadmin_3509186594"&gt;
		&lt;slot name="Short name"&gt;
			&lt;value&gt;
				&lt;string&gt;' :FunctionName%xml '&lt;/string&gt;
			&lt;/value&gt;
		&lt;/slot&gt;
		&lt;slot name="Name"&gt;
			&lt;value&gt;
				&lt;string&gt;' :Name%xml '&lt;/string&gt;
			&lt;/value&gt;
		&lt;/slot&gt;
		&lt;slot name="Description"&gt;
			&lt;value&gt;
				&lt;text&gt;':Description%xml '&lt;/text&gt;
			&lt;/value&gt;
		&lt;/slot&gt;' newline
		_ErrorFaultInPorts()
		_ErrorFailureOutPorts()		
		if @root = 'F' then
			_ErrorModelPrototypes()
			_ErrorBindings()	
			_DiagramRepr()
		else
			@addOperator = ''
			foreach .(InFlowPort | ClientPort) { @addOperator++%null }
			if @addOperator = '' then
				_ErrorBehaviorInternal()
			else 
				if @addOperator = '1' then
					_ErrorBehaviorSingle()
				else
					_ErrorBehaviourOperators() 	/* generate default error behavior logic */
				endif
			endif 
		endif
'	&lt;/graph&gt;
'</report>
				<report>_ErrorModelPrototypes()

foreach .(*FunctionPrototype) {
	'		&lt;object id="_'oid'" type="Object_InternalFault_sysadmin_3509186672"&gt;
			&lt;slot name="Short name"&gt;
				&lt;value&gt;
					&lt;string&gt;' :Short name%xml '&lt;/string&gt;
				&lt;/value&gt;
			&lt;/slot&gt;
			&lt;slot name="Name"&gt;
				&lt;value&gt;
					&lt;string&gt;' :Name%xml '&lt;/string&gt;
				&lt;/value&gt;
			&lt;/slot&gt;			
			&lt;slot name="Description"&gt;
				&lt;value&gt;
					&lt;text&gt;' :Description%xml '&lt;/text&gt;
				&lt;/value&gt;
			&lt;/slot&gt;
			'
		do decompositions { 
			if not $reportedGraphs =~ oid%wildsp then
				variable 'reportedGraphs' append oid ' ' close
				_ErrorGraph() 
			else
				'&lt;graph href="#_'oid'"&gt;&lt;/graph&gt;' newline
			endif
		}
	'		&lt;/object&gt;
	'
}
</report>
				<report>_error_function_scale()
/* Creates scaling from function prototypes */
if width &lt;&gt; '170' or height &lt;&gt; '120' then 
	' scale="'
	local 'xscale' write
		width '/170.0'
	close 
	math @xscale evaluate 
	','
	local 'yscale' write
		height '/120.0'
	close 
	math @yscale evaluate 
	'"'
endif</report>
				<report>_extendedCheckOutput_level1()
/* Report generating the graph name and type to the checking output */
if $extendedCheck = 'T' then
	'in the model ' id;1 ' &lt;' type;1 '&gt;'
endif</report>
				<report>_extendedCheckOutput_level2()
/* Report generating the graph name and type to the checking output */
if $extendedCheck = 'T' then
	if type &lt;&gt; 'Unit' then
		'in ' id;1 ' &lt;' type;1 '&gt; in the model ' id;2 ' &lt;' type;2 '&gt;'
	endif
	if type = 'Unit' then
		'in the model ' id;1 ' &lt;' type;1 '&gt;'
	endif
endif</report>
				<report>_extendedCheckOutput_level3()
/* Report generating the graph name and type to the checking output */
if $extendedCheck = 'T' then
	if type;3 &lt;&gt; '' then
		'in the model ' id;3 ' &lt;' type;3 '&gt;'
	else
		'in the model ' id;1 ' &lt;' type;1 '&gt;'
	endif	
endif</report>
				<report>_extendedCheckOutput_level4()
/* Report generating the graph name and type to the checking output */
if $extendedCheck = 'T' then
	if type;1 &lt;&gt; 'Package' then
		'in the model ' id;4 ' &lt;' type;4 '&gt;'
	else
		'in the model ' id;1 ' &lt;' type;1 '&gt;'
	endif
endif</report>
				<report>_FailureBindings()
do $modes {
	foreach .(Out* | ServerPort) {
'		&lt;binding id="_b' id;1%xml oid'"&gt;
			&lt;relationship type="Relationship_InstanceRef_sysadmin_3510315611"&gt;
			&lt;/relationship&gt;
			&lt;connection id="1"&gt;
				&lt;role type="Role_FaultFailure_sysadmin_3509613865"&gt;&lt;/role&gt;
				&lt;object href="#_' id;1 '"&gt;&lt;/object&gt;
			&lt;/connection&gt;
			&lt;connection id="2"&gt;
				&lt;role type="Role_ErrorModelPort_sysadmin_3509614493"&gt;&lt;/role&gt;
				&lt;object href="#_pt' oid;2 '"&gt;&lt;/object&gt;
				&lt;port href="#_' oid '"&gt;&lt;/port&gt;
			&lt;/connection&gt;
		&lt;/binding&gt;
'
	}
}</report>
				<report>_FaultFailures()
do $modes {
'		&lt;object id="_' id%xml '" type="Object_FaultFailure_sysadmin_3509192808"&gt;
			&lt;slot name="Short name"&gt;
				&lt;value&gt;
					&lt;string&gt;' id%xml 'Mode&lt;/string&gt;
				&lt;/value&gt;
			&lt;/slot&gt;
			&lt;slot name="Description"&gt;
				&lt;value&gt;
					&lt;text&gt;FaultFailure originally generated from ' type;1%xml ' ' :FunctionName;1%xml '.&lt;/text&gt;
				&lt;/value&gt;
			&lt;/slot&gt;
		&lt;/object&gt;' newline
}</report>
				<report>_faultFailures()
/* Generating the Fault-Failures */
'&lt;FAULT-FAILURES&gt;'
foreach .FaultFailure 
{	variable 'type_name' write type%minus%upper close
	local 'nameValue' write :Name;%xml close
	newline
	'&lt;!-- ' $type_name ' name: ' 
	if @nameValue &lt;&gt; '' then
		@nameValue ' (' :Short name; ')'
	else
		:Short name;
	endif
	' --&gt;' newline
	'&lt;!-- path: ' variable oid '_path' read ' --&gt;' newline
	'&lt;' $type_name ' UUID="' :__UUID '"&gt;' newline 
	'&lt;SHORT-NAME&gt;' :Short name; '&lt;/SHORT-NAME&gt;' newline
	if @nameValue &lt;&gt; '' then
		'&lt;NAME&gt;' @nameValue '&lt;/NAME&gt;' newline
	endif
	if :Text; then '&lt;TEXT&gt;' :Text%xml '&lt;/TEXT&gt;' newline endif
	do :FaultFailureValue 
	{	'&lt;FAULT-FAILURE-VALUE&gt;' 
		do :Type 
		{	newline
			'&lt;' type%minus%upper '-VALUE&gt;' newline
			'&lt;TYPE-TREF TYPE="' type%minus%upper '"&gt;' variable oid '_path' read '&lt;/TYPE-TREF&gt;' newline
			'&lt;VALUE&gt;' :Value;1 '&lt;/VALUE&gt;' newline
			'&lt;/' type%minus%upper '-VALUE&gt;' newline
		} 
		'&lt;/FAULT-FAILURE-VALUE&gt;' newline
	}
	'&lt;/' $type_name '&gt;'
}
'&lt;/FAULT-FAILURES&gt;' newline
</report>
				<report>_featureFlaws()
/* Generating the Feature-Flaws */
'&lt;FEATURE-FLAWS&gt;'
foreach .FeatureFlaw 
{	newline
	variable 'type_name' write type%minus%upper close
	local 'nameValue' write :Name;%xml close
	'&lt;!-- ' $type_name ' name: ' 
	if @nameValue &lt;&gt; '' then
		@nameValue ' (' :Short name; ')'
	else
		:Short name;
	endif
	' --&gt;' newline
	'&lt;!-- path: ' variable oid '_path' read ' --&gt;' newline
	'&lt;' $type_name ' UUID="' :__UUID '"&gt;' newline 
	'&lt;SHORT-NAME&gt;' :Short name; '&lt;/SHORT-NAME&gt;' newline
	if @nameValue &lt;&gt; '' then
		'&lt;NAME&gt;' @nameValue '&lt;/NAME&gt;' newline
	endif
	if :Text; then '&lt;TEXT&gt;' :Text '&lt;/TEXT&gt;' newline endif
	'&lt;ITEM-REFS&gt;' newline
	do ~DepFrom~ItemTo.Item 
	{	
		'&lt;ITEM-REF TYPE="ITEM"&gt;' variable oid '_path' read '&lt;/ITEM-REF&gt;' newline 
	}
	'&lt;/ITEM-REFS&gt;' newline
	if :nonFullfilledRequirement; then
		'&lt;NON-FULFILLED-REQUIREMENT-REFS&gt;'
		do :nonFullfilledRequirement;
		{	
			'&lt;NON-FULFILLED-REQUIREMENT-REF TYPE="' type%minus%upper '"&gt;' variable oid '_path' read '&lt;/NON-FULFILLED-REQUIREMENT-REF&gt;' newline	
		}
		'&lt;/NON-FULFILLED-REQUIREMENT-REFS&gt;'
	endif
	'&lt;/' $type_name '&gt;' newline
}
'&lt;/FEATURE-FLAWS&gt;' newline
</report>
				<report>_find\ packaged\ types()
foreach .() 
{	if type = 'Package'; then
		do decompositions 
		{	subreport '_find packaged types' run }
	endif
	if type = 'EAType' then
		do decompositions 
		{	subreport '_find types from EATypes' run }
	endif
}</report>
				<report>_find\ types\ from\ EATypes()
/* Collects variable packaged_types containing all accessed type, prototypes via the EAType */
if not $packaged_types =~ oid%wildsp then
	variable 'packaged_types' append oid ' ' close
	foreach .() {
		if type =~ '*Prototype' then
			variable 'packaged_types' append oid ' ' close
			do decompositions { subreport '_find types from EATypes' run }
		endif
		if (type =~'*Port') OR (type =~ '*Pin*') then 
			variable 'packaged_types' append oid ' ' close
		endif
	}
endif</report>
				<report>_find\ types\ from\ levels()
/* Collects variable typesAccessedFromLevels containing all accessed type, prototypes via the Levels */
if (type = 'SystemModel') or (type='Package') or (type = 'AnalysisFunctionType') or (type = 'DesignFunctionType') or (type = 'HardwareComponentType') or (type = 'AllocationMatrix') or (type = 'VehicleFeatureModel') then
	foreach .() { _build_typesAccessedFromLevels() }
endif</report>
				<report>_FlowDirected()
$directed = 'T' 
do ~() {
	do #() { /* port in prototype undirected */
		if type = 'InOutFlowPort' then 
			$directed = 'F' 
		endif 
	}
	do .() { /* Port type undirected */
		if type = 'InOutFlowPort' then 
			$directed = 'F' 
		endif 
	}
}</report>
				<report>_FMU_export()
/* Produces model exchange XML file based on FMU 2.0 */
_translators()
_timeStamp()

$i = '1' /* outport index */
$unitsAdded = ' ' /* avoid duplicates */
$typesAdded = ' '

filename subreport '_default directory' run id%file '.xml' encoding 'UTF-8' write

'&lt;?xml version="1.0" encoding="UTF8"?&gt;
&lt;fmiModelDescription
fmiVersion="2.0"
modelName="':FunctionName'"
guid="' :__UUID '"  
description="':Description%xml'"
generationTool="MetaEdit+ for EAST-ADL"
generationDateAndTime="' $myTime '"
variableNamingConvention="flat"&gt;' newline newline
_FMU_export_TypeDefs()
_FMU_export_ModelVariables()
_FMU_export_ModelStucture()
'&lt;/fmiModelDescription&gt;'
close
</report>
				<report>_FMU_export_dt()
/* Real not supported in EAST-ADL */
if :Type; then
	do :Type {
		if type = 'EABoolean' then 'Boolean' 
		else
			if type = 'EANumerical' then 'Integer' 
			else
				if type = 'EAString' then 'String' 
				else
					if type = 'Enumeration' then 'Enumeration'  endif
				endif
			endif
		endif
	}
else
	'&lt;!-- undefined --&gt;'
endif
</report>
				<report>_FMU_export_ModelStucture()

'	&lt;ModelStructure&gt;' newline
if $outindex then
'		&lt;Outputs&gt;' newline
do $outindex where id {
'			&lt;Unknown index="' id '"/&gt;' newline
}
'		&lt;/Outputs&gt;' newline
endif

if $unkownindex then
'		&lt;InitialUnknowns&gt;' newline
do $unkownindex where id {
'			&lt;Unknown index="' id '"/&gt;' newline
}
'		&lt;/InitialUnknowns&gt;' newline
endif

'	&lt;/ModelStructure&gt;
'
</report>
				<report>_FMU_export_ModelVariables()
'&lt;ModelVariables&gt;' newline
$scalarVars
'&lt;/ModelVariables&gt;

'</report>
				<report>_FMU_export_scalars(@type)

if type = 'InOutFlowPort' then
	if ~InFlow; then 
		@kind = 'input'
		variable 'unkownindex' append $i newline close
	else
		if ~OutFlow; then 
			@kind = 'output' 
			variable 'outindex' append $i newline close 
		endif
	endif
endif

'	&lt;ScalarVariable
	name="':Short name;'"
	valueReference="' do :Type {projectid objectid }'"
	description="':Description%xml'"
	causality="'
	if @kind; then 
		@kind
	else
		if type = 'InFlowPort' then 
			'input'
			variable 'unkownindex' append $i newline close			
		else
			if type = 'OutFlowPort' then 
				'output' 
				variable 'outindex' append $i newline close	
			endif 
		endif
	endif
	'"
	variability="continuous"&gt;
	&lt;' @type ' declaredType="' do :Type {:Short name; } '"/&gt;
	&lt;/ScalarVariable&gt;' 
newline newline
$i++%null /* add port index */</report>
				<report>_FMU_export_TypeDefs()

foreach .(*FlowPort) {
	@type = _FMU_export_dt()
	if @type then

		variable 'units' append	
			do :Type {
				do :Unit {_FMU_export_units()	}		
				}
		close

		variable 'types' append /* add types to var */
			_FMU_export_types(@type)
		close
		
		variable 'scalarVars' append /* add scalrs to var */
			_FMU_export_scalars(@type) 
		close

	endif
}

if $unitsAdded &lt;&gt; ' ' then
	'&lt;UnitDefinitions&gt;' newline
	$units
	'&lt;/UnitDefinitions&gt;' newline newline
endif

if $typesAdded &lt;&gt; ' ' then 
	'&lt;TypeDefinitions&gt;' newline
	$types
	'&lt;/TypeDefinitions&gt;' newline newline
endif
</report>
				<report>_FMU_export_types(@type)

do :Type {
	@this = :Short name;
	if not $typesAdded =~ @this%wildsp then
		variable 'typesAdded' append @this ' ' close
		
		'	&lt;SimpleType name="':Short name;'"&gt;' newline
		'		&lt;' @type  
		do :Unit { 
			if :Quantity; then
				' quantity="' :Quantity%xml '"'
			endif
		}
		if :Literals; then
			@i = '1'
			do :Literals; where @i = '1' {
				' min="' id%xml '"'
			}
			do :Literals; where id { @max = id }
			' max="' :Max%xml '"'
		else
			if :Min; then ' min="' :Min%xml '"' endif
			if :Max; then ' max="' :Max%xml '"' endif			
			if :Unit; then ' unit="' :Unit%xml '"' endif
		endif
		'/&gt;' newline 	
		'	&lt;/SimpleType&gt;' newline

	endif
}</report>
				<report>_FMU_export_units()

@this = :Short name;
if not $unitsAdded =~ @this%wildsp then
	variable 'unitsAdded' append @this ' ' close
	'	&lt;Unit name="' @this '"&gt;' newline
	/* BaseUnit information is not given in EAST-ADL metamodel */
	'		&lt;BaseUnit/&gt;' newline
	'	&lt;/Unit&gt;' newline					
	do :UnitReference; { /* for recursively defined units */
		_FMU_export_units()
	}
endif</report>
				<report>_FunctionClientServerInterface()
'&lt;OPERATIONS&gt;'
do :Operations {
	'&lt;OPERATION UUID="' :__UUID '"&gt;' newline
	'&lt;SHORT-NAME&gt;' :Short name; '&lt;/SHORT-NAME&gt;' newline
	if :Name; then 
		'&lt;NAME&gt;' :Name;%xml '&lt;/NAME&gt;' newline
	endif
	'&lt;ARGUMENTS&gt;'
	do :Arguments {
		local 'type_name' write type%minus%upper close
		local 'nameValue' write :Name;%xml close 
		newline
		'&lt;!-- ' @type_name ' name: '
		if @nameValue &lt;&gt; '' then
			@nameValue ' (' :Short name; ')'
		else
			:Short name;
		endif
		' --&gt;' newline
		'&lt;' @type_name ' UUID="' :__UUID '"&gt;' newline 
		'&lt;SHORT-NAME&gt;' :Short name; '&lt;/SHORT-NAME&gt;' newline
		if @nameValue &lt;&gt; '' then
			'&lt;NAME&gt;' @nameValue '&lt;/NAME&gt;' newline
		endif
		subreport '_dataTypeReference' run
		'&lt;/' @type_name '&gt;'
	}
	newline
	'&lt;/ARGUMENTS&gt;' newline
	if :Return; then
		'&lt;RETURN&gt;'
		do :Return {
			local 'return_type_name' write type%minus%upper close
			local 'return_nameValue' write :Name;%xml close 
			newline
			'&lt;!-- ' @return_type_name ' name: '
			if @return_nameValue &lt;&gt; '' then
				@return_nameValue ' (' :Short name; ')'
			else
				:Short name;
			endif
			' --&gt;' newline
			'&lt;SHORT-NAME&gt;' :Short name; '&lt;/SHORT-NAME&gt;' newline
			if :Name; then
				'&lt;NAME&gt;' :Name%xml '&lt;/NAME&gt;' newline
			endif
			subreport '_dataTypeReference' run
		}
		'&lt;/RETURN&gt;' newline
	endif
	'&lt;/OPERATION&gt;' newline
}
'&lt;/OPERATIONS&gt;' newline</report>
				<report>_genericConstraints()
foreach .GenericConstraint {
	local 'nameValue' write :Name;%xml close 
	newline
	'&lt;!-- GENERIC-CONSTRAINT name: ' 
	if @nameValue &lt;&gt; '' then
		@nameValue ' (' :Short name; ')'
	else
		:Short name;
	endif
	' --&gt;' newline
	'&lt;!-- path: ' variable oid '_path' read ' --&gt;' newline
	'&lt;GENERIC-CONSTRAINT UUID="' :__UUID '"&gt;' newline
	'&lt;SHORT-NAME&gt;' :Short name; '&lt;/SHORT-NAME&gt;' newline
	if @nameValue &lt;&gt; '' then
		'&lt;NAME&gt;' @nameValue '&lt;/NAME&gt;' newline
	endif
	'&lt;KIND&gt;' :Kind%upper '&lt;/KIND&gt;' newline

	/* Generating the information for TARGET-REFS */
	if :TargetTypes; or :TargetObjects; or :TargetRelationships; then
		'&lt;TARGET-REFS&gt;' newline
		do :TargetTypes 
		{	'&lt;!-- ' type%minus%upper ' name: ' :Short name; ' --&gt;' newline
			'&lt;TARGET-REF TYPE="' type%minus%upper '"&gt;' variable oid '_path' read '&lt;/TARGET-REF&gt;' newline	
		}
		do :TargetObjects 
		{	'&lt;!-- ' type%minus%upper ' name: ' :Short name; ' --&gt;' newline
			'&lt;TARGET-REF TYPE="' type%minus%upper '"&gt;' variable oid '_path' read '&lt;/TARGET-REF&gt;' newline	
		}
		do :TargetRelationships 
		{	'&lt;!-- ' type%relationships%upper ' name: ' :Short name; ' --&gt;' newline
			'&lt;TARGET-REF TYPE="' type%relationships%upper '"&gt;' variable oid '_path' read '&lt;/TARGET-REF&gt;' newline	
		}
		'&lt;/TARGET-REFS&gt;' newline
	endif

	/* Generating the information for MODE-REFS */
	if :Modes; then
		'&lt;MODE-REFS&gt;' newline
		do :Modes 
		{	'&lt;MODE-REF TYPE="MODE"&gt;' variable oid '_path' read '&lt;/MODE-REF&gt;' newline
		}
		'&lt;/MODE-REFS&gt;' newline
	endif
	'&lt;/GENERIC-CONSTRAINT&gt;' newline
}
</report>
				<report>_hazardousEvents()
/* Reporting the HazardousEvents */
'&lt;HAZARDOUS-EVENTS&gt;' 
foreach .HazardousEvent 
{	variable 'type_name' write type%minus%upper close
	local 'nameValue' write :Name;%xml close
	newline
	'&lt;!-- ' $type_name ' name: ' 
	if @nameValue &lt;&gt; '' then
		@nameValue ' (' :Short name; ')'
	else
		:Short name;
	endif
	' --&gt;' newline
	'&lt;!-- path: ' variable oid '_path' read ' --&gt;' newline
	'&lt;' $type_name ' UUID="' :__UUID '"&gt;' newline 
	'&lt;SHORT-NAME&gt;' :Short name; '&lt;/SHORT-NAME&gt;' newline
	if @nameValue &lt;&gt; '' then
		'&lt;NAME&gt;' @nameValue '&lt;/NAME&gt;' newline
	endif
	'&lt;CLASSIFICATION-ASSUMPTIONS&gt;' :ClassificationAssumptions '&lt;/CLASSIFICATION-ASSUMPTIONS&gt;' newline
	'&lt;CONTROLLABILITY&gt;' :Controllability '&lt;/CONTROLLABILITY&gt;' newline
	'&lt;EXPOSURE&gt;' :Exposure '&lt;/EXPOSURE&gt;' newline
	'&lt;HAZARD-CLASSIFICATION&gt;ASIL_' :HazardClassification '&lt;/HAZARD-CLASSIFICATION&gt;' newline
	'&lt;SEVERITY&gt;' :Severity '&lt;/SEVERITY&gt;' newline
	if :OperatingMode; then
		'&lt;OPERATING-MODE-REFS&gt;' newline
		do :OperatingMode; 
		{	
			'&lt;OPERATING-MODE-REF TYPE="MODE"&gt;' variable oid '_path' read '&lt;/OPERATING-MODE-REF&gt;' newline	
		}
		'&lt;/OPERATING-MODE-REFS&gt;' newline
	endif

	'&lt;OPERATIONAL-SITUATION-USE-CASE-REFS&gt;' newline
	do ~HazardousEvent~UseCase.UseCase
	{	
		'&lt;OPERATIONAL-SITUATION-USE-CASE-REF TYPE="USE-CASE"&gt;' variable oid '_path' read '&lt;/OPERATIONAL-SITUATION-USE-CASE-REF&gt;' newline 
	}
	'&lt;/OPERATIONAL-SITUATION-USE-CASE-REFS&gt;' newline

	/* ENVIRONMENT-REFS */
	if :Environment; then
		'&lt;ENVIRONMENT-REFS&gt;' newline
		do :Environment 
		{	
			'&lt;ENVIRONMENT-REF TYPE="OPERATIONAL-SITUATION"&gt;' variable oid '_path' read '&lt;/ENVIRONMENT-REF&gt;' newline 
		}
		'&lt;/ENVIRONMENT-REFS&gt;' newline
	endif

	/* HAZARD-REFS */
	'&lt;HAZARD-REFS&gt;' newline
	do ~HazardousEvent~Hazard.Hazard
	{	
		'&lt;HAZARD-REF TYPE="HAZARD"&gt;' variable oid '_path' read '&lt;/HAZARD-REF&gt;' newline 
	}	
	'&lt;/HAZARD-REFS&gt;' newline

	/* TRAFFIC-REFS */
	if :Traffic; then
		'&lt;TRAFFIC-REFS&gt;' newline
		do :Traffic 
		{	
			'&lt;TRAFFIC-REF TYPE="OPERATIONAL-SITUATION"&gt;' variable oid '_path' read '&lt;/TRAFFIC-REF&gt;' newline 
		}
		'&lt;/TRAFFIC-REFS&gt;' newline
	endif
	'&lt;/' $type_name '&gt;' newline
}
'&lt;/HAZARDOUS-EVENTS&gt;' newline
</report>
				<report>_hazards()
/* Reporting the Hazards */
'&lt;HAZARDS&gt;' 
foreach .Hazard 
{	variable 'type_name' write type%minus%upper close
	local 'nameValue' write :Name;%xml close
	newline
	'&lt;!-- ' $type_name ' name: ' 
	if @nameValue &lt;&gt; '' then
		@nameValue ' (' :Short name; ')'
	else
		:Short name;
	endif
	' --&gt;' newline
	'&lt;!-- path: ' variable oid '_path' read ' --&gt;' newline
	'&lt;' $type_name ' UUID="' :__UUID '"&gt;' newline 
	'&lt;SHORT-NAME&gt;' :Short name; '&lt;/SHORT-NAME&gt;' newline
	if @nameValue &lt;&gt; '' then
		'&lt;NAME&gt;' @nameValue '&lt;/NAME&gt;' newline
	endif
	if :Text; then 
		'&lt;TEXT&gt;':Text;%xml '&lt;/TEXT&gt;' newline
	endif 
	'&lt;MALFUNCTION-REFS&gt;' newline
	/* Feature-Flaws */
	do ~Malfunction from~FeatureFlaw.FeatureFlaw
	{	
		'&lt;MALFUNCTION-REF TYPE="FEATURE-FLAW"&gt;' variable oid '_path' read '&lt;/MALFUNCTION-REF&gt;' newline 
	}
	'&lt;/MALFUNCTION-REFS&gt;' newline
	'&lt;ITEM-REFS&gt;' newline

	/* Items */
	do ~DepFrom~ItemTo.Item
	{	
		'&lt;ITEM-REF TYPE="ITEM"&gt;' variable oid '_path' read '&lt;/ITEM-REF&gt;' newline 
	}
	'&lt;/ITEM-REFS&gt;' newline
	'&lt;/' $type_name '&gt;' newline
}
'&lt;/HAZARDS&gt;' newline</report>
				<report>Report '_id or type'
/* Returns the id, if its not given returns the type */
if id then id else '&lt;' type '&gt;' endif
endreport</report>
				<report>Report '_id or type and oid'
/* Returns the id, if its not given returns the type and oid */
if id then id else type ' (' oid ')' endif
endreport</report>
				<report>Report '_id or type2'
if id;2 then id;2 else '&lt;' type;2 '&gt;' endif
endreport</report>
				<report>_importTranslators()

/* Removes parts from askFile result */
to '%path
/^(.*\\)(.*)\.(.*)$/ $$1'
endto

to '%file
/^(.*\\)(.*)\.(.*)$/ $$2'
endto

to '%ext
/^(.*\\)(.*)\.(.*)$/ $$3'
endto
</report>
				<report>_items()
'&lt;ITEMS&gt;'
foreach .Item 
{	variable 'type_name' write type%minus%upper close
	local 'nameValue' write :Name;%xml close
	newline
	'&lt;!-- ' $type_name ' name: ' 
	if @nameValue &lt;&gt; '' then
		@nameValue ' (' :Short name; ')'
	else
		:Short name;
	endif
	' --&gt;' newline
	'&lt;!-- path: ' variable oid '_path' read ' --&gt;' newline
	'&lt;' $type_name ' UUID="' :__UUID '"&gt;' newline 
	'&lt;SHORT-NAME&gt;' :Short name; '&lt;/SHORT-NAME&gt;' newline
	if @nameValue &lt;&gt; '' then
		'&lt;NAME&gt;' @nameValue '&lt;/NAME&gt;' newline
	endif
	if :Text; then 
		'&lt;TEXT&gt;':Text;%xml '&lt;/TEXT&gt;' newline
	endif 
	'&lt;DEVELOPMENT-CATEGORY&gt;' 
	if :DevelopmentCategory = 'New' then 
		'NEWITEMDEVELOPMENT'
	else 
		'MODIFICATIONOFEXISTINGITEM'
	endif 
	'&lt;/DEVELOPMENT-CATEGORY&gt;' newline
	'&lt;VEHICLE-FEATURE-REFS&gt;' 
	do :Vehicle features 
	{	newline
		'&lt;VEHICLE-FEATURE-REF TYPE="' type%minus%upper '"&gt;' variable oid '_path' read '&lt;/VEHICLE-FEATURE-REF&gt;'
	}
	newline
	'&lt;/VEHICLE-FEATURE-REFS&gt;' newline
	'&lt;/' $type_name '&gt;' newline
}
'&lt;/ITEMS&gt;' newline
</report>
				<report>_LegalTypeInConnections()
/* Checks that connections using ports have same type */

/* excluded from checks as can be of different type due to conversions */

/* $visited = ' ' /* to avoid cycles */
/* _LegalTypeInConnectionsNext() /* navigates the hierarchy recursively */

</report>
				<report>_LegalTypeInConnectionsNext()
if not $visited =~ oid%wildsp; then
	variable 'visited' append oid ' ' close 
	
	foreach &gt;(Flow | ClientServerInterface | Power | HardwareConnector | FaultFailurePropagationLink | ClampConnector) {
		local 'types' write 
			do ~()#(*Port | *HardwarePin*):Type { type newline }
			do ~().(*Port | *HardwarePin*):Type { type newline }  
		close
		
		@i = '1'
		do @types {
			if @i = '1' 
				then @first = id 
			else
				if @i = '2' then @second = id endif
			endif
			@i++%null
		}
		
		if @first &lt;&gt; @second then
			_reportWarnings()
			'Warning: type is not the same in connection' if id then ' ' id endif ' between ' 
			dowhile ~().() {	id ' and ' }
			newline
		endif
		@first = @second = ''
	}
	
	foreach .(Package | SystemModel | *Prototype | EAType ) 
	{ 	do decompositions where type = 'AnalysisFunctionType' or type = 'DesignFunctionType' or type = 'HardwareComponentType' or type = 'ErrorModel' or type = 'EnvironmentModel'
		{	_LegalTypeInConnectionsNext() }
	}

endif
</report>
				<report>_LegalTypePath()
/* Checks that type-prototype path within a package hierarchy is not cyclic */
local 'path' write ' ' oid ' ' close /* path variable contains all the accessed graph oids separated with whitespace */
$cycleReported = ''

foreach .(Package | SystemModel | *Prototype | EAType | RequirementsRelationshipGroup) 
{	do decompositions 
	{ 	_LegalTypePathNext(@path) /* navigates the hierarchy further */ }
}

</report>
				<report>_LegalTypePathNext(@path)
if not @path =~ oid%wildsp; then
	local 'path' append oid ' ' close /* In case graph is not accessed earlier, it will be added to path variable */
	foreach .(Package | SystemModel | *Prototype | EAType | RequirementsRelationshipGroup) 
	{ 	do decompositions 
		{	_LegalTypePathNext(@path) }
	}
else
	if $cycleReported = '' then
		@stackIx = '0'
		$revStack = @sep = ''

		/* Find the index for the stack */
		dowhile stack { 
			@stackIx = @++stackIx
			@lastThisGraphIx = @stackIx 
		}
		
		@stackIx2 = '1'
		@cycleStart_oid = oid
		$cycleEndReached = 'F'
		do stack {
			@current_oid = oid 
			if (@stackIx2 &lt;&gt; '1') and (@cycleStart_oid = @current_oid) then
				$cycleEndReached = 'T'
			endif
			
			if (@stackIx2 &lt; @lastThisGraphIx num) and ($cycleEndReached &lt;&gt; 'T') then
				local 'myId' write id
					if metatype = 'Object' then 
						if type =~ '*Prototype' then
							''
						else
							' &lt;' type '&gt;' 
						endif
					endif
					if metatype = 'Graph' then 
						' [' type ']' 
					endif
				close 
				$revStack = __(@myId @sep $revStack)
				local 'sep' write 
					if metatype = 'Graph' then 
						' ==&gt; '
					else
						' --&gt; '
					endif
				close
				@stackIx2 = @++stackIx2
			endif
		}
		/* Reporting the warning if cycle is found*/	
		_reportWarnings()
		'Warning: Cyclic ' 
		if type;1 = 'Package' then 
			'Package' 
		else 
			'Type-Prototype' 
		endif 
		' hierarchy found (syntax: id &lt;objectType&gt;, id [GraphType], --&gt; contains, ==&gt; has a subgraph link): ' newline 	
		id ' [' type '] --&gt; ' $revStack 
		if $LiveCheck &lt;&gt; 'F' then 
			newline
		endif
		$cycleReported = 'T'
		newline
	endif
endif
</report>
				<report>Report '_MatrixToHTMLTable'
$columns = ''
'&lt;table border="1"&gt;'
'&lt;tr&gt;&lt;th&gt;&amp;nbsp;&lt;/th&gt;'
foreach .() where y = '0' orderby x 
{	'&lt;th bgcolor="#F2F2F2"&gt;&lt;a href="#' oid '"&gt;' id%trunc80%xml '&lt;/a&gt;&lt;/th&gt;'
	variable 'columns' append oid newline close
}
'&lt;/tr&gt;'
newline
foreach .() where x = '0' orderby y 
{	'&lt;tr&gt;'
	'&lt;td bgcolor="#F2F2F2"&gt;&lt;strong&gt;&lt;a href="#' oid '"&gt;' id%trunc80%xml '&lt;strong&gt;&lt;/a&gt;&lt;/td&gt;' 
	do $columns where id {
		'&lt;td&gt;'
		do ~();1&gt;() 
		{
			do ~().() where oid &lt;&gt; oid;3 
			{
				if oid = id;2 then 
					if id;1 then id;1%xml else 'X' endif
				endif
			}
		}
		'&amp;nbsp;&lt;/td&gt;'
	}
	'&lt;/tr&gt;'
}
'&lt;/table&gt;'
endreport</report>
				<report>_name()
if :Name; then :Name; else :Short name; endif</report>
				<report>Report '_name checks'
/* Checking the name value */
if :Short name; = '' then
	$emptyIdFound = 'T'
else 
	if not :Short name; =/ '[a-zA-Z]([a-zA-Z0-9]|_[a-zA-Z0-9])*_?' then
		_reportWarnings()
		'Warning: There are illegal character(s) in the ' type '''s identifier property ' :Short name; newline
	endif
endif
endreport</report>
				<report>_objTargetOffset(@x, @y)
/* calcultes the objectTargetOffset: position of port in relative to the main object symbol and its target point */

if @x or @y then
	' isMovable="true" objTargetOffset="' math @x '-' centerX evaluate ',' math @y '-' centerY evaluate '"'
endif</report>
				<report>_OneOwner()

@systemModels = ' '
@systemContent = ' '
@packages = ' '
@packageContent = ' '
@types = ' '
@typeContent = ' '
@prototypes = ' '
@datatypes = ' '

$myGraphs = ' ' /* stores all graphs in this hierarchy */
_collectGraphsInThisHierarchy() /* collects all graphs in this hierarchy */

do graphs where type =  'Package' {
	if $myGraphs =~ oid%wildsp then /* checks the graph is in the hierarchy */
		foreach .SystemModel {
			if not @systemModels =~ oid%wildsp then
				local 'systemModels' append oid ' ' close
			else
				_reportWarnings()
				'Warning: ' id ' &lt;' type '&gt; exists in several packages. Open Info... for it' newline
			endif
			do decompositions {
				if not @systemContent =~ oid%wildsp then
					local 'systemContent' append oid ' ' close
				else
					_reportWarnings()
					'Warning: ' id ' &lt;' type '&gt; is linked from several packages. Find all links with ' id ': * filter in Graph Browser' newline
				endif
			}		
		}
		foreach .Package {
			if not @packages =~ oid%wildsp then
				local 'packages' append oid ' ' close
			else
				_reportWarnings()
				'Warning: ' id ' &lt;' type '&gt; exists in several packages. Open Info... for it' newline
			endif
			do decompositions {
				if not @packageContent =~ oid%wildsp then
					local 'packageContent' append oid ' ' close
				else
					_reportWarnings()
					'Warning: ' id ' &lt;' type '&gt; is linked from several packages. Find all links with ' id ': * filter in Graph Browser' newline
				endif
			}
		}	
		foreach .EAType {
			if not @types =~ oid%wildsp then
				local 'types' append oid ' ' close
			else
				_reportWarnings()
				'Warning: EAType definition ' id ' exists in several packages. Open Info... for it' newline
			endif
			do decompositions {
				if not @typeContent =~ oid%wildsp then
					local 'typeContent' append oid ' ' close
				else
					_reportWarnings()
					'Warning: Type definition ' id ' &lt;' type '&gt; is linked from several EATypes. Select EAType in Type Browser and use ' id '* filter in Instances list' newline
				endif
			}
		}
		foreach .(&lt;_EADatatype | Quantity | Unit | FunctionClientServerInterface | UserAttributedElement | GenericConstraint)  
		{	if not @datatypes =~ oid%wildsp then
				local 'datatypes' append oid ' ' close
			else
				_reportWarnings()
				'Warning: Datatype ' id ' &lt;' type '&gt; exists in several packages. Open Info... for it' newline
			endif
		}
	endif
}

do graphs where type =~  '*Type' or type =  'ErrorModel' 
{	if $myGraphs =~ oid%wildsp then /* checks the graph is in the hierarchy */
		foreach .(*Prototype | *Port | *Pin*) 
		{	if not @prototypes =~ oid%wildsp then
				local 'prototypes' append oid ' ' close
			else
				_reportWarnings()
				'Warning: ' id ' &lt;' type '&gt; exists in several types. Open Info... for it' newline
			endif
		}
	endif
}</report>
				<report>_operationalSituations()
/* Reporting the OperationalSituations */
'&lt;OPERATIONAL-SITUATIONS&gt;' newline
foreach .OperationalSituation 
{
	variable 'type_name' write type%minus%upper close
	local 'nameValue' write :Name;%xml close
	'&lt;!-- ' type%time%minus%upper ' name: ' 
	if @nameValue &lt;&gt; '' then
		@nameValue ' (' :Short name; ')'
	else
		:Short name;
	endif
	' --&gt;' newline
	'&lt;!-- path: ' variable oid '_path' read ' --&gt;' newline
	'&lt;' $type_name ' UUID="' :__UUID '"&gt;' newline 
	'&lt;SHORT-NAME&gt;' :Short name; '&lt;/SHORT-NAME&gt;' newline
	if @nameValue &lt;&gt; '' then
		'&lt;NAME&gt;' @nameValue '&lt;/NAME&gt;' newline
	endif
	subreport '_description' run
	'&lt;/' $type_name '&gt;' newline
}
'&lt;/OPERATIONAL-SITUATIONS&gt;'</report>
				<report>Report '_other datatypes'
/* Create the rest of the data-types */
foreach .Package {
	do decompositions { 
		foreach .EAType {
			do decompositions { 
				/* Translators */
				foreach .() {
					do decompositions {
						foreach .(*Flow*) { _data-types() }
					}
				}
			}
		}

		foreach .Vehicle Level; {	
			do explosions { 
				/* Translators */
				subreport '_translators' run 
				foreach .() {
					do decompositions {
						foreach .(*Flow*) { _data-types() }
					}
				}
			}
		}
	}
}
endreport</report>
				<report>_outputBindings(@tab)
/* Outputs bindings in the graph */
foreach &gt;() orderby type, objectid num
{
	'  Relationship: '
	_outputProperties(@tab)
	
	do explosions orderby type, objectid {
		'	Explode to: ' id ' &lt;' type '&gt;' newline
	}
	
	do ~() {
		'    Role: ' 
		_outputProperties(@tab)
		do #() {
			'	Port: ' id ' &lt;' type '&gt;' newline
		}

		do explosions orderby type, objectid {
			'	Explode to:  ' id ' &lt;' type '&gt;' newline
		}	
	}
}</report>
				<report>_outputObjects(@tab)
/* Outputs objects in the graph */
foreach .() orderby type, objectid num
{
	'  Object: '
	_outputProperties(@tab)
	
	do decompositions orderby type, objectid {
		'	Decomposed to: ' id ' &lt;' type '&gt;' newline
	}
	
	do explosions orderby type, objectid {
		'	Explode to: ' id ' &lt;' type '&gt;' newline
	}
	
}</report>
				<report>_outputProperties(@tab)
/* Outputs properties of the element */
@tab id ' &lt;' type '&gt;' newline
local 'tab' append '	' close
do :() {
	@tab containers ': ' id
	newline
	do contents where projectid = $thisProject and (metatype &lt;&gt; 'Text' and metatype &lt;&gt; 'String') {
		if not $reported =~ oid%wildsp then
			variable 'reported' append oid ' ' close
			_outputProperties(@tab)
		endif
	}
}</report>
				<report>Report '_owned relationship irefs'
/* Generating the iref information for the relationship */
'&lt;' type%minus%upper '-IREFS&gt;' newline
'&lt;' type%minus%upper '-IREF&gt;' newline
do.() 
{	local 'identifier_name' write :Short name;%var%toShortName close
	local 'mytype' write type%minus%upper close
	'&lt;!-- ' @mytype ' name: ' @identifier_name ' --&gt;' newline
	'&lt;IDENTIFIABLE-TARGET-REF TYPE="' @mytype '"&gt;' variable oid '_path' read '&lt;/IDENTIFIABLE-TARGET-REF&gt;' newline 	
}
'&lt;/' type%minus%upper '-IREF&gt;' newline
'&lt;/' type%minus%upper '-IREFS&gt;' newline
endreport</report>
				<report>Report '_owned relationship refs'
/* Generating the ref information for the relationship */
'&lt;' type%minus%upper '-REFS&gt;' newline
do.() 
{	local 'identifier_name' write :Short name;%var%toShortName close
	local 'mytype' write	type%minus%upper close
	'&lt;!-- ' @mytype ' name: ' @identifier_name ' --&gt;' newline
	'&lt;' type;1%minus%upper '-REF TYPE="' @mytype '"&gt;' variable oid '_path' read '&lt;/' type;1%minus%upper '-REF&gt;' newline 
}
'&lt;/' type%minus%upper '-REFS&gt;' newline
endreport</report>
				<report>Report '_owned-relationships'
/* Generating OWNED-RELATIONSHIPS section */
'&lt;OWNED-RELATIONSHIPS&gt;'
foreach &gt;() { 
	if ((type='Realization') or (type='DeriveRequirement') Or (type='Satisfy') Or (type='RequirementsLink') Or (type='Refine')) then
		if not $reported_relationships =~ oid%wildsp then
			variable 'reported_relationships' append oid ' ' close
			newline
			'&lt;' type%minus%upper ' UUID="' type '_' oid '"&gt;' newline
			'&lt;SHORT-NAME&gt;' type;%var '&lt;/SHORT-NAME&gt;' newline
			'&lt;NAME&gt;' 
			if type; &lt;&gt; 'RequirementsLink' then
				type;%xml '_' oid
			else
				id;%xml 
			endif
			'&lt;/NAME&gt;' newline 

			/* Realization */
			if type = 'Realization' then
				do ~(RealizedBy | Realized) {	subreport '_owned relationship irefs' run }
			endif

			/* Satisfy */
			if type = 'Satisfy' then
				do ~(SatisfiedRequirement) { subreport '_owned relationship refs' run }
				do ~(SatisfiedBy) { subreport '_owned relationship irefs' run }
			endif

			/* Derive */
			if type = 'DeriveRequirement' then
				do ~(Derived | DerivedFrom) {	subreport '_owned relationship refs' run }
			endif

			/* Requirements link */
			if type = 'RequirementsLink' then
				'&lt;IS-BIDIRECTIONAL&gt;' if :Bidirectional; then 'true' else 'false' endif '&lt;/IS-BIDIRECTIONAL&gt;' newline
				do ~(Source) { subreport '_owned relationship refs' run }
				do ~(Target) {	subreport '_owned relationship refs' run }
			endif

			/* Refine */
			if type = 'Refine' then
				do ~(RefinedRequirement) { subreport '_owned relationship refs' run }
				do ~(RefinedBy) { subreport '_owned relationship irefs' run }
			endif
			
			subreport '_type close' run
		endif
	endif
}
'&lt;/OWNED-RELATIONSHIPS&gt;' newline
endreport</report>
				<report>_port\ data()
/* Generating the port/pin information */
if $EAXMLoids =~oid%wildsp then
	 newline
	local 'nameValue' write :Name;%xml close 
	'&lt;!-- ' type ' name: ' 
	if @nameValue &lt;&gt; '' then
		@nameValue ' (' :Short name ')'
	else
		:Short name; 
	endif
	' --&gt;' newline
	'&lt;!--  path: ' variable oid '_path' read ' --&gt;' newline
	if type =~ '*Flow*' then
		'&lt;Function-Flow-Port'%upper ' UUID="' :__UUID '"&gt;' newline
		'&lt;SHORT-NAME&gt;' :Short name; '&lt;/SHORT-NAME&gt;' newline
		subreport '_port properties' run 
		'&lt;/Function-Flow-Port'%upper '&gt;'
	else
		if type =~ '*Power*' then
			'&lt;Function-Power-Port'%upper ' UUID="' :__UUID '"&gt;' newline
			'&lt;SHORT-NAME&gt;' :Short name; '&lt;/SHORT-NAME&gt;' newline
			subreport '_port properties' run 
			'&lt;/Function-Power-Port'%upper '&gt;'
		else
			if (type = 'ClientPort') Or (type =~ 'ServerPort') then
				'&lt;Function-Client-Server-Port'%upper ' UUID="' :__UUID '"&gt;' newline
				'&lt;SHORT-NAME&gt;' :Short name; '&lt;/SHORT-NAME&gt;' newline
				subreport '_port properties' run 
				'&lt;/Function-Client-Server-Port'%upper '&gt;'
			endif
		endif
	endif
endif</report>
				<report>_portdtArrayDatatype()
'					&lt;object id="_'oid'" type="Object_ArrayDatatype_sysadmin_3536999064"&gt;
						&lt;slot name="Short name"&gt;
							&lt;value&gt;
								&lt;string&gt;Err' :Short name%xml '&lt;/string&gt;
							&lt;/value&gt;
						&lt;/slot&gt;
						&lt;slot name="Name"&gt;
							&lt;value&gt;
								&lt;string&gt;' :Name%xml '&lt;/string&gt;
							&lt;/value&gt;
						&lt;/slot&gt;						
						&lt;slot name="MinLength"&gt;
							&lt;value&gt;
								&lt;string&gt;' :MinLength%xml '&lt;/string&gt;
							&lt;/value&gt;
						&lt;/slot&gt;
						&lt;slot name="MaxLength"&gt;
							&lt;value&gt;
								&lt;string&gt;' :MaxLength%xml '&lt;/string&gt;
							&lt;/value&gt;
						&lt;/slot&gt;
						&lt;slot name="Type"&gt;
							&lt;value&gt;'
								do :Type {
									if not $reportedDatatypes  =~ oid%wildsp then
										variable 'reportedDatatypes' append oid ' ' close
										subreport '_portdt' type run 
									else
										'&lt;object href="#_' oid '"&gt;&lt;/object&gt;' newline
									endif
								}	
								'&lt;/value&gt;
						&lt;/slot&gt;
					&lt;/object&gt;
'</report>
				<report>_portdtCompositeDatatype()
'					&lt;object id="_'oid'" type="Object_CompositeDatatype_sysadmin_3536998574"&gt;
						&lt;slot name="Short name"&gt;
							&lt;value&gt;
								&lt;string&gt;Err' :Short name%xml '&lt;/string&gt;
							&lt;/value&gt;
						&lt;/slot&gt;
						&lt;slot name="Name"&gt;
							&lt;value&gt;
								&lt;string&gt;' :Name%xml '&lt;/string&gt;
							&lt;/value&gt;
						&lt;/slot&gt;												
						&lt;slot name="DatatypePrototypes"&gt;
							&lt;value&gt;
								&lt;seq&gt;'
								do :DatatypePrototypes {
									'&lt;object oid="_'oid'" type="Object_EADatatypePrototype_sysadmin_3536998910"&gt;
										&lt;slot name="Short name"&gt;
											&lt;value&gt;
												&lt;string&gt;' :Short name%xml '&lt;/string&gt;
											&lt;/value&gt;
										&lt;/slot&gt;
										&lt;slot name="Name"&gt;
											&lt;value&gt;
												&lt;string&gt;' :Name%xml '&lt;/string&gt;
											&lt;/value&gt;
										&lt;/slot&gt;																
										&lt;slot name="Type"&gt;
											&lt;value&gt;'
											do :Type {
												if not $reportedDatatypes  =~ oid%wildsp then
													variable 'reportedDatatypes' append oid ' ' close
													subreport '_portdt' type run 
												else
													'&lt;object href="#_' oid '"&gt;&lt;/object&gt;' newline
												endif
											}	
											'&lt;/value&gt;
										&lt;/slot&gt;
									&lt;/object&gt;
									'
								}
'								&lt;/seq&gt;
							&lt;/value&gt;
						&lt;/slot&gt;
					&lt;/object&gt;
'</report>
				<report>_portdtEABoolean()
'					&lt;object id="_' oid '" type="Object_EABoolean_sysadmin_3536996172"&gt;
						&lt;slot name="Short name"&gt;
							&lt;value&gt;
								&lt;string&gt;Err' :Short name%xml '&lt;/string&gt;
							&lt;/value&gt;
						&lt;/slot&gt;
						&lt;slot name="Name"&gt;
							&lt;value&gt;
								&lt;string&gt;' :Name%xml '&lt;/string&gt;
							&lt;/value&gt;
						&lt;/slot&gt;												
					&lt;/object&gt;
'</report>
				<report>_portdtEANumerical()
'					&lt;object id="_'oid'" type="Object_EANumerical_sysadmin_3536996437"&gt;
						&lt;slot name="Short name"&gt;
							&lt;value&gt;
								&lt;string&gt;Err' :Short name%xml '&lt;/string&gt;
							&lt;/value&gt;
						&lt;/slot&gt;
						&lt;slot name="Name"&gt;
							&lt;value&gt;
								&lt;string&gt;' :Name%xml '&lt;/string&gt;
							&lt;/value&gt;
						&lt;/slot&gt;												
						&lt;slot name="Min"&gt;
							&lt;value&gt;
								&lt;string&gt;' :Min%xml '&lt;/string&gt;
							&lt;/value&gt;
						&lt;/slot&gt;
						&lt;slot name="Max"&gt;
							&lt;value&gt;
								&lt;string&gt;' :Max%xml '&lt;/string&gt;
							&lt;/value&gt;
						&lt;/slot&gt;'
						_portdtUnit()
'					&lt;/object&gt;
'</report>
				<report>_portdtEAString()
'					&lt;object id="_'oid'" type="Object_EAString_sysadmin_3536996221"&gt;
						&lt;slot name="Short name"&gt;
							&lt;value&gt;
								&lt;string&gt;Err' :Short name%xml '&lt;/string&gt;
							&lt;/value&gt;
						&lt;/slot&gt;
						&lt;slot name="Name"&gt;
							&lt;value&gt;
								&lt;string&gt;' :Name%xml '&lt;/string&gt;
							&lt;/value&gt;
						&lt;/slot&gt;												
					&lt;/object&gt;
'</report>
				<report>_portdtEnumeration()
'					&lt;object id="_'oid'" type="Object_Enumeration_sysadmin_3536996326"&gt;
						&lt;slot name="Short name"&gt;
							&lt;value&gt;
								&lt;string&gt;Err' :Short name%xml '&lt;/string&gt;
							&lt;/value&gt;
						&lt;/slot&gt;
						&lt;slot name="Name"&gt;
							&lt;value&gt;
								&lt;string&gt;' :Name%xml '&lt;/string&gt;
							&lt;/value&gt;
						&lt;/slot&gt;												
						&lt;slot name="IsMultiValued"&gt;
							&lt;value&gt;
								&lt;bool&gt;' if :IsMultiValued; then 'true' else 'false' endif '&lt;/bool&gt;
							&lt;/value&gt;
						&lt;/slot&gt;
						&lt;slot name="Literals"&gt;
							&lt;value&gt;
								&lt;seq&gt;'
									do :Literals {
										'									&lt;string&gt;' id%xml '&lt;/string&gt;' newline
									}
'								&lt;/seq&gt;
							&lt;/value&gt;
						&lt;/slot&gt;
					&lt;/object&gt;
'</report>
				<report>_portdtQuantity()
/* Quantities are currently not reused */
'						&lt;slot name="Quantity"&gt;
							&lt;value&gt;' newline
do :Quantity { 
		'								&lt;object oid="_'oid'" type="Object_Quantity_sysadmin_3536997304"&gt;
										&lt;slot name="Short name"&gt;
											&lt;value&gt;
												&lt;string&gt;Err':Short name'&lt;/string&gt;
											&lt;/value&gt;
										&lt;/slot&gt;
										&lt;slot name="Name"&gt;
											&lt;value&gt;
												&lt;string&gt;' :Name%xml '&lt;/string&gt;
											&lt;/value&gt;
										&lt;/slot&gt;																
										&lt;slot name="AmountOfSubstanceExp"&gt;
											&lt;value&gt;
												&lt;string&gt;':AmountOfSubstanceExp'&lt;/string&gt;
											&lt;/value&gt;
										&lt;/slot&gt;										
										&lt;slot name="ElectricCurrentExp"&gt;
											&lt;value&gt;
												&lt;string&gt;':ElectricCurrentExp'&lt;/string&gt;
											&lt;/value&gt;
										&lt;/slot&gt;				
										&lt;slot name="LengthExp"&gt;
											&lt;value&gt;
												&lt;string&gt;':LengthExp'&lt;/string&gt;
											&lt;/value&gt;
										&lt;/slot&gt;	
										&lt;slot name="LuminousIntensityExp"&gt;
											&lt;value&gt;
												&lt;string&gt;':LuminousIntensityExp'&lt;/string&gt;
											&lt;/value&gt;
										&lt;/slot&gt;																											
										&lt;slot name="MassExp"&gt;
											&lt;value&gt;
												&lt;string&gt;':MassExp'&lt;/string&gt;
											&lt;/value&gt;
										&lt;/slot&gt;											
										&lt;slot name="ThermodynamicTemperatureExp"&gt;
											&lt;value&gt;
												&lt;string&gt;':ThermodynamicTemperatureExp'&lt;/string&gt;
											&lt;/value&gt;
										&lt;/slot&gt;	
										&lt;slot name="TimeExp"&gt;
											&lt;value&gt;
												&lt;string&gt;':TimeExp'&lt;/string&gt;
											&lt;/value&gt;
										&lt;/slot&gt;
									&lt;/object&gt;' newline
}								
'							&lt;/value&gt;
						&lt;/slot&gt; ' 
						newline
						</report>
				<report>_portdtRangeableValueType()
'					&lt;object id="_'oid'" type="Object_RangeableValueType_sysadmin_3536997383"&gt;
						&lt;slot name="Short name"&gt;
							&lt;value&gt;
								&lt;string&gt;Err' :Short name%xml '&lt;/string&gt;
							&lt;/value&gt;
						&lt;/slot&gt;
						&lt;slot name="Name"&gt;
							&lt;value&gt;
								&lt;string&gt;' :Name%xml '&lt;/string&gt;
							&lt;/value&gt;
						&lt;/slot&gt;												
						&lt;slot name="Accuracy"&gt;
							&lt;value&gt;
								&lt;string&gt;' :Accuracy%xml '&lt;/string&gt;
							&lt;/value&gt;
						&lt;/slot&gt;
						&lt;slot name="Resolution"&gt;
							&lt;value&gt;
								&lt;string&gt;' :Resolution%xml '&lt;/string&gt;
							&lt;/value&gt;
						&lt;/slot&gt;
						&lt;slot name="SignificantDigits"&gt;
							&lt;value&gt;
								&lt;string&gt;' :SignificantDigits%xml '&lt;/string&gt;
							&lt;/value&gt;
						&lt;/slot&gt;
						&lt;slot name="BaseRangeable"&gt;
							&lt;value&gt;'
								do :BaseRangeable {
									if not $reportedDatatypes  =~ oid%wildsp then
										variable 'reportedDatatypes' append oid ' ' close
										subreport '_portdt' type run 
									else
										'&lt;object href="#_' oid '"&gt;&lt;/object&gt;'
									endif
								}	
							'&lt;/value&gt;
						&lt;/slot&gt;
					&lt;/object&gt;
'</report>
				<report>_portdtUnit()
/* Units are currently not reused */
newline
'						&lt;slot name="Unit"&gt;
							&lt;value&gt;' newline
do :Unit { 
		_portdtUnitDetails()
}							
'							&lt;/value&gt;
						&lt;/slot&gt; ' 
newline
						</report>
				<report>_portdtUnitDetails()
variable 'reportedDatatypes' append oid ' ' close
'								&lt;object oid="_'oid'" type="Object_Unit_sysadmin_3536996865"&gt;
									&lt;slot name="Short name"&gt;
										&lt;value&gt;
											&lt;string&gt;Err':Short name'&lt;/string&gt;
										&lt;/value&gt;
									&lt;/slot&gt;
									&lt;slot name="Name"&gt;
										&lt;value&gt;
											&lt;string&gt;' :Name%xml '&lt;/string&gt;
										&lt;/value&gt;
									&lt;/slot&gt;															
									&lt;slot name="Factor"&gt;
										&lt;value&gt;
											&lt;string&gt;':Factor'&lt;/string&gt;
										&lt;/value&gt;
									&lt;/slot&gt;										
									&lt;slot name="Offset"&gt;
										&lt;value&gt;
											&lt;string&gt;':Offset'&lt;/string&gt;
										&lt;/value&gt;
									&lt;/slot&gt;										
									&lt;slot name="Symbol"&gt;
										&lt;value&gt;
											&lt;string&gt;':Symbol'&lt;/string&gt;
										&lt;/value&gt;
									&lt;/slot&gt;' newline
									_portdtQuantity()
									_portdtUnitReference()
'								&lt;/object&gt;' newline</report>
				<report>_portdtUnitReference()
/* Unit references are currently not reused */
'						&lt;slot name="UnitReference"&gt;
							&lt;value&gt;' newline
do :UnitReference { 
		_portdtUnitDetails()
}								
'							&lt;/value&gt;
						&lt;/slot&gt; ' 
						newline</report>
				<report>_ports()
/* Generating the ports information */
'&lt;PORTS&gt;' 
	foreach .( In* | Out* | ServerPort | ClientPort | PowerPort) { subreport '_port data' run}
'&lt;/PORTS&gt;'</report>
				<report>_ProduceErrorModel()
/* Creates error model from FAA and FDA hierarchy reusing types in type prototype pattern */
subreport '_translators' run

$error = 'F'
variable 'visitedGraphs' write ' ' oid ' ' close
$prototypes = ' '
_CheckIfDuplicatesInFunctionTypeDefinition()

/* if types are not reused then produce error model */
if $error = 'F' then

$reportedGraphs = ' ' 
$reportedDatatypes = ' ' 
$modes = 'Omission
Commission
Value
Timing'

filename subreport '_default directory' run id%file '_to_ErrorModel.mxm' encoding 'UTF-8' write
	'&lt;?xml version="1.0" encoding="UTF-8"?&gt;' newline
	'&lt;gxl xmlns="http://www.metacase.com/gxlGOPRR"&gt;' newline
	variable 'reportedGraphs' append oid ' ' close
	_DepGraph()
	'&lt;/gxl&gt;'
close
internal 'fileInPatch: "' subreport '_default directory' run id%file '_to_ErrorModel.mxm' '"' execute

endif</report>
				<report>_propsDeeplyInHTML()
do :() 
{	'&lt;tr&gt;&lt;th align="left" valign="top" bgcolor="#F2F2F2"&gt;'
	to '%xml' translate containers endto 
	'&lt;/th&gt;&lt;td valign="top" style="white-space: pre-wrap;"&gt;'
	@skip = _skipPropRecursion()
	if contents then
		@sep = ''
		dowhile contents { 
			@sep
			if @skip or metatype = 'Text' or metatype = 'String' then
				id%xml
			else
				'&lt;a href="#' oid '"&gt;' id%trunc80%xml '&lt;/a&gt;' 
			endif
			@sep = __(if metatype = 'Text' then '&lt;br /&gt;' else ', ' endif)
		}
	else
		id%xml 
	endif
	'&amp;nbsp;&lt;/td&gt;&lt;/tr&gt;'
	if not @skip then
		do contents where metatype &lt;&gt; 'Text' and metatype &lt;&gt; 'String' 
		{	_extraTypesInHTML() 
		}
	endif
}</report>
				<report>_quantity()
/* Reports the quantity */
if not $reported_elements =~ oid%wildsp then
	variable 'reported_elements' append oid ' ' close
	variable 'type_name' write type%minus%upper close
	_quantity_details()
endif	</report>
				<report>_quantity_details()
/* Reports the Quantity details */
if $EAXMLoids =~oid%wildsp then
	local 'QuantityName' write :Short name; close
	local 'QuantityShortName' write @QuantityName%toShortName close
	local 'nameValue' write :Name;%xml close 
	newline
	'&lt;!-- ' $type_name ' name: ' 
	if @nameValue &lt;&gt; '' then
		@nameValue ' (' @QuantityShortName ')'
	else
		@QuantityShortName
	endif
	' --&gt;' newline 
	'&lt;!-- path: ' variable oid '_path' read ' --&gt;' newline 
	'&lt;' $type_name ' UUID="' :__UUID '"&gt;' newline 
	'&lt;SHORT-NAME&gt;' @QuantityShortName '&lt;/SHORT-NAME&gt;' newline
	if @nameValue &lt;&gt; '' then
		'&lt;NAME&gt;' :Name;%xml '&lt;/NAME&gt;' 
	endif
	subreport '_description' run
	if :AmountOfSubstanceExp; then '&lt;AMOUNT-OF-SUBSTANCE-EXP&gt;' :AmountOfSubstanceExp;%xml '&lt;/AMOUNT-OF-SUBSTANCE-EXP&gt;' newline endif
	if :ElectricCurrentExp; then '&lt;ELECTRIC-CURRENT-EXP&gt;' :ElectricCurrentExp;%xml '&lt;/ELECTRIC-CURRENT-EXP&gt;' newline endif
	if :LengthExp; then '&lt;LENGTH-EXP&gt;' :LengthExp;%xml '&lt;/LENGTH-EXP&gt;' newline endif
	if :LuminousIntensityExp; then '&lt;LUMINOUS-INTENSITY-EXP&gt;' :LuminousIntensityExp;%xml '&lt;/LUMINOUS-INTENSITY-EXP&gt;' newline endif
	if :MassExp; then '&lt;MASS-EXP&gt;' :MassExp;%xml '&lt;/MASS-EXP&gt;' newline endif
	if :ThermodynamicTemperatureExp; then '&lt;THERMODYNAMIC-TEMPERATURE-EXP&gt;' :ThermodynamicTemperatureExp;%xml '&lt;/THERMODYNAMIC-TEMPERATURE-EXP&gt;' newline endif
	if :TimeExp; then '&lt;TIME-EXP&gt;' :TimeExp;%xml '&lt;/TIME-EXP&gt;' newline endif
	'&lt;/' $type_name '&gt;' newline
endif</report>
				<report>_quantity_element()
if not ($data-types_modeled =~ oid%wildsp) and not ($reported_elements =~ oid%wildsp) then
	variable 'data-types_modeled' append oid ' '	close 
	variable 'reported_elements' append oid ' ' close 
	variable 'type_name' write type%minus%upper close
	variable $modelOid append
		_quantity_details()
	close
endif</report>
				<report>_RangeableValueType()
/* Reporting the RangeableValueType information */
'&lt;ACCURACY&gt;' :Accuracy;%xml '&lt;/ACCURACY&gt;' newline
'&lt;RESOLUTION&gt;' :Resolution;%xml '&lt;/RESOLUTION&gt;' newline
if :SignificantDigits; then '&lt;SIGNIFICANT-DIGITS&gt;' :SignificantDigits;%xml '&lt;/SIGNIFICANT-DIGITS&gt;' newline endif
do :BaseRangeable; { '&lt;BASE-RANGEABLE-REF TYPE="' type%minus%upper'"&gt;' variable oid '_path' read '&lt;/BASE-RANGEABLE-REF&gt;' newline } 
</report>
				<report>_reportError_level0(@errorType)
/* Reporting the undefined value */
'Undefined ' @errorType' value for ' id ' &lt;' type '&gt; '</report>
				<report>_reportError_level1(@errorType)
/* Reporting the undefined value and hierarchy for it */
'Undefined ' @errorType' value for ' id ' &lt;' type '&gt; ' 
</report>
				<report>_reportError_level2(@errorType)
/* Reporting the undefined value and hierarchy for it */
'Undefined ' @errorType' value for ' id ' &lt;' type '&gt; '
if type;1 &lt;&gt; 'Package' then
	'in ' id;1 ' &lt;' type;1 '&gt; | ' id;2 ' &lt;' type;2 '&gt; '
endif</report>
				<report>_reportError_level3(@errorType)
/* Reporting the undefined value and hierarchy for it */
'Undefined ' @errorType' value for ' id ' &lt;' type '&gt; ' 
if type;1 &lt;&gt; 'Package' then
	'in ' id;1 ' &lt;' type;1 '&gt; | ' id;2 ' &lt;' type;2 '&gt; | ' id;3 ' &lt;' type;3 '&gt; '
endif</report>
				<report>_reportWarnings()
/* Reporting the index and sets the legal variable as F (=is not going to be EAXML exportable) */
/* warnings counter is added */
$warnings++%null

if $LiveCheck = 'F' then /* Index is generated only for full check not for LiveCheck pane */
	'(' $warnings ') '
endif

$legal = 'F'</report>
				<report>Report '_requirement'
/* Generating the Requirements */
if $EAXMLoids =~oid%wildsp then
	if not $reported_elements =~ oid%wildsp then
		variable 'reported_elements' append oid ' ' close
		variable 'type_name' write type%minus%upper close
		local 'RequirementName' write :Short name; close
		local 'RequirementShortName' write @RequirementName%toShortName close
		local 'nameValue' write :Name;%xml close 
		newline
		'&lt;!-- ' $type_name ' name: ' 
		if @nameValue &lt;&gt; '' then
			@nameValue ' (' @RequirementShortName ')'
		else
			@RequirementShortName
		endif
		' --&gt;' newline
		'&lt;!--  path: ' variable oid '_path' read ' --&gt;' newline
		'&lt;' $type_name ' UUID="' :__UUID '"&gt;' newline
		'&lt;SHORT-NAME&gt;' @RequirementShortName '&lt;/SHORT-NAME&gt;' newline
		if @nameValue &lt;&gt; '' then
			'&lt;NAME&gt;' @nameValue '&lt;/NAME&gt;' newline
		endif
		subreport '_description' run
		if :Formalism; then
			'&lt;FORMALISM&gt;' :Formalism;%xml '&lt;/FORMALISM&gt;' newline
		endif
		if :Url; then
			'&lt;URL&gt;' :Url;%xml '&lt;/URL&gt;' newline
		endif
		if :Modes; then
			do :Modes
			{	'&lt;MODE-REFS&gt;' newline
				'&lt;MODE-REF TYPE="MODE"&gt;' variable oid '_path' read '&lt;/MODE-REF&gt;' newline
				'&lt;/MODE-REFS&gt;' newline
			}

		endif

		if :Kind; then
			'&lt;KIND&gt;' :Kind%minus%upper '&lt;/KIND&gt;' newline
		endif
		'&lt;/' $type_name '&gt;'
	endif
endif
endreport</report>
				<report>_req_hierarchy(@tab)
local 'tab' append '	' close
do :Child hierarchy; {
	@tab '['
	id ']' newline
	_req_hierarchy(@tab)
}</report>
				<report>Report '_return type'
if decompositions then
	do decompositions {
		do :Type { type }
	}
else
	'HardwareComponentType'
endif
endreport</report>
				<report>_safetyGoals()
/* Reporting the SafetyGoals */
'&lt;SAFETY-GOALS&gt;'
foreach .SafetyGoal 
{	variable 'type_name' write type%minus%upper close
	local 'nameValue' write :Name;%xml close
	newline
	'&lt;!-- ' $type_name ' name: ' 
	if @nameValue &lt;&gt; '' then
		@nameValue ' (' :Short name; ')'
	else
		:Short name;
	endif
	' --&gt;' newline
	'&lt;!-- path: ' variable oid '_path' read ' --&gt;' newline
	'&lt;' $type_name ' UUID="' :__UUID '"&gt;' newline 
	'&lt;SHORT-NAME&gt;' :Short name; '&lt;/SHORT-NAME&gt;' newline
	if @nameValue &lt;&gt; '' then
		'&lt;NAME&gt;' @nameValue '&lt;/NAME&gt;' newline
	endif
	subreport '_description' run
	'&lt;HAZARD-CLASSIFICATION&gt;ASIL_' :Safety level; '&lt;/HAZARD-CLASSIFICATION&gt;' newline

	if :Safe states; then
		'&lt;SAFE-STATE-REFS&gt;' newline
		do :Safe states; 
		{	'&lt;SAFE-STATE-REF TYPE="MODE"&gt;' variable oid '_path' read '&lt;/SAFE-STATE-REF&gt;' newline }
		'&lt;/SAFE-STATE-REFS&gt;' newline
	endif

	'&lt;DERIVED-FROM-REFS&gt;' newline
	do ~SafetyGoal~DerivedFrom.HazardousEvent 
	{	'&lt;DERIVED-FROM-REF TYPE="HAZARDOUS-EVENT"&gt;' variable oid '_path' read '&lt;/DERIVED-FROM-REF&gt;' newline }
	'&lt;/DERIVED-FROM-REFS&gt;' newline

	'&lt;REQUIREMENT-REFS&gt;' newline
	do ~SafetyGoal~Requirement.(*Requirement) 
	{	'&lt;REQUIREMENT-REF TYPE="' type%minus%upper '"&gt;' variable oid '_path' read '&lt;/REQUIREMENT-REF&gt;' newline }
	'&lt;/REQUIREMENT-REFS&gt;' newline
	'&lt;/' $type_name '&gt;' newline
}
'&lt;/SAFETY-GOALS&gt;' newline
</report>
				<report>_StackforEAXMLPath()
/* Producing the path for the element node */
@revStack = @sep = ''
local 'temp' write variable oid '_path' read close
/* Path is set only for the elements which don't have the path set already */
if @temp = '' then
	do stack 
	{ 
		if type = 'HardwareComponentType' then
			do :Type { local 'myName' write :Short name; close }
		else
			if type =~ '*FunctionType' then
				local 'myName' write :FunctionName; close
			else
				if metatype &lt;&gt; 'Relationship' then
					if type &lt;&gt; 'SystemModel' then
						local 'myName' write :Short name; close
					else
						local 'myName' write id close
					endif
				else
					local 'myName' write id close
				endif				
			endif
		endif

		if metatype = 'Graph' then 
			if type = 'Package' then 
				@revStack = __(@myName @sep @revStack)
   		   @sep = '/'
			endif
			if type = 'TimingModel' or type = 'BehaviorGraph' or type = 'Dependability' or type = 'VehicleFeatureModel' or type = 'EnvironmentModel' or type = 'RequirementsModel' then
				@revStack = __(@myName @sep @revStack)
				@sep = '/'
				@revStack = __(@myName @sep @revStack)
	   	   @sep = '/'
			endif
		endif
		
		/* Prototypes, Pins, Ports, AFT, DFT, HardwareComponentType, HardwarePortConenctor */
		/* Events, Constraints */
		/* Modes, FunctionBehaviors, FunctionTriggers, FaultFailures, Item, Feature, VehicleFeature, SafetyGoal, HazardousEvent, Hazard */
		if type =~ '*Prototype' Or type =~ '*Port' Or type =~ '*Pin*' Or type =~ '*FunctionType' Or type = 'HardwareComponentType' or type = 'HardwarePortConnector' or type =~ '*Event*' or type =~ '*Constraint' or type =~ 'Mode*' or type = 'FunctionBehavior' or type = 'FunctionTrigger' or type = 'FeatureFlaw' or type = 'FaultFailure' or type = 'Item' or type =~ '*Feature' or type = 'SafetyGoal' or type = 'HazardousEvent' or type = 'Hazard' then 
			@revStack = __(@myName @sep @revStack)
			@sep = '/'
		endif

		/* Requirements, RequirementsModel, UseCase, OperationalSituation */
/*		if type =~ '*Requirement' or type = 'RequirementsModel' or type = 'UseCase' or type = 'OperationalSituation' then */
		if type =~ '*Requirement' or type = 'UseCase' or type = 'OperationalSituation' then

/*			if type = 'RequirementsModel' then 
				@revStack = __(@myName @sep @revStack)
				@sep = '/'
			endif*/
			@revStack = __(@myName @sep @revStack)
			@sep = '/'
		endif
		
		/* Datatypes */
		if type = 'ArrayDatatype' Or type = 'CompositeDatatype' Or type = 'EABoolean' Or type = 'EANumerical' Or type = 'EAString' Or type = 'Enumeration' Or type = 'RangeableValueType' Or type = 'Unit' Or type = 'Quantity'  or type = 'FunctionClientServerInterface' then 
			@revStack = __(@myName @sep @revStack)
			@sep = '/'
		endif
		
		/* Relationships */
		if metatype = 'Relationship' then
			@revStack = __(@myName @sep @revStack)
			@sep = '/'
		endif
		
		if type = 'SystemModel' then 
			@revStack = __(@myName @sep @revStack)
			@sep = '/'
		endif

	}
	variable oid '_path' write '/' @revStack close
endif</report>
				<report>_subfeatures()
/* Goes through the subfeatures to get the correct path for each feature */
do ~Parent~Child.(){
	_StackforEAXMLPath()
	if ~Parent; then
		_subfeatures()
	endif
}
</report>
				<report>_symErrInPorts()
do ~(FaultIn | refer_to)
{  variable 
      do #() { 'y' oid } 
   write 
      do &gt;() { y }
   close
}
do decompositions
{  foreach .FaultInPort
   orderby 
		local 'relY' write variable 'y' oid read close
			if @relY then @relY else '9999999' endif NUM ,
		y NUM 
   {  id newline  }
}</report>
				<report>_symErrLeftPorts()
@centre = x
do _symErrInPorts() where id
{	@x = x
	if not @x or not @x &gt; @centre num then
		id newline
	endif
}
do _symErrOutPorts() where id
{	@x = x
	if @x and not @x &gt; @centre num then 
		id newline
	endif 
}
</report>
				<report>_symErrOutPorts()
do ~(FailureOut | refer_to)
{  variable 
      do #() { 'y' oid } 
   write 
      do &gt;() { y }
   close
}
do decompositions
{  foreach .FailureOutPort
   orderby 
		local 'relY' write variable 'y' oid read close
			if @relY then @relY else '9999999' endif NUM ,
		y NUM 
   {  id newline  }
}</report>
				<report>_symErrRightPorts()
@centre = x
do _symErrOutPorts() where id
{	@x = x
	if not @x or @x &gt; @centre num then
		id newline
	endif
}
do _symErrInPorts() where id
{	@x = x
	if @x and @x &gt; @centre num then 
		id newline
	endif 
}
</report>
				<report>_symFAInOutPorts()
do decompositions
{  foreach .(InOutFlowPort | PowerPort)
   orderby 
		x NUM 
   {  id newline  }
}
</report>
				<report>_symFAInPorts()
do ~(InFlowPort | ClientPort)
{  variable 
      do #() { 'y' oid } 
   write 
      do &gt;() { y }
   close
}
do decompositions
{  foreach .(InFlowPort | ClientPort)
   orderby 
		local 'relY' write variable 'y' oid read close
			if @relY then @relY else '9999999' endif NUM ,
		y NUM 
   {  id newline  }
}
</report>
				<report>_symFALeftPorts()
@centre = x
do _symFAInPorts() where id
{	@x = x
	if not @x or not @x &gt; @centre num then
		id newline
	endif
}
do _symFAOutPorts() where id
{	@x = x
	if @x and not @x &gt; @centre num then 
		id newline
	endif 
}</report>
				<report>_symFAOutPorts()
do ~(OutFlowPort | ServerPort)
{  variable 
      do #() { 'y' oid } 
   write 
      do &gt;() { y }
   close
}
do decompositions
{  foreach .(OutFlowPort | ServerPort)
   orderby 
		local 'relY' write variable 'y' oid read close
			if @relY then @relY else '9999999' endif NUM ,
		y NUM 
   {  id newline  }
}</report>
				<report>_symFARightPorts()
@centre = x
do _symFAOutPorts() where id
{	@x = x
	if not @x or @x &gt; @centre num then
		id newline
	endif
}
do _symFAInPorts() where id
{	@x = x
	if @x and @x &gt; @centre num then 
		id newline
	endif 
}
</report>
				<report>_symHDAInOutHorizontalPorts()
/* show moved labels to vertical border line */

do ~(*Pin_*)#(*PinInOut) {
	id newline
}
</report>
				<report>_symHDAInOutPorts()
do ~(*Pin_*)
{  variable 
      do #() { 'x' oid } 
   write 
      do &gt;() { x }
   close
}
do decompositions
{  foreach .(*PinInOut) 
   orderby 
		local 'relX' write variable 'x' oid read close
			if @relX then @relX else '9999999' endif NUM ,
		x NUM 
   {  id newline  }
}


</report>
				<report>_symHDAInPorts()
do ~(*Pin_To)
{  variable 
      do #() { 'y' oid } 
   write 
      do &gt;() { y }
   close
}
do decompositions
{  foreach .(*PinIn)
   orderby 
		local 'relY' write variable 'y' oid read close
			if @relY then @relY else '9999999' endif NUM ,
		y NUM 
   {  id newline  }
}</report>
				<report>_symHDALeftPorts()
@centre = x
@left = left
do _symHDAInPorts() where id
{	@x = x
	if not @x or not @x &gt; @centre num then
		id newline
	endif
}
do _symHDAOutPorts() where id
{	@x = x
	if @x and not @x &gt; @centre num then 
		id newline
	endif 
}
do _symHDAInOutHorizontalPorts() where id
{	@x = x
	if @x and @x = @left num then 
		id newline
	endif 
}</report>
				<report>_symHDAOutPorts()
do ~(*Pin_From)
{  variable 
      do #() { 'y' oid } 
   write 
      do &gt;() { y }
   close
}
do decompositions
{  foreach .(*PinOut)
   orderby 
		local 'relY' write variable 'y' oid read close
			if @relY then @relY else '9999999' endif NUM ,
		y NUM 
   {  id newline  }
}</report>
				<report>_symHDARightPorts()
@centre = x
@right = right
do _symHDAOutPorts() where id
{	@x = x
	if not @x or @x &gt; @centre num then
		id newline
	endif
}
do _symHDAInPorts() where id
{	@x = x
	if @x and @x &gt; @centre num then 
		id newline
	endif 
}
do _symHDAInOutHorizontalPorts() where id 
{	@x = x
	if @x and @x = @right num then 
		id newline
	endif 
}</report>
				<report>_symInOutPinConnected()
@oid = oid
do ~();1#(*PinInOut) where oid = @oid unique '1' 
{	'T'
}</report>
				<report>_symInOutPinDirection()
if ~();1 then /* port connected */
	do ~();1 
	{	/* find this port in one of the roles */
		@found = ''
		do #() where oid = oid;2 { @found = 'T' }
		if @found then
			@x = x
			if @x then
				if @x = left;2 num or x = right;2 num then @result = 'H' endif 
			endif
		endif
	} 
	@result
endif</report>
				<report>_symInOutPortConnected()
@oid = oid
do ~();1#(InOutFlowPort) where oid = @oid unique '1' 
{	'T'
}</report>
				<report>_symLegalType()
$givenValues = ''
$givenTypes = ''
$definedValues = ''
$definedTypes = ''
do :Values {
	do :Type {
		variable 'givenValues' append :Short name; ' ' close
		variable 'givenTypes' append type ' ' close		
	}
}
do :Types {
	do :User Attribute Definitions {
		do :Type {
			variable 'definedValues' append :Short name; ' ' close
			variable 'definedTypes' append type ' ' close		
		}
	}
}
if $givenValues &lt;&gt; $definedValues; then 
	'Given values do not match with defined values' 
endif
if $givenTypes &lt;&gt; $definedTypes; then 
	newline
	'Given types of values do not match with defined types' 
endif</report>
				<report>_symShowInOutPinIcons()
/* used to show role symbols if pin is connected */
do #(*PinInOut) {'T'}</report>
				<report>_symShowInOutPortIcons()
/* used to show role symbols if port is connected */
do #(InOut*) {'T'}</report>
				<report>_sym_hide_PinName()
/* hides pin name for library symbol from perimeter when connected to a role */
@oid = oid
do ~();1#(*PinInOut) where oid = @oid unique '1' 
{	'T'
}
</report>
				<report>_sym_hide_PortName()
/* hides port name for library symbol from perimeter when connected to a role */
@oid = oid
do ~();1#(PowerPort | InOutFlowPort) where oid = @oid unique '1' 
{	'T'
}
</report>
				<report>_sym_InPortSubSymbolXCondition()

if ~();1 then /* port connected */
	do ~();1 
	{	/* find this port in one of the roles */
		@found = ''
		do #() where oid = oid;2 { @found = 'T' }
		if @found then
			@x = x
			if @x then
				if x &gt; x;2 num then @result = 'T' endif 
			endif
		endif
	} 
	@result
endif</report>
				<report>_sym_InRoleXCondition()
if ~();1 then /* port connected */
	@x = x
	if @x then
		if x &gt; x;1 num then 'T' endif 
	endif
endif</report>
				<report>_sym_OutPortSubSymbolXCondition()

if ~();1 then /* port connected */
	do ~();1 
	{	/* find this port in one of the roles */
		@found = ''
		do #() where oid = oid;2 { @found = 'T' }
		if @found then
			@x = x
			if @x then
				if not x &gt; x;2 num then @result = 'T' endif 
			endif
		endif
	} 
	@result
endif</report>
				<report>_sym_OutRoleXCondition()
if ~();1 then
	@x = x
	if @x then
		if x &lt; x;1 num then 'T' endif 
	endif
endif</report>
				<report>_testAndReport(@myPropertyType)
/* Testing and reporting the undefined property */
do :Type
{
	if not $datatypes =~ oid%wildsp then
		_reportWarnings()
		'Warning: ' id;2 ' &lt;' type;2 '&gt; has ' @myPropertyType' property defined as ' id;1 ' &lt;' type;1 '&gt;. This ' id ' &lt;' type '&gt; is not defined in anywhere in this hierarchy.' newline			
	endif
}
</report>
				<report>_timeStamp()
/* Generating the timestamp first to the myTime.txt and then read it to the myTime variable */
filename 'timeStamp.bat' write
'
for /f "skip=1" %%x in (''wmic os get localdatetime'') do if not defined mydate set mydate=%%x
set myDate=%mydate:~0,4%-%mydate:~4,2%-%mydate:~6,2%T%mydate:~8,2%:%mydate:~10,2%:%mydate:~12,2%
(echo.|set /p = "%myDate%")&gt;myTime.txt'
close 
external 'timeStamp.bat' executeblocking 
variable 'myTime' write
	filename 'myTime.txt' read 
close</report>
				<report>_timingTranslators()
to '%time
$EventChain $EVENT\-CHAIN
$EventFunctionClientServerPort $EVENT\-FUNCTION\-CLIENT\-SERVER\-PORT
$EventFunctionFlowPort $EVENT\-FUNCTION\-FLOW\-PORT
$EventFunction $EVENT\-FUNCTION
$ModeEvent $MODE\-EVENT
$EventFeatureFlaw $EVENT\-FEATURE\-FLAW
$EventFaultFailure $EVENT\-FAULT\-FAILURE
$ExternalEvent $EXTERNAL\-EVENT
$PrecedenceConstraint $PRECEDENCE\-CONSTRAINT
$ReactionConstraint $REACTION\-CONSTRAINT
$AgeConstraint $AGE\-CONSTRAINT
$InputSynchronizationConstraint $INPUT\-SYNCHRONIZATION\-CONSTRAINT
$OutputSynchronizationConstraint $OUTPUT\-SYNCHRONIZATION\-CONSTRAINT
$RepetitionConstraint $REPETITION\-CONSTRAINT
$DelayConstraint $DELAY\-CONSTRAINT
$SynchronizationConstraint $SYNCHRONIZATION\-CONSTRAINT
$ExecutionTimeConstraint $EXECUTION\-TIME\-CONSTRAINT
$SporadicConstraint $SPORADIC\-CONSTRAINT
$PatternConstraint $PATTERN\-CONSTRAINT
$PeriodicConstraint $PERIODIC\-CONSTRAINT
$ArbitraryConstraint $ARBITRARY\-CONSTRAINT
$BurstConstraint $BURST\-CONSTRAINT
$OrderConstraint $ORDER\-CONSTRAINT
$ComparisonConstraint $COMPARISON\-CONSTRAINT
$DesignFunctionPrototype $DESIGN\-FUNCTION\-PROTOTYPE
$AnalysisFunctionPrototype $ANALYSIS\-FUNCTION\-PROTOTYPE
$HardwareComponentPrototype $HARDWARE\-COMPONENT\-PROTOTYPE
$AnalysisFunctionType $ANALYSIS\-FUNCTION\-TYPE
$DesignFunctionType $DESIGN\-FUNCTION\-TYPE
$HardwareComponentType $HARDWARE\-COMPONENT\-TYPE
'
endto</report>
				<report>Report '_type close'
/* Generating the closing tag for the xml */
'&lt;/' type%minus%upper '&gt;'
endreport</report>
				<report>_TypeDeclaration()
/* Reports graphs in which type is declared: EAType referring to this graph type */
do graphs where type = 'Package' 
{	foreach .EAType 
	{	@found = ''
		do decompositions where oid = oid;3 
		{	id ' is declared in ' id;2 
			@found = 'T'
		}
		if @found then ' as EAType ' id newline endif
	}
}</report>
				<report>_ua-values()
/* Generating the ua-values */
if :UserAttributeValues; then 
	'&lt;UA-VALUES&gt;'
	do :UserAttributeValues 
	{	'&lt;USER-ATTRIBUTE-VALUE&gt;' newline
		if :Short name; then
			'&lt;SHORT-NAME&gt;' :Short name; '&lt;/SHORT-NAME&gt;' newline
		endif
		subreport '_description' run
		if :Key; then
			'&lt;KEY&gt;' :Key;%xml '&lt;/KEY&gt;' newline
		endif
		if :Value; then
			'&lt;VALUE&gt;' :Value;%xml '&lt;/VALUE&gt;' newline
		endif
		'&lt;/USER-ATTRIBUTE-VALUE&gt;' newline
	}
	'&lt;/UA-VALUES&gt;' newline
endif</report>
				<report>_UnconnectedPorts()

_translators()
$report = 'F'

id ' &lt;' type '&gt; has following unconnected ports:' newline
foreach .(*Prototype)
{
	$found = 'F'
	$ports = ' '
	$unused_ports = ''
	do #() { variable 'ports' append oid ' ' close }
	do decompositions {
		foreach .(*Port) {
			if not $ports =~ oid%wildsp then
				variable 'unused_ports' append '- ' id ' &lt;' type '&gt;' newline close
				$found = 'T'
			endif
		}
	}
	if $found = 'T' then
		id ' &lt;' type '&gt;' newline
		$unused_ports newline
		$report = 'T'
	endif
}
if $report = 'F' then 'none' endif</report>
				<report>_undefinedType()
/* Reporting the undefined Type for Ports */
foreach .(*Prototype) 
{	$undefinedTypeFound = 'F'
	do decompositions 
	{	foreach .(*Port) where :Type = '' { $undefinedTypeFound = 'T' }}
	/* Reporting the results */
	if $undefinedTypeFound = 'T' then
		@delimeter = ''
		_reportWarnings()
		'Warning: Prototype: ' id 
		if $extendedCheck = 'T' then
			' in the model ' id;1 ' &lt;' type;1 '&gt;'
		endif
		' has following port(s) with undefined Type: '
		do decompositions 
		{	foreach .(*Port) where :Type = ''
			{	@delimeter id ' &lt;' type '&gt; '
				@delimeter = ', '
			}
		}
		@delimeter = ''
		newline
	endif
	do decompositions 
	{	foreach .() {	subreport '_name checks' run }}	
}
$undefinedTypeFound = 'F'
</report>
				<report>_unit()
/* Reporting the Unit details */
if not $reported_elements =~ oid%wildsp then
	variable 'reported_elements' append oid ' ' close
	variable 'type_name' write type%minus%upper close
	_unit_details()
	
	/* Report the Quantity definition */
	do :Quantity; { _quantity() }
endif</report>
				<report>_unit_details()
if $EAXMLoids =~oid%wildsp then
	/* Reports the Unit details */
	local 'UnitName' write :Short name; close
	local 'UnitShortName' write @UnitName%toShortName close
	local 'nameValue' write :Name;%xml close 
	'&lt;!-- ' $type_name ' name: ' 
	if @nameValue; then
		@nameValue ' (' @UnitShortName ')'
	else
		@UnitShortName
	endif
	' --&gt;' newline 
	'&lt;!-- path: ' variable oid '_path' read ' --&gt;' newline 
	'&lt;' $type_name ' UUID="' :__UUID '"&gt;' newline 
	'&lt;SHORT-NAME&gt;' @UnitShortName '&lt;/SHORT-NAME&gt;' newline
	if @nameValue; then
		'&lt;NAME&gt;' :Name;%xml '&lt;/NAME&gt;' 
	endif
	subreport '_description' run
	'&lt;FACTOR&gt;' :Factor;%xml '&lt;/FACTOR&gt;' newline
	'&lt;SYMBOL&gt;' :Symbol;%xml '&lt;/SYMBOL&gt;' newline
	'&lt;OFFSET&gt;' :Offset;%xml '&lt;/OFFSET&gt;' newline
	do :UnitReference; { '&lt;REFERENCE-REF TYPE="' type%minus%upper'"&gt;' variable oid '_path' read '&lt;/REFERENCE-REF&gt;' newline } 
	do :Quantity; { '&lt;QUANTITY-REF TYPE="' type%minus%upper'"&gt;' variable oid '_path' read '&lt;/QUANTITY-REF&gt;' newline } 
	'&lt;/' $type_name '&gt;'
endif

do :UnitReference 
{	if not $reported_elements =~ oid%wildsp then
		variable 'reported_elements' append oid ' ' close
		variable 'type_name' write type%minus%upper close
		_unit_details()
		do :Quantity { _quantity() }
	endif
}

do :Quantity { _quantity() }
</report>
				<report>_useCases()
/* Reporting the UseCases */
'&lt;USE-CASES&gt;' newline
foreach .UseCase 
{
	variable 'type_name' write type%minus%upper close
	local 'nameValue' write :Name;%xml close
	'&lt;!-- ' type%time%minus%upper ' name: ' 
	if @nameValue &lt;&gt; '' then
		@nameValue ' (' :Short name; ')'
	else
		:Short name;
	endif
	' --&gt;' newline
	'&lt;!-- path: ' variable oid '_path' read ' --&gt;' newline
	'&lt;' $type_name ' UUID="' :__UUID '"&gt;' newline 
	'&lt;SHORT-NAME&gt;' :Short name; '&lt;/SHORT-NAME&gt;' newline
	if @nameValue &lt;&gt; '' then
		'&lt;NAME&gt;' @nameValue '&lt;/NAME&gt;' newline
	endif
	subreport '_description' run
	'&lt;EXTENSION-POINTS&gt;' newline
	do :Extension points 
	{
		'&lt;EXTENSION-POINT&gt;' newline
		'&lt;SHORT-NAME&gt;' :Short name; '&lt;/SHORT-NAME&gt;' newline
		'&lt;NAME&gt;' :Name '&lt;/NAME&gt;' newline
		subreport '_description' run
		'&lt;/EXTENSION-POINT&gt;' newline
	}
	'&lt;/EXTENSION-POINTS&gt;' newline
	'&lt;/' $type_name '&gt;' newline
}
'&lt;/USE-CASES&gt;' newline</report>
				<report>_validateArrayDatatype()
/* Validation checks for ArrayDatatypes */
subreport '_name checks' run
if not :Type; then
	_reportWarnings()
	'Warning: '
	if type;1 &lt;&gt; 'Package' then
		/* When the Type is used in some FAA/FDA model */	
		'Undefined Type value for ' id ' &lt;' type '&gt; '
		_extendedCheckOutput_level2()
	else
		/* When the Type is defined in Package model */	
		 'Undefined Type value for ' id ' &lt;' type '&gt; ' 
		_extendedCheckOutput_level1()
	endif
	newline
endif</report>
				<report>_validateCompositeDatatype()
/* Validation checks for CompositeDatatypes */
subreport '_name checks' run
if not :DatatypePrototypes; then
	_reportWarnings()
	'Warning: ' 
	if type;1 &lt;&gt; 'Package' then
		/* When the Type is used in some FAA/FDA model */	
		 id ' &lt;' type '&gt; used in ' id;1 ' &lt;' type;1 '&gt; does not have any DatatypePrototypes defined '
		_extendedCheckOutput_level2()
	else
		/* When the Type is defined in Package model */	
		 id ' &lt;' type '&gt; does not have any DatatypePrototypes defined '
		_extendedCheckOutput_level1()
	endif
	newline
endif

@duplicateEADataTypePrototypes = ' '
do :DatatypePrototypes; 
{	
	@short = :Short name;
	if not @duplicateEADataTypePrototypes =~ @short%wildsp; then
		local 'duplicateEADataTypePrototypes' append :Short name; ' ' close
	else
		_reportWarnings()
		'Warning: '
		if type;2 &lt;&gt; 'Package' then
			/* When the Type is used in some FAA/FDA model */	
			 id ' &lt;' type '&gt; defined several times among DatatypePrototypes in ' id;1 ' &lt;' type;1 '&gt; | ' id;2 ' &lt;' type;2 '&gt; '
			_extendedCheckOutput_level3()
		else
			/* When the Type is defined in Package model */	
			 id ' &lt;' type '&gt; defined several times among DatatypePrototypes in ' id;1 ' &lt;' type;1 '&gt; ' 
			_extendedCheckOutput_level2()
		endif
		newline 
	endif

	subreport '_name checks' run

	if :Type = '' then
		_reportWarnings()
		'Warning: ' 
		if type;2 &lt;&gt; 'Package' then
			/* When the Type is used in some FAA/FDA model */	
			'Undefined Type value for ' id ' &lt;' type '&gt; in ' id;1 ' &lt;' type;1 '&gt; | ' id;2 ' &lt;' type;2 '&gt; '
			_extendedCheckOutput_level3()
		else
			/* When the Type is defined in Package model */	
			 'Undefined Type value for ' id ' &lt;' type '&gt; ' 
			_extendedCheckOutput_level2()
		endif
		newline
	endif

	foreach .CompositeDatatype; where oid &lt;&gt; oid;2 
	{	do :DatatypePrototypes 
		{	if oid = oid;2 then 
				if not $reported_objects =~ oid%wildsp; then
					_reportWarnings()
					'Warning: '
					if type;4 &lt;&gt; 'Package' then
						/* When the Type is used in some FAA/FDA model */	
						'DatatypePrototype ' id ' &lt;' type '&gt; is used among several composite datatypes, e.g. ' id;1 ' &lt;' type;1 '&gt; '
						_extendedCheckOutput_level3()
					else
						/* When the Type is defined in Package model */	
						'DatatypePrototype ' id ' &lt;' type '&gt; is used among several composite datatypes, e.g. ' id;1 ' &lt;' type;1 '&gt; '
						_extendedCheckOutput_level4()
					endif
					newline
					variable 'reported_objects' append oid ' ' close
				endif
			endif
		}
	}
}</report>
				<report>_validateDataTypes()
/* Validating all the datatypes */

/* EANumerical datatype */
if type = 'EANumerical' then 
	_validateEANumericals()
endif

/* EAString datatype */
if type = 'EAString' then 
	_validateEAStrings()
endif	

/* EABoolean datatype */
if type = 'EABoolean' then 
	_validateEABooleans()
endif	

/* RangeableValueType datatype */
if type = 'RangeableValueType' then 
	_validateRangeableValueType()
endif
	
/* Enumeration datatype */
if type = 'Enumeration' then 
	_validateLiterals()
endif

/* Array datatype */
if type = 'ArrayDatatype' then 
	_validateArrayDatatype()
endif

/* Composite datatype */
if type = 'CompositeDatatype' then
	_validateCompositeDatatype()	
endif

/* Quantity */
if type = 'Quantity' then
	_validateQuantity()
endif

/* Unit */
if type = 'Unit' then
	_validateUnit()
endif</report>
				<report>_validateEABooleans()
subreport '_name checks' run</report>
				<report>_validateEANumericals()
/* Validation checks for EANumerical */
subreport '_name checks' run
do :Unit 
{	_validateUnit()
	do :Quantity { _validateQuantity() }
	do :UnitReference { _validateUnit() }
}
</report>
				<report>_validateEAStrings()
subreport '_name checks' run</report>
				<report>_validateFunctionsAndHardwareComponents()
@path = ' '

/* All the prototypes */
foreach .(*Prototype) 
{	subreport '_name checks' run
	@prototypeName = :Short name;
	if @path =~ @prototypeName%wildsp; then
		_reportWarnings()
		'Warning: ' id;1 ' contains several prototypes with the same name ' :Short name; newline
	else
		local 'path' append @prototypeName%var ' ' close
	endif

	do decompositions 
	{	if not $visited =~ oid%wildsp then
			variable 'visited' append oid ' ' close
			_validateFunctionsAndHardwareComponents()
		endif
	}
}


</report>
				<report>_validateLiterals()
/* Validation checks for Enumeration literals */
subreport '_name checks' run
@litValue = '0'
do :Literals {	@litValue++%null }

if not :Literals; then
	_reportWarnings()
	'Warning: ' id; ' &lt;' type '&gt; does not have any Literals defined '
	if type;1 &lt;&gt; 'Package' then
		_extendedCheckOutput_level2()
	else 
		_extendedCheckOutput_level1()
	endif
	newline
else
	if @litValue = '1' then
		_reportWarnings()
		'Warning: '
		if type;1 &lt;&gt; 'Package' then
			/* When the Type is used in some FAA/FDA model */
			id; ' &lt;' type '&gt; in ' id;1 ' &lt;' type;1 '&gt; has only one literal defined'
			if $extendedCheck = 'T' then
				' in the model ' id;2 ' &lt;' type;2 '&gt;'
			endif
		else
			/* When the Type is defined in Package model */	
			id; ' &lt;' type '&gt; has only one literal defined'
			if $extendedCheck = 'T' then
				' in the model ' id;1 ' &lt;' type;1 '&gt;'
			endif
		endif
		if $extendedCheck &lt;&gt; 'T' then
			'. Two or more expected.'
		endif
		newline
	endif
	do :Literals 
	{	if not id =/ '[a-zA-Z]([a-zA-Z0-9]|_[a-zA-Z0-9])*_?' then
			_reportWarnings()
			'Warning: '
			if type;2 &lt;&gt; 'Package' then
				/* When the Type is used in some FAA/FDA model */
				id;1 ' &lt;' type;1 '&gt; in ' id;2 ' &lt;' type;2 '&gt; has illegal character(s) in literal value ' id ' '
				_extendedCheckOutput_level3()
			else
				/* When the Type is defined in Package model */	
				id;1 ' &lt;' type;1 '&gt; has illegal character(s) in literal value ' id ' '
				_extendedCheckOutput_level2()
			endif
			newline
		endif
	}
endif</report>
				<report>_validateNamingForEAXML()
@path = ' '
foreach .( *Port | *Pin* ) 
{	subreport '_name checks' run }

/* All the prototypes */
foreach .(*Prototype) 
{	subreport '_name checks' run
	@prototypeName = :Short name;
	if @path =~ @prototypeName%wildsp; then
		_reportWarnings()
		'Warning: ' id;1 ' contains several prototypes with the same name ' :Short name; newline
	else
		local 'path' append @prototypeName%var ' ' close
	endif
	do decompositions 
	{	if not $visited =~ oid%wildsp then
			variable 'visited' append oid ' ' close
			_validateNamingForEAXML()
		endif
	}
}

_checkingForShortNameUniqueness()

/* Relationships */
subreport '_checkings for the relationships' run</report>
				<report>_validatePackageForEAXML()
variable 'packages_visited' append oid ' ' close
@path = ' '
foreach .( * | ^Comment | ^Generic* | ^User* ) {
	if @path =~ id%var%wildsp; then
		_reportWarnings()
		'Warning: ' :Short name;1 ' &lt;' type;1 '&gt; contains several elements with the same name/identifier ' id newline
	else
		local 'path' append id%var ' ' close
	endif
	do decompositions {
		if not $visited =~ oid%wildsp then
			variable 'visited' append oid ' ' close
			if (type = 'AnalysisFunctionType') or (type = 'DesignFunctionType') or (type = 'HardwareComponentType') then
				_validateNamingForEAXML()
			else
				if type = 'Package' then 
					_validatePackageForEAXML()
				else
					subreport '_checkEAXMLPath' type run
				endif
			endif
		else
			if type = 'Package' then
				_reportWarnings()
				'Warning: Recursive package structure found for package ' id newline
			else 
				if type = 'SystemModel' then
					_reportWarnings()
					'Warning: Several packages, like ' id;2 ' refer to the same system model ' id newline
				endif
			endif
		endif
	}
}

foreach .EAType {
	do decompositions {
		if not $visited =~ oid%wildsp then
			variable 'visited' append oid ' ' close
			if type = 'AnalysisFunctionType' or type = 'DesignFunctionType' then
				@fname = :FunctionName;
				if @path =~ @fname%wildsp; then
					_reportWarnings()
					'Warning: ' id;1 ' contains several elements with the same name ' :FunctionName; newline
				endif
				local 'path' append @fname ' ' close
			endif
			if type = 'HardwareComponentType' then
				do :Type { @hwname = :Short name; }
				if @path =~ @hwname%wildsp; then
					_reportWarnings()
					'Warning: ' id;1 ' contains several elements with the same name ' do :Type { :Short name; } newline
				endif
				local 'path' append @fname ' ' close
			endif
			_validateNamingForEAXML()
		endif
	}
}</report>
				<report>_validateQuantity()
/* Validation checks for Quantity */

/* AmountOfSubstanceExp is undefined */
if :AmountOfSubstanceExp = '' then
	_reportWarnings()
	@errorType = 'AmountOfSubstanceExp'
	'Warning: '
	if type;3 &lt;&gt; 'Package' then
		/* When the Type is used in some FAA/FDA model */	
		_reportError_level3(@errorType)
		_extendedCheckOutput_level4()
	else
		/* When the Type is defined in Package model */	
		_reportError_level2(@errorType)
		_extendedCheckOutput_level2()
	endif
	newline
endif

/* ElectricCurrentExp is undefined */
if :ElectricCurrentExp = '' then
	_reportWarnings()
	@errorType = 'ElectricCurrentExp'
	'Warning: '
	if type;3 &lt;&gt; 'Package' then
		/* When the Type is used in some FAA/FDA model */	
		_reportError_level3(@errorType)
		_extendedCheckOutput_level4()
	else
		/* When the Type is defined in Package model */	
		_reportError_level2(@errorType)
		_extendedCheckOutput_level2()
	endif
	newline
endif

/* LengthExp is undefined */
if :LengthExp = '' then
	_reportWarnings()
	@errorType = 'LengthExp'
	'Warning: '
	if type;3 &lt;&gt; 'Package' then
		/* When the Type is used in some FAA/FDA model */	
		_reportError_level3(@errorType)
		_extendedCheckOutput_level4()
	else
		/* When the Type is defined in Package model */	
		_reportError_level2(@errorType)
		_extendedCheckOutput_level2()
	endif
	newline
endif

/* LuminousIntensityExp is undefined */
if :LuminousIntensityExp = '' then
	_reportWarnings()
	@errorType = 'LuminousIntensityExp'
	'Warning: '
	if type;3 &lt;&gt; 'Package' then
		/* When the Type is used in some FAA/FDA model */	
		_reportError_level3(@errorType)
		_extendedCheckOutput_level4()
	else
		/* When the Type is defined in Package model */	
		_reportError_level2(@errorType)
		_extendedCheckOutput_level2()
	endif
	newline
endif

/* MassExp is undefined */
if :MassExp = '' then
	_reportWarnings()
	@errorType = 'MassExp'
	'Warning: '
	if type;3 &lt;&gt; 'Package' then
		/* When the Type is used in some FAA/FDA model */	
		_reportError_level3(@errorType)
		_extendedCheckOutput_level4()
	else
		/* When the Type is defined in Package model */	
		_reportError_level2(@errorType)
		_extendedCheckOutput_level2()
	endif
	newline
endif

/* ThermodynamicTemperatureExp is undefined */
if :ThermodynamicTemperatureExp = '' then
	_reportWarnings()
	@errorType = 'ThermodynamicTemperatureExp'
	'Warning: '
	if type;3 &lt;&gt; 'Package' then
		/* When the Type is used in some FAA/FDA model */	
		_reportError_level3(@errorType)
		_extendedCheckOutput_level4()
	else
		/* When the Type is defined in Package model */	
		_reportError_level2(@errorType)
		_extendedCheckOutput_level2()
	endif
	newline
endif

/* TimeExp is undefined */
if :TimeExp = '' then
	_reportWarnings()
	@errorType = 'TimeExp'
	'Warning: '
	if type;3 &lt;&gt; 'Package' then
		/* When the Type is used in some FAA/FDA model */	
		_reportError_level3(@errorType)
		_extendedCheckOutput_level4()
	else
		/* When the Type is defined in Package model */	
		_reportError_level2(@errorType)
		_extendedCheckOutput_level2()
	endif
	newline
endif
</report>
				<report>_validateRangeableValueType()
subreport '_name checks' run
/* Validation checks for RangeableValalueTypes */

/* Accuracy is undefined */
if :Accuracy = '' then
	_reportWarnings()
	@errorType = 'Accuracy'
	'Warning: '
	if type;1 &lt;&gt; 'Package' then
		/* When the Type is used in some FAA/FDA model */	
		_reportError_level1(@errorType)
		_extendedCheckOutput_level2()
	else
		/* When the Type is defined in Package model */	
		_reportError_level0(@errorType)
		_extendedCheckOutput_level1()
	endif
	newline
endif

/* Resolution is undefined */
if :Resolution = '' then
	_reportWarnings()
	@errorType = 'Resolution'
	'Warning: '
	if type;1 &lt;&gt; 'Package' then
		/* When the Type is used in some FAA/FDA model */	
		_reportError_level1(@errorType)
		_extendedCheckOutput_level2()
	else
		/* When the Type is defined in Package model */	
		_reportError_level0(@errorType)
		_extendedCheckOutput_level1()
	endif
	newline
endif

/* BaseRangeable is undefined */
if :BaseRangeable = '' then
	_reportWarnings()
	@errorType = 'BaseRangeable'
	'Warning: '
	if type;1 &lt;&gt; 'Package' then
		/* When the Type is used in some FAA/FDA model */	
		_reportError_level1(@errorType)
		_extendedCheckOutput_level2()
	else
		/* When the Type is defined in Package model */	
		_reportError_level0(@errorType)
		_extendedCheckOutput_level1()
	endif
	newline
endif
</report>
				<report>_validateTypePathsForEAXML()
/* Checks that each type in the selected EAXML is referred by EATYPE from some package, including also a package that is not part of EAXML */

$TypesInEAXML = ' '
$dataTypesDefined = ' ' /* all datatypes defined in open projects */
$typesChecked = ' ' /* all function types are checked only once */
$functionPrototypesDefinedInThisHierarchy = ' '

/* collect all type definitions */
do graphs where type = 'Package' 
{
	foreach .EAType 
	{
		do decompositions 
		{
			if not $TypesInEAXML =~ oid%wildsp then
				variable 'TypesInEAXML' append oid ' ' close
			endif
		}
	}
	foreach .(&lt;_EADatatype | Quantity | Unit | FunctionClientServerInterface) {
		if not $dataTypesDefined =~ oid%wildsp then
			variable 'dataTypesDefined' append oid ' ' close
		endif
	}
}

/* checks if all types are defined */
$ReportedTypeDefsErrors = ' ' 
foreach .Package 
{
	do decompositions 
	{
		_checkUsedTypesInEAXML()
	}
}
</report>
				<report>_validateUnit()
/* Validation checks for Unit */
subreport '_name checks' run

/* Factor is undefined */
if :Factor = '' then
	_reportWarnings()
	@errorType = 'Factor'
	'Warning: '
	if type;2 &lt;&gt; 'Package' then
		/* When the Type is used in some FAA/FDA model */	
		_reportError_level2(@errorType)
		_extendedCheckOutput_level3()
	else
		/* When the Type is defined in Package model */	
		_reportError_level1(@errorType)
		_extendedCheckOutput_level2()
	endif
	newline
endif

/* Offset is undefined */
if :Offset = '' then
	_reportWarnings()
	@errorType = 'Offset'
	'Warning: '
	if type;2 &lt;&gt; 'Package' then
		/* When the Type is used in some FAA/FDA model */	
		_reportError_level2(@errorType)
		_extendedCheckOutput_level3()
	else
		/* When the Type is defined in Package model */	
		_reportError_level1(@errorType)
		_extendedCheckOutput_level2()
	endif
	newline
endif

/* Symbol is undefined */
if :Symbol = '' then
	_reportWarnings()
	@errorType = 'Symbol'
	'Warning: '
	if type;2 &lt;&gt; 'Package' then
		/* When the Type is used in some FAA/FDA model */	
		_reportError_level2(@errorType)
		_extendedCheckOutput_level3()
	else
		/* When the Type is defined in Package model */	
		_reportError_level1(@errorType)
		_extendedCheckOutput_level2()
	endif
	newline
endif
</report>
				<report>Report '_XML document definitions'
/* Generating the document definitions */
'&lt;?xml version="1.0" encoding="UTF-8"?&gt;' newline
'&lt;EAXML xmlns="http://east-adl.info/2.1.12" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://east-adl.info/2.1.12 eastadl_2-1-12.xsd"&gt;' newline 
endreport</report>
				<report>__Unique(@type, @id)
if not @type then @type = type endif
if not @id then @id = id endif
variable '__Unique_' @type append '' close
@coll = __(variable '__Unique_' @type read)
if not @coll then 
	variable '__Unique_' @type append newline close 
endif
if not @coll =~ __('*' newline @id newline '*') then
	variable '__Unique_' @type append @id newline close
	'T'
endif</report>
			</graph>
		</superType>
		<slot id="chi7ju" name="Short name" unique="false">
			<property id="Property_2ModelName_user_3310896462" type="Property_2ModelName_user_3310896462" typeName="Short name">
				<description>Short name is mandatory and must start with an alphabetical character. It may contain characters, numbers or underscores.</description>
				<dataType>
					<simpleType>String</simpleType>
				</dataType>
				<defaultValue>
					<string></string>
				</defaultValue>
				<regex>[a-zA-Z]([a-zA-Z0-9]|_[a-zA-Z0-9])*_?</regex>
				<widget>Input Field</widget>
			</property>
		</slot>
		<slot id="cii7k5" name="Name" unique="false">
			<property id="Property_Name_sysadmin_3536998876" type="Property_Name_sysadmin_3536998876" typeName="Name">
				<description></description>
				<dataType>
					<simpleType>String</simpleType>
				</dataType>
				<defaultValue>
					<string></string>
				</defaultValue>
				<widget>Input Field</widget>
			</property>
		</slot>
		<slot id="cji7kh" name="Description" unique="false">
			<property id="Property_2Description_user_3310902697" type="Property_2Description_user_3310902697" typeName="Description">
				<description></description>
				<dataType>
					<simpleType>Text</simpleType>
				</dataType>
				<defaultValue></defaultValue>
			</property>
		</slot>
		<identReport>_name()</identReport>
		<object id="Object___AttackMotivation_sysadmin_3758564669" type="Object___AttackMotivation_sysadmin_3758564669" typeName="AttackMotivation">
			<description>A representation of the attackers motivations. There is at least one AttackMotivation in an attack tree (its root)</description>
			<slot id="mbi575" name="__UUID" unique="false">
				<property href="#Property___UUID_sysadmin_3604668056"></property>
			</slot>
			<slot id="mci57f" name="Short name" unique="false">
				<property href="#Property_2ModelName_user_3310896462"></property>
			</slot>
			<slot id="mdi57p" name="Name" unique="false">
				<property href="#Property_Name_sysadmin_3536998876"></property>
			</slot>
			<slot id="mki6aa" name="Motivation" unique="false">
				<property type="Property_Motivation_sysadmin_3758564776" typeName="Motivation">
					<description></description>
					<dataType>
						<simpleType>String</simpleType>
					</dataType>
					<defaultValue>
						<string>Product Modification</string>
					</defaultValue>
					<widget>Fixed List</widget>
					<listValues>
						<string>Harm</string>
						<string>Financial Gain</string>
						<string>Product Modification</string>
						<string>Information Retrieval</string>
					</listValues>
				</property>
			</slot>
			<slot id="mgi5uy" name="ConfidentialityImpact" unique="false">
				<property id="Property_Confidentiality_Impact_sysadmin_3758564501" type="Property_Confidentiality_Impact_sysadmin_3758564501" typeName="ConfidentialityImpact">
					<description>
This metric measures the impact to the confidentiality of the information resources managed by a software component due to a successfully exploited vulnerability. Confidentiality refers to limiting information access and disclosure to only authorized users, as well as preventing access by, or disclosure to, unauthorized ones.

High (H) There is total loss of confidentiality, resulting in all resources within the impacted component being divulged to the attacker. Alternatively, access to only some restricted information is obtained, but the disclosed information presents a direct, serious impact. For example, an attacker steals the administrator's password, or private encryption keys of a web server.

Low (L) There is some loss of confidentiality. Access to some restricted information is obtained, but the attacker does not have control over what information is obtained, or the amount or kind of loss is constrained. The information disclosure does not cause a direct, serious loss to the impacted component.

None (N) There is no loss of confidentiality within the impacted component.</description>
					<dataType>
						<simpleType>String</simpleType>
					</dataType>
					<defaultValue>
						<string>(N)one</string>
					</defaultValue>
					<widget>Fixed List</widget>
					<listValues>
						<string>(N)one</string>
						<string>(L)ow</string>
						<string>(H)igh</string>
					</listValues>
				</property>
			</slot>
			<slot id="mhi5zc" name="IntegrityImpact" unique="false">
				<property id="Property_IntegrityImpact_sysadmin_3758564580" type="Property_IntegrityImpact_sysadmin_3758564580" typeName="IntegrityImpact">
					<description>This metric measures the impact to integrity of a successfully exploited vulnerability. Integrity refers to the trustworthiness and veracity of information.

High (H) There is a total loss of integrity, or a complete loss of protection. For example, the attacker is able to modify any/all files protected by the impacted component. Alternatively, only some files can be modified, but malicious modification would present a direct, serious consequence to the impacted component.

Low (L) Modification of data is possible, but the attacker does not have control over the consequence of a modification, or the amount of modification is constrained. The data modification does not have a direct, serious impact on the impacted component.

None (N) There is no loss of integrity within the impacted component.</description>
					<dataType>
						<simpleType>String</simpleType>
					</dataType>
					<defaultValue>
						<string>(N)one</string>
					</defaultValue>
					<widget>Fixed List</widget>
					<listValues>
						<string>(N)one</string>
						<string>(L)ow</string>
						<string>(H)igh</string>
					</listValues>
				</property>
			</slot>
			<slot id="mei5kw" name="AvailabilityImpact" unique="false">
				<property id="Property_AvailabilityImpact_sysadmin_3758564320" type="Property_AvailabilityImpact_sysadmin_3758564320" typeName="AvailabilityImpact">
					<description>This metric measures the impact to the availability of the impacted component resulting from a successfully exploited vulnerability. While the Confidentiality and Integrity impact metrics apply to the loss of confidentiality or integrity of data (e.g., information, files) used by the impacted component, this metric refers to the loss of availability of the impacted component itself, such as a networked service (e.g., web, database, email). Since availability refers to the accessibility of information resources, attacks that consume network bandwidth, processor cycles, or disk space all impact the availability of an impacted component. 

High (H) There is total loss of availability, resulting in the attacker being able to fully deny access to resources in the impacted component; this loss is either sustained (while the attacker continues to deliver the attack) or persistent (the condition persists even after the attack has completed). Alternatively, the attacker has the ability to deny some availability, but the loss of availability presents a direct, serious consequence to the impacted component (e.g., the attacker cannot disrupt existing connections, but can prevent new connections; the attacker can repeatedly exploit a vulnerability that, in each instance of a successful attack, leaks a only small amount of memory, but after repeated exploitation causes a service to become completely unavailable).

Low (L) There is reduced performance or interruptions in resource availability. Even if repeated exploitation of the vulnerability is possible, the attacker does not have the ability to completely deny service to legitimate users. The resources in the impacted component are either partially available all of the time, or fully available only some of the time, but overall there is no direct, serious consequence to the impacted component.

None (N) There is no impact to availability within the impacted component.</description>
					<dataType>
						<simpleType>String</simpleType>
					</dataType>
					<defaultValue>
						<string>(N)one</string>
					</defaultValue>
					<widget>Fixed List</widget>
					<listValues>
						<string>(N)one</string>
						<string>(L)ow</string>
						<string>(H)igh</string>
					</listValues>
				</property>
			</slot>
			<slot id="mii63k" name="SafetyRelevance" unique="false">
				<property id="Property_SafetyRelevance_sysadmin_3758564655" type="Property_SafetyRelevance_sysadmin_3758564655" typeName="SafetyRelevance">
					<description></description>
					<dataType>
						<simpleType>String</simpleType>
					</dataType>
					<defaultValue>
						<string>(N)one</string>
					</defaultValue>
					<widget>Fixed List</widget>
					<listValues>
						<string>(N)one</string>
						<string>(L)ow Fail-safe</string>
						<string>(H)igh System Failure</string>
					</listValues>
				</property>
			</slot>
			<slot id="mfi5rv" name="Breaks security goals" unique="false">
				<property id="Property_Breaks_security_goals_sysadmin_3758564445" type="Property_Breaks_security_goals_sysadmin_3758564445" typeName="Breaks security goals">
					<description></description>
					<dataType>
						<object type="Object_SecurityGoal_sysadmin_3758565916" typeName="SecurityGoal">
							<description>This entity offers enumerations for common security goals across any communication or data flow. These goals are: Confidentiality, Integrity, Availability, Authenticity, Reliability and Accountability.

- Confidentiality ensures that private or confidential is not made available or disclosed to unauthorized users, and that users control (or influence) what information related to them may be collected and used, and to whom it is disclosed.
- Integrity ensures that information is not changed (modifies) or destroyed in an unauthorized way.
- Availability ensures that a system works promptly, service is not denied to authorized users, and access to and use of information is timely and reliable.
- Authenticity is the property of being genuine and able to be verified and trusted. Authenticityis ensured through authentication processes that verify whether users are who they say they are (entity authenticity).
- Reliability is the property of a system such that reliance can be justifiably placed on the service it delivers.
- Accountability refers to the requirements for actions of an entity to be traced uniquely to that entity (e.g., non-repuditation of a communication that took place).</description>
							<slot id="moi7so" name="Confidentiality" unique="false">
								<property type="Property_Confidentiality_sysadmin_3758565756" typeName="Confidentiality">
									<description></description>
									<dataType>
										<simpleType>Boolean</simpleType>
									</dataType>
									<defaultValue>
										<bool>false</bool>
									</defaultValue>
								</property>
							</slot>
							<slot id="mpi7u0" name="Integrity" unique="false">
								<property type="Property_Integrity_sysadmin_3758565780" typeName="Integrity">
									<description></description>
									<dataType>
										<simpleType>Boolean</simpleType>
									</dataType>
									<defaultValue>
										<bool>false</bool>
									</defaultValue>
								</property>
							</slot>
							<slot id="mqi7ui" name="Availability" unique="false">
								<property type="Property_Availability_sysadmin_3758565789" typeName="Availability">
									<description></description>
									<dataType>
										<simpleType>Boolean</simpleType>
									</dataType>
									<defaultValue>
										<bool>false</bool>
									</defaultValue>
								</property>
							</slot>
							<slot id="mri7vc" name="Authenticity" unique="false">
								<property type="Property_Authenticity_sysadmin_3758565804" typeName="Authenticity">
									<description></description>
									<dataType>
										<simpleType>Boolean</simpleType>
									</dataType>
									<defaultValue>
										<bool>false</bool>
									</defaultValue>
								</property>
							</slot>
							<slot id="msi7w0" name="Reliability" unique="false">
								<property type="Property_Reliability_sysadmin_3758565816" typeName="Reliability">
									<description></description>
									<dataType>
										<simpleType>Boolean</simpleType>
									</dataType>
									<defaultValue>
										<bool>false</bool>
									</defaultValue>
								</property>
							</slot>
							<slot id="mti7wv" name="Accountability" unique="false">
								<property type="Property_Accountability_sysadmin_3758565831" typeName="Accountability">
									<description></description>
									<dataType>
										<simpleType>Boolean</simpleType>
									</dataType>
									<defaultValue>
										<bool>false</bool>
									</defaultValue>
								</property>
							</slot>
							<identReport>if :Confidentiality; then '/C' endif
if :Integrity; then '/I' endif
if :Availability; then '/A' endif
if :Authenticity; then '/Auth' endif
if :Reliability; then '/R' endif
if :Accountability; then '/Acc' endif
</identReport>
						</object>
					</dataType>
				</property>
			</slot>
			<slot id="mji644" name="Description" unique="false">
				<property href="#Property_2Description_user_3310902697"></property>
			</slot>
			<identReport>if :Name; then :Name; else :Short name; endif</identReport>
			<objectSymbol offset="25,15" scaleFilter="1,1" xmlns="http://www.metacase.com/symbol">
				<defaultConnectable isSticky="true" points="245,137.349 244.543,140.277 243.243,142.759 241.296,144.418 239,145 30.75,145 28.4539,144.418 26.5074,142.759 25.2067,140.277 24.75,137.349 24.75,22.4005 25.2067,19.4728 26.5074,16.9908 28.4539,15.3324 30.75,14.75 239,14.75 241.296,15.3324 243.243,16.9908 244.543,19.4728 245,22.4005 245,137.349" targetPointX="135" targetPointY="79.9706" usesGrid="false"></defaultConnectable>
				<svg baseProfile="tiny" height="148" version="1.2" width="248" xmlns="http://www.w3.org/2000/svg">
					<rect fill="rgb(213,213,213)" height="130" rx="6" ry="10" stroke="rgb(213,213,213)" stroke-width="1" width="220" x="28" y="18">
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</rect>
					<rect fill="rgb(255,224,192)" height="130" rx="6" ry="10" stroke="rgb(0,0,0)" stroke-width="1" width="220" x="25" y="15">
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</rect>
					<textArea display-align="before" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="bold" height="130" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="middle" width="220" x="25" y="15">
						ReportTextSource:newline
id
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
					<textArea display-align="before" fill="rgb(0,0,0)" font-family="#sans serif" font-size="12" font-style="normal" font-weight="normal" height="130" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="middle" width="220" x="25" y="15">
						PropertyTextSource:mki6aa
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
					<textArea display-align="before" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="130" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="false" text-anchor="middle" width="220" x="25" y="15">
						ReportTextSource:newline; newline; 
'_______________________________________________________________________________________________________________________________________________'
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
					<textArea display-align="before" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="130" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="start" width="220" x="25" y="15">
						ReportTextSource:newline newline newline newline newline
newline newline
do :Breaks security goals; {
	'Breaks security goals: '
	if :Confidentiality; then @sep @sep = ', ' 'Confidentiality' endif
	if :Integrity; then @sep @sep = ', ' 'Integrity' endif
	if :Availability; then @sep @sep = ', ' 'Availability' endif
	if :Authenticity; then @sep @sep = ', ' 'Authenticity' endif
	if :Reliability; then @sep @sep = ', ' 'Reliability' endif	
	if :Accountability; then @sep 'Accountability' endif	
}

						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
					<textArea display-align="before" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="130" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="false" text-anchor="start" width="110" x="25" y="15">
						


ConfidentialityImpact:
IntegrityImpact:
AvailabilityImpact:
SafetyRelevance:
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
					<textArea display-align="before" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="130" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="false" text-anchor="start" width="115" x="130" y="15">
						ReportTextSource:newline newline newline
do :ConfidentialityImpact {_levelColoring()} newline
do :IntegrityImpact {_levelColoring()} newline
do :AvailabilityImpact {_levelColoring()} newline
do :SafetyRelevance {_levelColoring()} newline

						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
				</svg>
			</objectSymbol>
			<icon offset="10,20" xmlns="http://www.metacase.com/icon">
				<svg baseProfile="tiny" height="150" version="1.2" width="230" xmlns="http://www.w3.org/2000/svg">
					<rect fill="rgb(255,224,192)" height="130" rx="6" ry="10" stroke="rgb(0,0,0)" stroke-width="1" width="220" x="10" y="20"></rect>
				</svg>
			</icon>
		</object>
		<object id="Object_Attack_sysadmin_3758638313" type="Object_Attack_sysadmin_3758638313" typeName="Attack">
			<description>Represents a cyber-physical attack on the system described by an attack vector. An attack vector is a path or means by which an adversary can gain unauthorized access to a target system.</description>
			<slot id="nelbmk" name="__UUID" unique="false">
				<property href="#Property___UUID_sysadmin_3604668056"></property>
			</slot>
			<slot id="nflbmx" name="Short name" unique="false">
				<property href="#Property_2ModelName_user_3310896462"></property>
			</slot>
			<slot id="nglbn5" name="Name" unique="false">
				<property href="#Property_Name_sysadmin_3536998876"></property>
			</slot>
			<slot id="nhlbnl" name="AccessRequired" unique="false">
				<property type="Property_AccessRequired_sysadmin_3758565268" typeName="AccessRequired">
					<description>This metric reflects the context by which vulnerability exploitation is possible. This metric value (and consequently the Base score) will be larger the more remote (logically, and physically) an attacker can be in order to exploit the vulnerable component. The assumption is that the number of potential attackers for a vulnerability that could be exploited from across the Internet is larger than the number of potential attackers that could exploit a vulnerability requiring physical access to a device, and therefore warrants a greater score.

Network (N) A vulnerability exploitable with network access means the vulnerable component is bound to the network stack and the attacker's path is through OSI layer 3 (the network layer). Such a vulnerability is often termed "remotely exploitable" and can be thought of as an attack being exploitable one or more network hops away (e.g. across layer 3 boundaries from routers). An example of a network attack is an attacker causing a denial of service (DoS) by sending a specially crafted TCP packet from across the public Internet (e.g. CVE 2004 0230).

Adjacent A vulnerability exploitable with adjacent network access means the vulnerable component is bound to the network stack, however the attack is limited to the same shared physical (e.g. Bluetooth, IEEE 802.11), or logical (e.g. local IP subnet) network, and cannot be performed across an OSI layer 3 boundary (e.g. a router). An example of an Adjacent attack would be an ARP (IPv4) or neighbor discovery (IPv6) flood leading to a denial of service on the local LAN segment. See also CVE 2013 6014.

Local (L) A vulnerability exploitable with Local access means that the vulnerable component is not bound to the network stack, and the attacker's path is via read/write/execute capabilities. In some cases, the attacker may be logged in locally in order to exploit the vulnerability, otherwise, she may rely on User Interaction to execute a malicious file.

Physical (P) A vulnerability exploitable with Physical access requires the attacker to physically touch or manipulate the vulnerable component. Physical interaction may be brief (e.g. evil maid attack [1]) or persistent. An example of such an attack is a cold boot attack which allows an attacker to access to disk encryption keys after gaining physical access to the system, or peripheral attacks such as Firewire/USB Direct Memory Access attacks.</description>
					<dataType>
						<simpleType>String</simpleType>
					</dataType>
					<defaultValue>
						<string>Local</string>
					</defaultValue>
					<widget>Fixed List</widget>
					<listValues>
						<string>Network</string>
						<string>Adjacent</string>
						<string>Local</string>
						<string>Physical</string>
					</listValues>
				</property>
			</slot>
			<slot id="nilbny" name="PrivilegesRequired" unique="false">
				<property type="Property_PrivilegesRequired_sysadmin_3758565363" typeName="PrivilegesRequired">
					<description>
This metric describes the level of privileges an attacker must possess before successfully exploiting the vulnerability. This metric is greatest if no privileges are required.

None (N) The attacker is unauthorized prior to attack, and therefore does not require any access to settings or files to carry out an attack.

Low (L) The attacker is authorized with (i.e. requires) privileges that provide basic user capabilities that could normally affect only settings and files owned by a user. Alternatively, an attacker with Low privileges may have the ability to cause an impact only to non-sensitive resources.

High (H) The attacker is authorized with (i.e. requires) privileges that provide significant (e.g. administrative) control over the vulnerable component that could affect component-wide settings and files.</description>
					<dataType>
						<simpleType>String</simpleType>
					</dataType>
					<defaultValue>
						<string>(N)one</string>
					</defaultValue>
					<widget>Fixed List</widget>
					<listValues>
						<string>(N)one</string>
						<string>(L)ow</string>
						<string>(H)igh</string>
					</listValues>
				</property>
			</slot>
			<slot id="njlbod" name="UserInteraction" unique="false">
				<property type="Property_UserInteraction_sysadmin_3758565465" typeName="UserInteraction">
					<description>This metric captures the requirement for a user, other than the attacker, to participate in the successful compromise of the vulnerable component. This metric determines whether the vulnerability can be exploited solely at the will of the attacker, or whether a separate user (or user-initiated process) must participate in some manner. This metric value is greatest when no user interaction is required.

None (N) The vulnerable system can be exploited without interaction from any user.

Required (R) Successful exploitation of this vulnerability requires a user to take some action before the vulnerability can be exploited. For example, a successful exploit may only be possible during the installation of an application by a system administrator.</description>
					<dataType>
						<simpleType>String</simpleType>
					</dataType>
					<defaultValue>
						<string>(N)one</string>
					</defaultValue>
					<widget>Fixed List</widget>
					<listValues>
						<string>(N)one</string>
						<string>(R)equired</string>
					</listValues>
				</property>
			</slot>
			<slot id="nmlbpo" name="ConfidentialityImpact" unique="false">
				<property href="#Property_Confidentiality_Impact_sysadmin_3758564501"></property>
			</slot>
			<slot id="nnlbq6" name="IntegrityImpact" unique="false">
				<property href="#Property_IntegrityImpact_sysadmin_3758564580"></property>
			</slot>
			<slot id="nklboo" name="AvailabilityImpact" unique="false">
				<property href="#Property_AvailabilityImpact_sysadmin_3758564320"></property>
			</slot>
			<slot id="nolbqh" name="SafetyRelevance" unique="false">
				<property href="#Property_SafetyRelevance_sysadmin_3758564655"></property>
			</slot>
			<slot id="nllboy" name="Breaks security goals" unique="false">
				<property href="#Property_Breaks_security_goals_sysadmin_3758564445"></property>
			</slot>
			<slot id="nplbqy" name="Description" unique="false">
				<property href="#Property_2Description_user_3310902697"></property>
			</slot>
			<identReport>if :Name; then :Name; else :Short name; endif</identReport>
			<objectSymbol offset="20,20" scaleFilter="1,1" xmlns="http://www.metacase.com/symbol">
				<defaultConnectable isSticky="true" points="240,174.808 239.498,180.717 238.069,185.727 235.931,189.075 233.408,190.25 26.5918,190.25 24.0692,189.075 21.9307,185.727 20.5018,180.717 20,174.808 20,35.4422 20.5018,29.5327 21.9307,24.5229 24.0692,21.1755 26.5918,20 233.408,20 235.931,21.1755 238.069,24.5229 239.498,29.5327 240,35.4422 240,174.808" targetPointX="130.137" targetPointY="105.318" usesGrid="false"></defaultConnectable>
				<svg baseProfile="tiny" height="190" version="1.2" width="240" xmlns="http://www.w3.org/2000/svg">
					<defs>
						<radialGradient cx="0.5" cy="0.5" gradientUnits="objectBoundingBox" id="gradient1" r="0.707107" sym:correctGamma="true" sym:fillType="PathFill">
							<stop offset="0" stop-color="rgb(255,255,255)"></stop>
							<stop offset="1" stop-color="rgb(255,224,224)"></stop>
						</radialGradient>
					</defs>
					<rect fill="url(#gradient1)" height="170" rx="6" ry="10" stroke="rgb(128,0,0)" stroke-width="1" width="220" x="20" y="20">
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</rect>
					<textArea display-align="before" fill="rgb(128,0,0)" font-family="#sans serif" font-size="12" font-style="normal" font-weight="normal" height="170" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="middle" width="200" x="30" y="20">
						Attack
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
					<textArea display-align="before" fill="rgb(128,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="bold" height="170" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="middle" width="220" x="20" y="20">
						ReportTextSource:newline
id
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
					<textArea display-align="before" fill="rgb(128,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="170" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="false" text-anchor="middle" width="220" x="20" y="20">
						ReportTextSource:newline; newline; 
'_______________________________________________________________________________________________________________________________________________'
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
					<template aligmentPointX="0.5" aligmentPointY="1" isMovable="false" revealConnectables="false" rotation="false" scaleFilter="0,0" subsymbolExtentX="20" subsymbolExtentY="20" useTargetpoint="false" width="1" xmlns="http://www.metacase.com/symbol">
						<pathLayout allocation="start" layoutDistance="40" lineSegmentTable="" points="230,20" startDistance="0">
							<layoutPath allocation="start" layoutDistance="99999" lineSegmentTable="true" points="0,0 -210,0" startDistance="10"></layoutPath>
						</pathLayout>
						<noneNPSource></noneNPSource>
						<librarySubsymbolSource>Attack_symbol</librarySubsymbolSource>
						<metaInfo></metaInfo>
					</template>
					<textArea display-align="before" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="170" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="start" width="220" x="20" y="20">
						ReportTextSource:newline newline newline newline newline
newline newline newline newline newline
do :Breaks security goals; {
	'Breaks security goals: '
	if :Confidentiality; then @sep @sep = ', ' 'Confidentiality' endif
	if :Integrity; then @sep @sep = ', ' 'Integrity' endif
	if :Availability; then @sep @sep = ', ' 'Availability' endif
	if :Authenticity; then @sep @sep = ', ' 'Authenticity' endif
	if :Reliability; then @sep @sep = ', ' 'Reliability' endif	
	if :Accountability; then @sep 'Accountability' endif	
}

						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
					<textArea display-align="before" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="170" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="false" text-anchor="start" width="110" x="20" y="20">
						


AccessRequired:
PrivilegesRequired:
UserInteraction:
ConfidentialityImpact:
IntegrityImpact:
AvailabilityImpact:
SafetyRelevance:
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
					<textArea display-align="before" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="170" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="false" text-anchor="start" width="115" x="125" y="20">
						ReportTextSource:newline newline newline
:AccessRequired; newline
do :PrivilegesRequired {_levelColoring()} newline
do :UserInteraction {_levelColorForUserInteraction()} newline
do :ConfidentialityImpact {_levelColoring()} newline
do :IntegrityImpact {_levelColoring()} newline
do :AvailabilityImpact {_levelColoring()} newline
do :SafetyRelevance {_levelColoring()} newline

						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
				</svg>
			</objectSymbol>
			<icon offset="81,70" xmlns="http://www.metacase.com/icon">
				<svg baseProfile="tiny" height="130" version="1.2" width="141" xmlns="http://www.w3.org/2000/svg">
					<line stroke="rgb(128,0,0)" stroke-width="1" x1="81" x2="101" y1="100" y2="100"></line>
					<line stroke="rgb(128,0,0)" stroke-width="1" x1="121" x2="141" y1="100" y2="100"></line>
					<line stroke="rgb(128,0,0)" stroke-width="1" x1="111" x2="111" y1="70" y2="90"></line>
					<line stroke="rgb(128,0,0)" stroke-width="1" x1="111" x2="111" y1="110" y2="130"></line>
					<ellipse cx="111" cy="100" fill="none" rx="20" ry="20" stroke="rgb(128,0,0)" stroke-width="1" sym:startAngle="3.6e2" sym:sweepAngle="-3.6e2"></ellipse>
					<ellipse cx="111" cy="100" fill="rgb(255,255,255)" rx="10" ry="10" stroke="rgb(128,0,0)" stroke-width="1" sym:startAngle="3.6e2" sym:sweepAngle="-3.6e2"></ellipse>
				</svg>
			</icon>
		</object>
		<object id="Object_Item_sysadmin_3509259179" type="Object_Item_sysadmin_3509259179" typeName="Item">
			<description>Item represents the scope of safety information and the safety assessment through its reference to one or several Features.</description>
			<slot id="hpc8j1" name="__UUID" unique="false">
				<property href="#Property___UUID_sysadmin_3604668056"></property>
			</slot>
			<slot id="hm2cb5" name="Short name" unique="false">
				<property type="Property_ItemName_sysadmin_3509612264" typeName="ItemName">
					<description>Short name is mandatory and must start with an alphabetical character. It may contain characters, numbers or underscores.</description>
					<dataType>
						<simpleType>String</simpleType>
					</dataType>
					<defaultValue>
						<string></string>
					</defaultValue>
					<regex>[a-zA-Z]([a-zA-Z0-9]|_[a-zA-Z0-9])*_?</regex>
					<widget>Input Field</widget>
				</property>
			</slot>
			<slot id="hqc8ja" name="Name" unique="false">
				<property href="#Property_Name_sysadmin_3536998876"></property>
			</slot>
			<slot id="hln75v" name="DevelopmentCategory" unique="false">
				<property type="Property_DevelopmentCategory_sysadmin_3509259009" typeName="DevelopmentCategory">
					<description>DevelopmentCategoryKind is an enumeration with enumeration literals indicating whether the item 
is a modification of an existing item or if it is a new development.</description>
					<dataType>
						<simpleType>String</simpleType>
					</dataType>
					<defaultValue>
						<string>New</string>
					</defaultValue>
					<widget>Radio Button Set</widget>
					<listValues>
						<string>New</string>
						<string>Modification</string>
					</listValues>
				</property>
			</slot>
			<slot id="hrf1b9" name="Vehicle features" unique="false">
				<property type="Property_Features_sysadmin_3619083441" typeName="Vehicle features">
					<description></description>
					<dataType>
						<simpleType>Collection</simpleType>
					</dataType>
					<contentsDataType>
						<object id="Object_VehicleFeature_user_3400133821" type="Object_VehicleFeature_user_3400133821" typeName="VehicleFeature">
							<description>A VehicleFeature is a functional or non-functional characteristic, constraint or property that can be present or not in a vehicle product line on the level of the complete system, i.e. vehicle.</description>
							<superType>
								<object id="Object_Feature_user_3399887361" type="Object_Feature_user_3399887361" typeName="Feature">
									<description>Feature is a (non)functional characteristic, constraint or property that can be present or not in a (vehicle) product line.</description>
									<slot id="as9all" name="__UUID" unique="false">
										<property href="#Property___UUID_sysadmin_3604668056"></property>
									</slot>
									<slot id="aeer14" name="Short name" unique="false">
										<property id="Property_2ECUName_user_3310972947" type="Property_2ECUName_user_3310972947" typeName="Name">
											<description>Short name is mandatory and must start with an alphabetical character. It may contain characters, numbers or underscores.</description>
											<dataType>
												<simpleType>String</simpleType>
											</dataType>
											<defaultValue>
												<string></string>
											</defaultValue>
											<regex>[a-zA-Z]([a-zA-Z0-9]|_[a-zA-Z0-9])*_?</regex>
											<widget>Input Field</widget>
										</property>
									</slot>
									<slot id="at9am0" name="Name" unique="false">
										<property href="#Property_Name_sysadmin_3536998876"></property>
									</slot>
									<slot id="afer4z" name="Cardinality" unique="false">
										<property type="Property_Cardinality_user_3399886960" typeName="Cardinality">
											<description>Specifies the Feature's cardinality stating how often this feature may be selected during configuration.</description>
											<dataType>
												<simpleType>String</simpleType>
											</dataType>
											<defaultValue>
												<string>0..1</string>
											</defaultValue>
											<widget>Overridable List</widget>
											<listValues>
												<string>1</string>
												<string>0..1</string>
												<string>0..N</string>
												<string>1..N</string>
												<string>0</string>
											</listValues>
										</property>
									</slot>
									<slot id="ang3ks" name="ActualBindingTime" unique="false">
										<property type="Property_BindingTimeKind_user_3399886739" typeName="BindingTimeKind">
											<description>BindingTimeKind represents the set of possible binding times.</description>
											<dataType>
												<simpleType>String</simpleType>
											</dataType>
											<defaultValue>
												<string>SystemDesignTime</string>
											</defaultValue>
											<widget>Fixed List</widget>
											<listValues>
												<string>SystemDesignTime</string>
												<string>CodeGenerationTime</string>
												<string>PreCompileTime</string>
												<string>LinkTime</string>
												<string>PostBuild</string>
												<string>Runtime</string>
											</listValues>
										</property>
									</slot>
									<slot id="apghsi" name="RequiredBindingTime" unique="false">
										<property type="Property_RequiredBindingTime_user_3461233519" typeName="RequiredBindingTime">
											<description></description>
											<dataType>
												<simpleType>String</simpleType>
											</dataType>
											<defaultValue>
												<string></string>
											</defaultValue>
											<widget>Fixed List</widget>
											<listValues>
												<string></string>
												<string>SystemDesignTime</string>
												<string>CodeGenerationTime</string>
												<string>PreCompileTime</string>
												<string>LinkTime</string>
												<string>PostBuild</string>
												<string>Runtime</string>
											</listValues>
										</property>
									</slot>
									<slot id="aroldd" name="FeatureParameter" unique="false">
										<property type="Property_FeatureParameter_sysadmin_3537005208" typeName="FeatureParameter">
											<description></description>
											<dataType>
												<object id="Object__EADatatype_sysadmin_3536996100" type="Object__EADatatype_sysadmin_3536996100" typeName="_EADatatype">
													<description>EADatatype metaclass is a special kind of classifier, similar to a class. It differs from the class in that instances of a data type are identified only by their value.</description>
													<slot id="a9bqgh" name="__UUID" unique="false">
														<property href="#Property___UUID_sysadmin_3604668056"></property>
													</slot>
													<slot id="a0o7eh" name="Short name" unique="false">
														<property type="Property_EADatatypeName_sysadmin_3536996156" typeName="EADatatypeName">
															<description>Short name for datatype is mandatory and needs to follow the expression give above.</description>
															<dataType>
																<simpleType>String</simpleType>
															</dataType>
															<defaultValue>
																<string></string>
															</defaultValue>
															<regex>[a-zA-Z]([a-zA-Z0-9]|_[a-zA-Z0-9])*_?</regex>
															<widget>Input Field</widget>
														</property>
													</slot>
													<slot id="aabqh5" name="Name" unique="false">
														<property href="#Property_Name_sysadmin_3536998876"></property>
													</slot>
													<identProp slotID="a0o7eh"></identProp>
													<icon offset="29,18" xmlns="http://www.metacase.com/icon">
														<svg baseProfile="tiny" height="78" version="1.2" width="129" xmlns="http://www.w3.org/2000/svg">
															<rect fill="rgb(255,255,255)" height="60" rx="0" ry="0" stroke="rgb(0,0,0)" stroke-width="1" width="100" x="29" y="18"></rect>
															<textArea display-align="center" fill="rgb(0,0,0)" font-family="#sans serif" font-size="70" font-style="normal" font-weight="normal" height="60" sym:characterBackgroundFill="none" sym:textboxFill="rgb(224,255,255)" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="middle" width="100" x="29" y="18">DT</textArea>
														</svg>
													</icon>
												</object>
											</dataType>
											<dataTypeSubtype>
												<object id="Object_ArrayDatatype_sysadmin_3536999064" type="Object_ArrayDatatype_sysadmin_3536999064" typeName="ArrayDatatype">
													<description>ArrayDatatype is a datatype for an array of datatypes of the same type.</description>
													<superType>
														<object href="#Object__EADatatype_sysadmin_3536996100"></object>
													</superType>
													<slot id="a6obtp" name="MinLength" unique="false">
														<property type="Property_MinLength_sysadmin_3536999022" typeName="MinLength">
															<description></description>
															<dataType>
																<simpleType>String</simpleType>
															</dataType>
															<defaultValue>
																<string></string>
															</defaultValue>
															<widget>Input Field</widget>
														</property>
													</slot>
													<slot id="a7obub" name="MaxLength" unique="false">
														<property type="Property_MaxLength_sysadmin_3536999033" typeName="MaxLength">
															<description></description>
															<dataType>
																<simpleType>String</simpleType>
															</dataType>
															<defaultValue>
																<string></string>
															</defaultValue>
															<widget>Input Field</widget>
														</property>
													</slot>
													<slot id="a8obvv" name="Type" unique="false">
														<property id="Property_isOfType_sysadmin_3537003179" type="Property_isOfType_sysadmin_3537003179" typeName="isOfType">
															<description></description>
															<dataType>
																<object href="#Object__EADatatype_sysadmin_3536996100"></object>
															</dataType>
															<dataTypeSubtype>
																<object href="#Object_ArrayDatatype_sysadmin_3536999064"></object>
															</dataTypeSubtype>
															<dataTypeSubtype>
																<object id="Object_CompositeDatatype_sysadmin_3536998574" type="Object_CompositeDatatype_sysadmin_3536998574" typeName="CompositeDatatype">
																	<description>A CompositeDatatype represents a non-scalar datatype. The contained datatypePrototypes act as record variables to identify the ordered datatype instances of the tuple (the CompositeDatatype).</description>
																	<superType>
																		<object href="#Object__EADatatype_sysadmin_3536996100"></object>
																	</superType>
																	<slot id="a0obqc" name="DatatypePrototypes" unique="false">
																		<property type="Property_DatatypePrototypes_sysadmin_3536998962" typeName="DatatypePrototypes">
																			<description></description>
																			<dataType>
																				<simpleType>Collection</simpleType>
																			</dataType>
																			<contentsDataType>
																				<object type="Object_EADatatypePrototype_sysadmin_3536998910" typeName="EADatatypePrototype">
																					<description>The EADatatypePrototype represents a typed variable. It acts as an appearance of a datatype.</description>
																					<slot id="j3br9y" name="__UUID" unique="false">
																						<property href="#Property___UUID_sysadmin_3604668056"></property>
																					</slot>
																					<slot id="j22mmi" name="Short name" unique="false">
																						<property href="#Property_2ECUName_user_3310972947"></property>
																					</slot>
																					<slot id="j4br9n" name="Name" unique="false">
																						<property href="#Property_Name_sysadmin_3536998876"></property>
																					</slot>
																					<slot id="j1obmy" name="Type" unique="false">
																						<property href="#Property_isOfType_sysadmin_3537003179"></property>
																					</slot>
																					<identProp slotID="j22mmi"></identProp>
																					<objectSymbol offset="40,30" scaleFilter="1,1" xmlns="http://www.metacase.com/symbol">
																						<defaultConnectable isSticky="true" points="40,30 200,30 200,130 40,130 40,30" targetPointX="120" targetPointY="80" usesGrid="false"></defaultConnectable>
																						<svg baseProfile="tiny" height="130" version="1.2" width="200" xmlns="http://www.w3.org/2000/svg">
																							<rect fill="rgb(192,192,255)" height="100" rx="0" ry="0" stroke="rgb(0,0,0)" stroke-width="1" width="160" x="40" y="30">
																								<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																							</rect>
																							<textArea display-align="center" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="100" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="middle" width="160" x="40" y="30">
																								ReportTextSource:type; newline
id newline
:Type
																								<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																							</textArea>
																						</svg>
																					</objectSymbol>
																					<icon offset="50,20" xmlns="http://www.metacase.com/icon">
																						<svg baseProfile="tiny" height="70" version="1.2" width="100" xmlns="http://www.w3.org/2000/svg">
																							<rect fill="rgb(192,192,255)" height="50" rx="0" ry="0" stroke="rgb(0,0,0)" stroke-width="1" width="50" x="50" y="20"></rect>
																						</svg>
																					</icon>
																				</object>
																			</contentsDataType>
																		</property>
																	</slot>
																	<slot id="a1rozd" name="Description" unique="false">
																		<property href="#Property_2Description_user_3310902697"></property>
																	</slot>
																	<identProp slotID="a0o7eh"></identProp>
																	<objectSymbol offset="60,40" scaleFilter="1,1" xmlns="http://www.metacase.com/symbol">
																		<defaultConnectable isSticky="true" points="60,40 230,40 230,150 60,150 60,40" targetPointX="145" targetPointY="95" usesGrid="true"></defaultConnectable>
																		<svg baseProfile="tiny" height="152" version="1.2" width="233" xmlns="http://www.w3.org/2000/svg">
																			<rect fill="rgb(170,170,170)" height="110" rx="0" ry="0" stroke="rgb(170,170,170)" stroke-width="1" width="170" x="63" y="42">
																				<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																			</rect>
																			<rect fill="rgb(255,255,255)" height="110" rx="0" ry="0" stroke="rgb(0,0,0)" stroke-width="1" width="170" x="60" y="40">
																				<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																			</rect>
																			<g fill="none" stroke="rgb(0,0,0)" stroke-width="1" sym:height="16" sym:width="16" sym:x="2.12e2" sym:y="4.2e1">
																				<rect fill="rgb(0,128,0)" height="16" rx="0" ry="4" stroke="rgb(0,0,0)" stroke-width="1" width="16" x="212" y="42">
																					<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																				</rect>
																				<rect fill="rgb(255,255,255)" height="11.4286" rx="0" ry="0" stroke="rgb(0,0,0)" stroke-width="1" width="11.429" x="214.286" y="44.2857">
																					<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																				</rect>
																				<rect fill="rgb(0,0,0)" height="4.5714" rx="0" ry="0" stroke="rgb(0,0,0)" stroke-width="1" width="4.11401" x="217.943" y="47.7143">
																					<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																				</rect>
																				<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																			</g>
																			<textArea display-align="before" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="110" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="middle" width="170" x="60" y="40">
																				ReportTextSource:type; newline
:Short name;
																				<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																			</textArea>
																			<textArea display-align="before" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="110" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="start" width="170" x="60" y="40">
																				ReportTextSource:_dataTypeDetails()
																				<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																			</textArea>
																		</svg>
																	</objectSymbol>
																	<icon offset="117,43" xmlns="http://www.metacase.com/icon">
																		<svg baseProfile="tiny" height="113" version="1.2" width="187" xmlns="http://www.w3.org/2000/svg">
																			<rect fill="rgb(0,128,0)" height="70" rx="6" ry="6" stroke="rgb(0,0,0)" stroke-width="1" width="70" x="117" y="43"></rect>
																			<rect fill="rgb(255,255,255)" height="50" rx="0" ry="0" stroke="rgb(0,0,0)" stroke-width="1" width="50" x="127" y="53"></rect>
																			<rect fill="rgb(0,0,0)" height="20" rx="0" ry="0" stroke="rgb(0,0,0)" stroke-width="1" width="18" x="143" y="68"></rect>
																		</svg>
																	</icon>
																</object>
															</dataTypeSubtype>
															<dataTypeSubtype>
																<object id="Object_EABoolean_sysadmin_3536996172" type="Object_EABoolean_sysadmin_3536996172" typeName="EABoolean">
																	<description>EABoolean is the primitive type that holds two literals: true, false.</description>
																	<superType>
																		<object href="#Object__EADatatype_sysadmin_3536996100"></object>
																	</superType>
																	<slot id="a0rozy" name="Description" unique="false">
																		<property href="#Property_2Description_user_3310902697"></property>
																	</slot>
																	<identProp slotID="a0o7eh"></identProp>
																	<objectSymbol offset="30,30" scaleFilter="1,1" xmlns="http://www.metacase.com/symbol">
																		<defaultConnectable isSticky="true" points="30,30 200,30 200,140 30,140 30,30" targetPointX="115" targetPointY="85" usesGrid="true"></defaultConnectable>
																		<svg baseProfile="tiny" height="142" version="1.2" width="203" xmlns="http://www.w3.org/2000/svg">
																			<rect fill="rgb(170,170,170)" height="110" rx="0" ry="0" stroke="rgb(170,170,170)" stroke-width="1" width="170" x="33" y="32">
																				<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																			</rect>
																			<rect fill="rgb(229,229,229)" height="110" rx="0" ry="0" stroke="rgb(0,0,0)" stroke-width="1" width="170" x="30" y="30">
																				<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																			</rect>
																			<g fill="none" stroke="rgb(0,0,0)" stroke-width="1" sym:height="16" sym:width="16" sym:x="1.82e2" sym:y="3.2e1">
																				<rect fill="rgb(255,255,255)" height="16" rx="6" ry="6" stroke="rgb(0,0,0)" stroke-width="1" width="16" x="182" y="32">
																					<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																				</rect>
																				<g fill="none" stroke="rgb(0,0,0)" stroke-width="1" sym:height="16" sym:width="16" sym:x="1.82e2" sym:y="3.2e1">
																					<rect fill="rgb(96,96,96)" height="16" rx="0" ry="0" stroke="rgb(0,0,0)" stroke-width="1" width="8" x="182" y="32">
																						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																					</rect>
																					<rect fill="rgb(255,255,255)" height="16" rx="0" ry="0" stroke="rgb(0,0,0)" stroke-width="1" width="8" x="190" y="32">
																						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																					</rect>
																					<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																				</g>
																				<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																			</g>
																			<textArea display-align="before" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="110" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="middle" width="170" x="30" y="30">
																				ReportTextSource:'Boolean'; newline
:Short name;
																				<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																			</textArea>
																			<textArea display-align="before" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="110" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="start" width="170" x="30" y="30">
																				ReportTextSource:_dataTypeDetails()
																				<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																			</textArea>
																		</svg>
																	</objectSymbol>
																	<icon offset="110,40" xmlns="http://www.metacase.com/icon">
																		<svg baseProfile="tiny" height="110" version="1.2" width="180" xmlns="http://www.w3.org/2000/svg">
																			<rect fill="rgb(255,255,255)" height="70" rx="6" ry="6" stroke="rgb(0,0,0)" stroke-width="1" width="70" x="110" y="40"></rect>
																			<g fill="none" stroke="rgb(0,0,0)" stroke-width="1" sym:height="70" sym:width="70" sym:x="1.1e2" sym:y="4.0e1">
																				<rect fill="rgb(96,96,96)" height="70" rx="0" ry="0" stroke="rgb(0,0,0)" stroke-width="1" width="35" x="110" y="40"></rect>
																				<rect fill="rgb(255,255,255)" height="70" rx="0" ry="0" stroke="rgb(0,0,0)" stroke-width="1" width="35" x="145" y="40"></rect>
																			</g>
																		</svg>
																	</icon>
																</object>
															</dataTypeSubtype>
															<dataTypeSubtype>
																<object id="Object_EANumerical_sysadmin_3536996437" type="Object_EANumerical_sysadmin_3536996437" typeName="EANumerical">
																	<description>EANumerical has attributes for modeling of the allowed range.</description>
																	<superType>
																		<object href="#Object__EADatatype_sysadmin_3536996100"></object>
																	</superType>
																	<slot id="a3o7q9" name="Min" unique="false">
																		<property type="Property_Min_sysadmin_3509699711" typeName="Min">
																			<description>The minimum value of the range. Decimal values should be specified with .</description>
																			<dataType>
																				<simpleType>String</simpleType>
																			</dataType>
																			<defaultValue>
																				<string></string>
																			</defaultValue>
																			<regex>(0x[0-9a-f]*)|(0[1-7][0-7]*)|(0b[0-1]*)|([+\-]?[0-9]+(\.[0-9]*)?(E([+\-]?)[0-9]*)?)</regex>
																			<widget>Input Field</widget>
																		</property>
																	</slot>
																	<slot id="a4o7qh" name="Max" unique="false">
																		<property type="Property_Max_sysadmin_3509699706" typeName="Max">
																			<description>The maximal value of the range. Decimal values should be specified with .</description>
																			<dataType>
																				<simpleType>String</simpleType>
																			</dataType>
																			<defaultValue>
																				<string></string>
																			</defaultValue>
																			<regex>(0x[0-9a-f]*)|(0[1-7][0-7]*)|(0b[0-1]*)|([+\-]?[0-9]+(\.[0-9]*)?(E([+\-]?)[0-9]*)?)</regex>
																			<widget>Input Field</widget>
																		</property>
																	</slot>
																	<slot id="a5o8kn" name="Unit" unique="false">
																		<property type="Property_Unit_sysadmin_3536996915" typeName="Unit">
																			<description>The unit of data.</description>
																			<dataType>
																				<object id="Object_Unit_sysadmin_3536996865" type="Object_Unit_sysadmin_3536996865" typeName="Unit">
																					<description>Unit descibes the unit of typed numerical values.</description>
																					<slot id="itbtf2" name="__UUID" unique="false">
																						<property href="#Property___UUID_sysadmin_3604668056"></property>
																					</slot>
																					<slot id="ino8c4" name="Short name" unique="false">
																						<property type="Property_UnitName_sysadmin_3536996762" typeName="UnitName">
																							<description>Short name is mandatory and must start with an alphabetical character. It may contain characters, numbers or underscores.</description>
																							<dataType>
																								<simpleType>String</simpleType>
																							</dataType>
																							<defaultValue>
																								<string></string>
																							</defaultValue>
																							<regex>[a-zA-Z]([a-zA-Z0-9]|_[a-zA-Z0-9])*_?</regex>
																							<widget>Input Field</widget>
																						</property>
																					</slot>
																					<slot id="iubtga" name="Name" unique="false">
																						<property href="#Property_Name_sysadmin_3536998876"></property>
																					</slot>
																					<slot id="ioo8dh" name="Factor" unique="false">
																						<property type="Property_Factor_sysadmin_3536996786" typeName="Factor">
																							<description></description>
																							<dataType>
																								<simpleType>String</simpleType>
																							</dataType>
																							<defaultValue>
																								<string></string>
																							</defaultValue>
																							<widget>Input Field</widget>
																						</property>
																					</slot>
																					<slot id="ipo8gu" name="Offset" unique="false">
																						<property type="Property_Offset_sysadmin_3536996847" typeName="Offset">
																							<description></description>
																							<dataType>
																								<simpleType>String</simpleType>
																							</dataType>
																							<defaultValue>
																								<string></string>
																							</defaultValue>
																							<widget>Input Field</widget>
																						</property>
																					</slot>
																					<slot id="iqo8hn" name="Symbol" unique="false">
																						<property type="Property_Symbol_sysadmin_3536996861" typeName="Symbol">
																							<description></description>
																							<dataType>
																								<simpleType>String</simpleType>
																							</dataType>
																							<defaultValue>
																								<string></string>
																							</defaultValue>
																							<widget>Input Field</widget>
																						</property>
																					</slot>
																					<slot id="iso97v" name="Quantity" unique="false">
																						<property type="Property_Quantity_sysadmin_3536997333" typeName="Quantity">
																							<description></description>
																							<dataType>
																								<object type="Object_Quantity_sysadmin_3536997304" typeName="Quantity">
																									<description>The Quantity describes a physical dimension for use in numerical datatypes and expressions to facilitate dimension consistency and control.</description>
																									<slot id="j0btjq" name="__UUID" unique="false">
																										<property href="#Property___UUID_sysadmin_3604668056"></property>
																									</slot>
																									<slot id="iso8rx" name="Short name" unique="false">
																										<property type="Property_QuantityName_sysadmin_3536997046" typeName="QuantityName">
																											<description>Short name is mandatory and must start with an alphabetical character. It may contain characters, numbers or underscores.</description>
																											<dataType>
																												<simpleType>String</simpleType>
																											</dataType>
																											<defaultValue>
																												<string></string>
																											</defaultValue>
																											<regex>[a-zA-Z]([a-zA-Z0-9]|_[a-zA-Z0-9])*_?</regex>
																											<widget>Input Field</widget>
																										</property>
																									</slot>
																									<slot id="j1btkm" name="Name" unique="false">
																										<property href="#Property_Name_sysadmin_3536998876"></property>
																									</slot>
																									<slot id="ito8vg" name="AmountOfSubstanceExp" unique="false">
																										<property type="Property_AmountOfSubstanceExp_sysadmin_3536997110" typeName="AmountOfSubstanceExp">
																											<description></description>
																											<dataType>
																												<simpleType>String</simpleType>
																											</dataType>
																											<defaultValue>
																												<string>0</string>
																											</defaultValue>
																											<widget>Input Field</widget>
																										</property>
																									</slot>
																									<slot id="iuo8wk" name="ElectricCurrentExp" unique="false">
																										<property type="Property_ElectricCurrentExp_sysadmin_3536997130" typeName="ElectricCurrentExp">
																											<description></description>
																											<dataType>
																												<simpleType>String</simpleType>
																											</dataType>
																											<defaultValue>
																												<string>0</string>
																											</defaultValue>
																											<widget>Input Field</widget>
																										</property>
																									</slot>
																									<slot id="ivo8xt" name="LengthExp" unique="false">
																										<property type="Property_LengthExp_sysadmin_3536997152" typeName="LengthExp">
																											<description></description>
																											<dataType>
																												<simpleType>String</simpleType>
																											</dataType>
																											<defaultValue>
																												<string>0</string>
																											</defaultValue>
																											<widget>Input Field</widget>
																										</property>
																									</slot>
																									<slot id="iwo8zy" name="LuminousIntensityExp" unique="false">
																										<property type="Property_LuminousIntensityExp_sysadmin_3536997191" typeName="LuminousIntensityExp">
																											<description></description>
																											<dataType>
																												<simpleType>String</simpleType>
																											</dataType>
																											<defaultValue>
																												<string>0</string>
																											</defaultValue>
																											<widget>Input Field</widget>
																										</property>
																									</slot>
																									<slot id="ixo90o" name="MassExp" unique="false">
																										<property type="Property_MassExp_sysadmin_3536997204" typeName="MassExp">
																											<description></description>
																											<dataType>
																												<simpleType>String</simpleType>
																											</dataType>
																											<defaultValue>
																												<string>0</string>
																											</defaultValue>
																											<widget>Input Field</widget>
																										</property>
																									</slot>
																									<slot id="iyo92b" name="ThermodynamicTemperatureExp" unique="false">
																										<property type="Property_ThermodynamicTemperatureExp_sysadmin_3536997233" typeName="ThermodynamicTemperatureExp">
																											<description></description>
																											<dataType>
																												<simpleType>String</simpleType>
																											</dataType>
																											<defaultValue>
																												<string>0</string>
																											</defaultValue>
																											<widget>Input Field</widget>
																										</property>
																									</slot>
																									<slot id="izo92u" name="TimeExp" unique="false">
																										<property type="Property_TimeExp_sysadmin_3536997243" typeName="TimeExp">
																											<description></description>
																											<dataType>
																												<simpleType>String</simpleType>
																											</dataType>
																											<defaultValue>
																												<string>0</string>
																											</defaultValue>
																											<widget>Input Field</widget>
																										</property>
																									</slot>
																									<slot id="j2rp47" name="Description" unique="false">
																										<property href="#Property_2Description_user_3310902697"></property>
																									</slot>
																									<identProp slotID="iso8rx"></identProp>
																									<objectSymbol offset="30,20" scaleFilter="1,1" xmlns="http://www.metacase.com/symbol">
																										<defaultConnectable isSticky="true" points="30,20 211,20 211,160 30,160 30,20" targetPointX="120.5" targetPointY="90" usesGrid="true"></defaultConnectable>
																										<svg baseProfile="tiny" height="163" version="1.2" width="213" xmlns="http://www.w3.org/2000/svg">
																											<rect fill="rgb(213,213,213)" height="140" rx="0" ry="0" stroke="rgb(213,213,213)" stroke-width="1" width="180" x="33" y="23">
																												<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																											</rect>
																											<rect fill="rgb(248,240,255)" height="140" rx="0" ry="0" stroke="rgb(0,0,0)" stroke-width="1" width="181" x="30" y="20">
																												<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																											</rect>
																											<textArea display-align="before" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="140" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="middle" width="181" x="30" y="20">
																												ReportTextSource:type; newline
:Short name;
																												<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																											</textArea>
																											<textArea display-align="before" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="140" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="start" width="181" x="30" y="20">
																												ReportTextSource:_dataTypeDetails()
																												<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																											</textArea>
																										</svg>
																									</objectSymbol>
																									<icon offset="40,30" xmlns="http://www.metacase.com/icon">
																										<svg baseProfile="tiny" height="70" version="1.2" width="90" xmlns="http://www.w3.org/2000/svg">
																											<textArea display-align="center" fill="rgb(0,0,0)" font-family="#sans serif" font-size="40" font-style="normal" font-weight="normal" height="40" sym:characterBackgroundFill="none" sym:textboxFill="rgb(248,240,255)" sym:textboxStroke="rgb(0,0,0)" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="middle" width="50" x="40" y="30">Q</textArea>
																										</svg>
																									</icon>
																								</object>
																							</dataType>
																						</property>
																					</slot>
																					<slot id="iro8n6" name="UnitReference" unique="false">
																						<property type="Property_UnitReference_sysadmin_3536996961" typeName="UnitReference">
																							<description></description>
																							<dataType>
																								<object href="#Object_Unit_sysadmin_3536996865"></object>
																							</dataType>
																						</property>
																					</slot>
																					<slot id="ivrp3i" name="Description" unique="false">
																						<property href="#Property_2Description_user_3310902697"></property>
																					</slot>
																					<identProp slotID="ino8c4"></identProp>
																					<objectSymbol offset="50,30" scaleFilter="1,1" xmlns="http://www.metacase.com/symbol">
																						<defaultConnectable isSticky="true" points="50,30 220,30 220,150 50,150 50,30" targetPointX="135" targetPointY="90" usesGrid="true"></defaultConnectable>
																						<svg baseProfile="tiny" height="152" version="1.2" width="222" xmlns="http://www.w3.org/2000/svg">
																							<rect fill="rgb(170,170,170)" height="120" rx="0" ry="0" stroke="rgb(170,170,170)" stroke-width="1" width="170" x="52" y="32">
																								<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																							</rect>
																							<rect fill="rgb(255,224,255)" height="120" rx="0" ry="0" stroke="rgb(128,0,128)" stroke-width="1" width="170" x="50" y="30">
																								<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																							</rect>
																							<textArea display-align="before" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="120" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="middle" width="170" x="50" y="30">
																								ReportTextSource:type; newline
:Short name;
																								<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																							</textArea>
																							<textArea display-align="before" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="120" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="start" width="170" x="50" y="30">
																								ReportTextSource:_dataTypeDetails()
																								<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																							</textArea>
																						</svg>
																					</objectSymbol>
																					<icon offset="70,40" xmlns="http://www.metacase.com/icon">
																						<svg baseProfile="tiny" height="80" version="1.2" width="120" xmlns="http://www.w3.org/2000/svg">
																							<textArea display-align="center" fill="rgb(0,0,0)" font-family="#sans serif" font-size="40" font-style="normal" font-weight="normal" height="40" sym:characterBackgroundFill="none" sym:textboxFill="rgb(255,224,255)" sym:textboxStroke="rgb(128,0,128)" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="middle" width="50" x="70" y="40">U</textArea>
																						</svg>
																					</icon>
																				</object>
																			</dataType>
																		</property>
																	</slot>
																	<slot id="a6rp0n" name="Description" unique="false">
																		<property href="#Property_2Description_user_3310902697"></property>
																	</slot>
																	<identProp slotID="a0o7eh"></identProp>
																	<objectSymbol offset="30,30" scaleFilter="1,1" xmlns="http://www.metacase.com/symbol">
																		<defaultConnectable isSticky="true" points="30,30 200,30 200,140 30,140 30,30" targetPointX="115" targetPointY="85" usesGrid="true"></defaultConnectable>
																		<svg baseProfile="tiny" height="142" version="1.2" width="203" xmlns="http://www.w3.org/2000/svg">
																			<defs>
																				<radialGradient cx="0.5" cy="0.5" gradientUnits="objectBoundingBox" id="gradient1" r="0.70711" sym:correctGamma="true" sym:fillType="PathFill">
																					<stop offset="0" stop-color="rgb(255,255,255)"></stop>
																					<stop offset="0.4" stop-color="rgb(255,255,255)"></stop>
																					<stop offset="1" stop-color="rgb(160,160,255)"></stop>
																				</radialGradient>
																			</defs>
																			<rect fill="rgb(170,170,170)" height="110" rx="0" ry="0" stroke="rgb(170,170,170)" stroke-width="1" width="170" x="33" y="32">
																				<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																			</rect>
																			<rect fill="rgb(224,239,255)" height="110" rx="0" ry="0" stroke="rgb(0,0,0)" stroke-width="1" width="170" x="30" y="30">
																				<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																			</rect>
																			<g fill="none" stroke="none" stroke-width="1" sym:height="16" sym:width="16" sym:x="1.82e2" sym:y="3.2e1">
																				<rect fill="url(#gradient1)" height="16" rx="8" ry="0" stroke="rgb(0,0,0)" stroke-width="1" width="16" x="182" y="32">
																					<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																				</rect>
																				<textArea display-align="before" fill="rgb(0,0,0)" font-family="#sans serif" font-size="16" font-style="normal" font-weight="bold" height="16" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="middle" width="16" x="182" y="32">
																					1
																					<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																				</textArea>
																				<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																			</g>
																			<textArea display-align="before" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="110" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="middle" width="170" x="30" y="30">
																				ReportTextSource:'Numerical'; newline
:Short name;
																				<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																			</textArea>
																			<textArea display-align="before" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="110" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="start" width="170" x="30" y="30">
																				ReportTextSource:_dataTypeDetails()
																				<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																			</textArea>
																		</svg>
																	</objectSymbol>
																	<icon offset="100,60" xmlns="http://www.metacase.com/icon">
																		<svg baseProfile="tiny" height="130" version="1.2" width="170" xmlns="http://www.w3.org/2000/svg">
																			<defs>
																				<radialGradient cx="0.5" cy="0.5" gradientUnits="objectBoundingBox" id="gradient1" r="0.707107" sym:correctGamma="true" sym:fillType="PathFill">
																					<stop offset="0" stop-color="rgb(255,255,255)"></stop>
																					<stop offset="0.4" stop-color="rgb(255,255,255)"></stop>
																					<stop offset="1" stop-color="rgb(160,160,255)"></stop>
																				</radialGradient>
																			</defs>
																			<rect fill="url(#gradient1)" height="70" rx="6" ry="6" stroke="rgb(0,0,0)" stroke-width="1" width="70" x="100" y="60"></rect>
																			<textArea display-align="before" fill="rgb(0,0,0)" font-family="#sans serif" font-size="80" font-style="normal" font-weight="bold" height="70" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="middle" width="70" x="100" y="60">1</textArea>
																		</svg>
																	</icon>
																</object>
															</dataTypeSubtype>
															<dataTypeSubtype>
																<object id="Object_EAString_sysadmin_3536996221" type="Object_EAString_sysadmin_3536996221" typeName="EAString">
																	<description>EAString is the primitive type that defines a sequence of characters in some suitable character set used to display information.</description>
																	<superType>
																		<object href="#Object__EADatatype_sysadmin_3536996100"></object>
																	</superType>
																	<slot id="a0rp1c" name="Description" unique="false">
																		<property href="#Property_2Description_user_3310902697"></property>
																	</slot>
																	<identProp slotID="a0o7eh"></identProp>
																	<objectSymbol offset="50,50" scaleFilter="1,1" xmlns="http://www.metacase.com/symbol">
																		<defaultConnectable isSticky="true" points="49.75,50.75 220,50.75 220,161 49.75,161 49.75,50.75" targetPointX="134.875" targetPointY="105.875" usesGrid="true"></defaultConnectable>
																		<svg baseProfile="tiny" height="163" version="1.2" width="223" xmlns="http://www.w3.org/2000/svg">
																			<rect fill="rgb(170,170,170)" height="110" rx="0" ry="0" stroke="rgb(170,170,170)" stroke-width="1" width="170" x="53" y="53">
																				<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																			</rect>
																			<rect fill="rgb(239,255,224)" height="110" rx="0" ry="0" stroke="rgb(0,0,0)" stroke-width="1" width="170" x="50" y="51">
																				<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																			</rect>
																			<g fill="none" stroke="none" stroke-width="1" sym:height="15" sym:width="16" sym:x="2.02e2" sym:y="5.2e1">
																				<rect fill="rgb(0,128,0)" height="14" rx="0" ry="6" stroke="rgb(0,0,0)" stroke-width="1" width="16" x="202" y="53">
																					<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																				</rect>
																				<textArea display-align="before" fill="rgb(255,255,255)" font-family="#fixed" font-size="15" font-style="normal" font-weight="bold" height="15" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="middle" width="16" x="202" y="52">
																					C
																					<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																				</textArea>
																				<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																			</g>
																			<textArea display-align="before" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="110" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="middle" width="170" x="50" y="50">
																				ReportTextSource:'String'; newline
:Short name;
																				<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																			</textArea>
																			<textArea display-align="before" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="110" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="start" width="170" x="50" y="50">
																				ReportTextSource:_dataTypeDetails()
																				<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																			</textArea>
																		</svg>
																	</objectSymbol>
																	<icon offset="100,50" xmlns="http://www.metacase.com/icon">
																		<svg baseProfile="tiny" height="130" version="1.2" width="170" xmlns="http://www.w3.org/2000/svg">
																			<rect fill="rgb(0,128,0)" height="70" rx="6" ry="6" stroke="rgb(0,0,0)" stroke-width="1" width="70" x="100" y="60"></rect>
																			<textArea display-align="before" fill="rgb(255,255,255)" font-family="#fixed" font-size="88" font-style="normal" font-weight="bold" height="80" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="middle" width="70" x="100" y="50">C</textArea>
																		</svg>
																	</icon>
																</object>
															</dataTypeSubtype>
															<dataTypeSubtype>
																<object id="Object_Enumeration_sysadmin_3536996326" type="Object_Enumeration_sysadmin_3536996326" typeName="Enumeration">
																	<description>Enumeration is a kind of datatype, whose instances may be any number &gt; 1 of user-defined enumeration literals. Enumerations contain at least two literals, otherwise it would be a constant. The contained literals need to be ordered.</description>
																	<superType>
																		<object href="#Object__EADatatype_sysadmin_3536996100"></object>
																	</superType>
																	<slot id="a1o7m9" name="IsMultiValued" unique="false">
																		<property type="Property_IsMultiValued_sysadmin_3509699158" typeName="IsMultiValued">
																			<description>This boolean attribute is true, if multiple enumeration values can be selected. It is false, if only one enumeration value is allowed to be selected.</description>
																			<dataType>
																				<simpleType>Boolean</simpleType>
																			</dataType>
																			<defaultValue></defaultValue>
																		</property>
																	</slot>
																	<slot id="a2o7nd" name="Literals" unique="false">
																		<property type="Property_Literals_sysadmin_3509696318" typeName="Literals">
																			<description>Collection of literals (value) of the enumeration.</description>
																			<dataType>
																				<simpleType>Collection</simpleType>
																			</dataType>
																			<contentsDataType>
																				<simpleType>String</simpleType>
																			</contentsDataType>
																		</property>
																	</slot>
																	<slot id="a3rp1s" name="Description" unique="false">
																		<property href="#Property_2Description_user_3310902697"></property>
																	</slot>
																	<identProp slotID="a0o7eh"></identProp>
																	<objectSymbol offset="30,30" scaleFilter="1,1" xmlns="http://www.metacase.com/symbol">
																		<defaultConnectable isSticky="true" points="30,30 200,30 200,140 30,140 30,30" targetPointX="115" targetPointY="85" usesGrid="true"></defaultConnectable>
																		<svg baseProfile="tiny" height="142" version="1.2" width="203" xmlns="http://www.w3.org/2000/svg">
																			<rect fill="rgb(170,170,170)" height="110" rx="0" ry="0" stroke="rgb(170,170,170)" stroke-width="1" width="170" x="33" y="32">
																				<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																			</rect>
																			<rect fill="rgb(240,240,240)" height="110" rx="0" ry="0" stroke="rgb(0,0,0)" stroke-width="1" width="170" x="30" y="30">
																				<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																			</rect>
																			<g fill="none" stroke="rgb(0,0,0)" stroke-width="1" sym:height="16" sym:width="16" sym:x="1.82e2" sym:y="3.2e1">
																				<rect fill="rgb(229,229,229)" height="16" rx="0" ry="8" stroke="rgb(0,0,0)" stroke-width="1" width="16" x="182" y="32">
																					<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																				</rect>
																				<g fill="none" stroke="rgb(0,0,0)" sym:height="4" sym:width="12.857" sym:x="1.84e2" sym:y="3.49714e1">
																					<ellipse cx="186" cy="36.9714" fill="rgb(0,0,0)" rx="2" ry="2" stroke="rgb(0,0,0)" stroke-width="1" sym:startAngle="0.0e0" sym:sweepAngle="3.6e2">
																						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																					</ellipse>
																					<line stroke="rgb(0,0,0)" stroke-width="4" x1="190" x2="196.857" y1="36.9714" y2="36.9714">
																						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																					</line>
																					<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																				</g>
																				<g fill="none" stroke="rgb(0,0,0)" sym:height="4" sym:width="12.857" sym:x="1.84e2" sym:y="4.1e1">
																					<ellipse cx="186" cy="43" fill="rgb(0,0,0)" rx="2" ry="2" stroke="rgb(0,0,0)" stroke-width="1" sym:startAngle="0.0e0" sym:sweepAngle="3.6e2">
																						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																					</ellipse>
																					<line stroke="rgb(0,0,0)" stroke-width="4" x1="190" x2="196.857" y1="43" y2="43">
																						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																					</line>
																					<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																				</g>
																				<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																			</g>
																			<textArea display-align="before" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="110" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="middle" width="170" x="30" y="30">
																				ReportTextSource:type; newline
:Short name;
																				<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																			</textArea>
																			<textArea display-align="before" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="110" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="start" width="170" x="30" y="30">
																				ReportTextSource:_dataTypeDetails()
																				<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																			</textArea>
																		</svg>
																	</objectSymbol>
																	<icon offset="143,41" xmlns="http://www.metacase.com/icon">
																		<svg baseProfile="tiny" height="111" version="1.2" width="213" xmlns="http://www.w3.org/2000/svg">
																			<rect fill="rgb(229,229,229)" height="70" rx="6" ry="6" stroke="rgb(0,0,0)" stroke-width="1" width="70" x="143" y="41"></rect>
																			<ellipse cx="158" cy="64" fill="rgb(0,0,0)" rx="10" ry="10" stroke="rgb(0,0,0)" stroke-width="1" sym:startAngle="3.6e2" sym:sweepAngle="-3.6e2"></ellipse>
																			<ellipse cx="158" cy="94" fill="rgb(0,0,0)" rx="10" ry="10" stroke="rgb(0,0,0)" stroke-width="1" sym:startAngle="3.6e2" sym:sweepAngle="-3.6e2"></ellipse>
																			<line stroke="rgb(0,0,0)" stroke-width="5" x1="178" x2="208" y1="64" y2="64"></line>
																			<line stroke="rgb(0,0,0)" stroke-width="5" x1="178" x2="208" y1="94" y2="94"></line>
																		</svg>
																	</icon>
																</object>
															</dataTypeSubtype>
															<dataTypeSubtype>
																<object id="Object_RangeableValueType_sysadmin_3536997383" type="Object_RangeableValueType_sysadmin_3536997383" typeName="RangeableValueType">
																	<description>The RangeableValueType adds the ability to describe the accuracy, resolution, and the significant digits of the baseRangeable datatype.</description>
																	<superType>
																		<object href="#Object__EADatatype_sysadmin_3536996100"></object>
																	</superType>
																	<slot id="a0o9f8" name="Accuracy" unique="false">
																		<property type="Property_Accuracy_sysadmin_3509699452" typeName="Accuracy">
																			<description>The accuracy of the data (e.g., the FunctionFlowports input or output).</description>
																			<dataType>
																				<simpleType>String</simpleType>
																			</dataType>
																			<defaultValue>
																				<string></string>
																			</defaultValue>
																			<widget>Input Field</widget>
																		</property>
																	</slot>
																	<slot id="a1o9fi" name="Resolution" unique="false">
																		<property type="Property_Resolution_sysadmin_3509699465" typeName="Resolution">
																			<description>The resolution of the data expressed as the size of the minimum difference between data values.</description>
																			<dataType>
																				<simpleType>String</simpleType>
																			</dataType>
																			<defaultValue>
																				<string></string>
																			</defaultValue>
																			<widget>Input Field</widget>
																		</property>
																	</slot>
																	<slot id="a2o9g3" name="SignificantDigits" unique="false">
																		<property type="Property_SignificantDigits_sysadmin_3509699527" typeName="SignificantDigits">
																			<description>SignificantDigits must be positive interger number.</description>
																			<dataType>
																				<simpleType>String</simpleType>
																			</dataType>
																			<defaultValue>
																				<string>0</string>
																			</defaultValue>
																			<regex>\d+</regex>
																			<widget>Input Field</widget>
																		</property>
																	</slot>
																	<slot id="a3ob1l" name="BaseRangeable" unique="false">
																		<property type="Property_BaseRangeable_sysadmin_3536998516" typeName="BaseRangeable">
																			<description>The datatype with additional attributes specified by this concept.</description>
																			<dataType>
																				<object href="#Object_EANumerical_sysadmin_3536996437"></object>
																			</dataType>
																		</property>
																	</slot>
																	<slot id="a4rp2b" name="Description" unique="false">
																		<property href="#Property_2Description_user_3310902697"></property>
																	</slot>
																	<identProp slotID="a0o7eh"></identProp>
																	<objectSymbol offset="40,50" scaleFilter="1,1" xmlns="http://www.metacase.com/symbol">
																		<defaultConnectable isSticky="true" points="40,50 210,50 210,160 40,160 40,50" targetPointX="125" targetPointY="105" usesGrid="true"></defaultConnectable>
																		<svg baseProfile="tiny" height="162" version="1.2" width="213" xmlns="http://www.w3.org/2000/svg">
																			<rect fill="rgb(170,170,170)" height="110" rx="0" ry="0" stroke="rgb(170,170,170)" stroke-width="1" width="170" x="43" y="52">
																				<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																			</rect>
																			<rect fill="rgb(255,255,224)" height="110" rx="0" ry="0" stroke="rgb(0,0,0)" stroke-width="1" width="170" x="40" y="50">
																				<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																			</rect>
																			<g fill="none" stroke="rgb(0,0,0)" sym:height="16" sym:width="16" sym:x="1.91e2" sym:y="5.2e1">
																				<rect fill="rgb(255,255,255)" height="16" rx="0" ry="0" stroke="rgb(0,0,0)" stroke-width="1" width="16" x="191" y="52">
																					<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																				</rect>
																				<polygon fill="rgb(0,0,0)" points="202.429,60 207,56.5714 207,63.4286" stroke="rgb(0,0,0)" stroke-width="0">
																					<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																				</polygon>
																				<polygon fill="rgb(0,0,0)" points="195.571,60 191,56.5714 191,63.4286" stroke="rgb(0,0,0)" stroke-width="0">
																					<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																				</polygon>
																				<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																			</g>
																			<textArea display-align="before" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="110" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="middle" width="170" x="40" y="50">
																				ReportTextSource:type; newline
:Short name;
																				<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																			</textArea>
																			<textArea display-align="before" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="110" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="start" width="170" x="40" y="50">
																				ReportTextSource:_dataTypeDetails()
																				<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																			</textArea>
																		</svg>
																	</objectSymbol>
																	<icon offset="113,47" xmlns="http://www.metacase.com/icon">
																		<svg baseProfile="tiny" height="117" version="1.2" width="183" xmlns="http://www.w3.org/2000/svg">
																			<rect fill="rgb(255,255,255)" height="70" rx="6" ry="6" stroke="rgb(0,0,0)" stroke-width="1" width="70" x="113" y="47"></rect>
																			<polygon fill="rgb(0,0,0)" points="163,82 183,67 183,97" stroke="rgb(0,0,0)" stroke-width="0"></polygon>
																			<polygon fill="rgb(0,0,0)" points="133,82 113,67 113,97" stroke="rgb(0,0,0)" stroke-width="0"></polygon>
																		</svg>
																	</icon>
																</object>
															</dataTypeSubtype>
														</property>
													</slot>
													<slot id="a9royv" name="Description" unique="false">
														<property href="#Property_2Description_user_3310902697"></property>
													</slot>
													<identProp slotID="a0o7eh"></identProp>
													<objectSymbol offset="40,40" scaleFilter="1,1" xmlns="http://www.metacase.com/symbol">
														<defaultConnectable isSticky="true" points="40,40 210,40 210,150 40,150 40,40" targetPointX="125" targetPointY="95" usesGrid="true"></defaultConnectable>
														<svg baseProfile="tiny" height="152" version="1.2" width="212" xmlns="http://www.w3.org/2000/svg">
															<rect fill="rgb(170,170,170)" height="110" rx="0" ry="0" stroke="rgb(170,170,170)" stroke-width="1" width="170" x="42" y="42">
																<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
															</rect>
															<rect fill="rgb(255,255,179)" height="110" rx="0" ry="0" stroke="rgb(0,0,0)" stroke-width="1" width="170" x="40" y="40">
																<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
															</rect>
															<g fill="none" stroke="rgb(0,0,0)" stroke-width="1" sym:height="16" sym:width="16" sym:x="1.92e2" sym:y="4.2e1">
																<rect fill="rgb(255,255,179)" height="16" rx="0" ry="4" stroke="rgb(0,0,0)" stroke-width="1" width="16" x="192" y="42">
																	<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																</rect>
																<g fill="rgb(0,0,0)" stroke="rgb(0,0,0)" stroke-width="1" sym:height="3" sym:width="13.514" sym:x="1.93143e2" sym:y="4.81714e1">
																	<rect fill="rgb(0,0,0)" height="3" rx="0" ry="0" stroke="rgb(0,0,0)" stroke-width="1" width="3" x="193.143" y="48.1714">
																		<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																	</rect>
																	<rect fill="rgb(0,0,0)" height="3" rx="0" ry="0" stroke="rgb(0,0,0)" stroke-width="1" width="3" x="198.4" y="48.1714">
																		<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																	</rect>
																	<rect fill="rgb(0,0,0)" height="3" rx="0" ry="0" stroke="rgb(0,0,0)" stroke-width="1" width="3" x="203.657" y="48.1714">
																		<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																	</rect>
																	<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																</g>
																<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
															</g>
															<textArea display-align="before" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="110" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="middle" width="170" x="40" y="40">
																ReportTextSource:type; newline
:Short name;
																<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
															</textArea>
															<textArea display-align="before" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="110" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="start" width="170" x="40" y="40">
																ReportTextSource:_dataTypeDetails()
																<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
															</textArea>
														</svg>
													</objectSymbol>
													<icon offset="117,43" xmlns="http://www.metacase.com/icon">
														<svg baseProfile="tiny" height="113" version="1.2" width="187" xmlns="http://www.w3.org/2000/svg">
															<rect fill="rgb(255,255,179)" height="70" rx="6" ry="6" stroke="rgb(0,0,0)" stroke-width="1" width="70" x="117" y="43"></rect>
															<g fill="rgb(0,0,0)" stroke="rgb(0,0,0)" stroke-width="1" sym:height="15" sym:width="61" sym:x="1.22e2" sym:y="7.0e1">
																<rect fill="rgb(0,0,0)" height="15" rx="0" ry="0" stroke="rgb(0,0,0)" stroke-width="1" width="15" x="122" y="70"></rect>
																<rect fill="rgb(0,0,0)" height="15" rx="0" ry="0" stroke="rgb(0,0,0)" stroke-width="1" width="15" x="145" y="70"></rect>
																<rect fill="rgb(0,0,0)" height="15" rx="0" ry="0" stroke="rgb(0,0,0)" stroke-width="1" width="15" x="168" y="70"></rect>
															</g>
														</svg>
													</icon>
												</object>
											</dataTypeSubtype>
											<dataTypeSubtype>
												<object href="#Object_CompositeDatatype_sysadmin_3536998574"></object>
											</dataTypeSubtype>
											<dataTypeSubtype>
												<object href="#Object_EABoolean_sysadmin_3536996172"></object>
											</dataTypeSubtype>
											<dataTypeSubtype>
												<object href="#Object_EANumerical_sysadmin_3536996437"></object>
											</dataTypeSubtype>
											<dataTypeSubtype>
												<object href="#Object_EAString_sysadmin_3536996221"></object>
											</dataTypeSubtype>
											<dataTypeSubtype>
												<object href="#Object_Enumeration_sysadmin_3536996326"></object>
											</dataTypeSubtype>
											<dataTypeSubtype>
												<object href="#Object_RangeableValueType_sysadmin_3536997383"></object>
											</dataTypeSubtype>
										</property>
									</slot>
									<slot id="aier25" name="Description" unique="false">
										<property href="#Property_2Description_user_3310902697"></property>
									</slot>
									<identReport>if :Name; then :Name; else :Short name; endif</identReport>
									<objectSymbol offset="59,19" scaleFilter="1,1" xmlns="http://www.metacase.com/symbol">
										<defaultConnectable isSticky="true" points="210,68 209.315,72.5922 207.364,76.4853 204.444,79.0866 201,80 68.75,80 65.3058,79.0866 62.386,76.4853 60.4351,72.5922 59.75,68 59.75,31.75 60.4351,27.1578 62.386,23.2647 65.3058,20.6634 68.75,19.75 201,19.75 204.444,20.6634 207.364,23.2647 209.315,27.1578 210,31.75 210,68" targetPointX="134" targetPointY="49" usesGrid="true"></defaultConnectable>
										<svg baseProfile="tiny" height="83" version="1.2" width="213" xmlns="http://www.w3.org/2000/svg">
											<defs>
												<linearGradient gradientUnits="objectBoundingBox" id="gradient1" sym:correctGamma="true" x1="0.633333" x2="1.07333" y1="0.5" y2="1.2125">
													<stop offset="0" stop-color="rgb(240,240,240)"></stop>
													<stop offset="1" stop-color="rgb(170,170,170)"></stop>
												</linearGradient>
											</defs>
											<rect fill="rgb(170,170,170)" height="60" rx="9" ry="12" stroke="rgb(170,170,170)" stroke-width="1" width="150" x="63" y="23">
												<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
											</rect>
											<rect fill="url(#gradient1)" height="60" rx="9" ry="12" stroke="rgb(128,128,128)" stroke-width="1" width="150" x="60" y="20">
												<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
											</rect>
											<textArea display-align="center" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="60" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="2" sym:wordWrap="true" text-anchor="middle" width="150" x="60" y="20">
												ReportTextSource:id
												<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
											</textArea>
											<textArea display-align="before" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="60" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="end" width="148" x="60" y="20">
												PropertyTextSource:afer4z
												<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
											</textArea>
											<rect fill="none" height="62" rx="9" ry="12" stroke="rgb(0,0,0)" stroke-width="2" width="152" x="59" y="19">
												<metaInfo xmlns="http://www.metacase.com/symbol">
													<displayCondition conditionOperator="=" matchString="T" xmlns="http://www.w3.org/2000/svg">ReportTextSource:if not (~Child; or containers;) then 'T' endif</displayCondition>
												</metaInfo>
											</rect>
										</svg>
									</objectSymbol>
								</object>
							</superType>
							<slot id="ajpbw7" name="IsCustomerVisible" unique="false">
								<property type="Property_IsCustomerVisible_user_3400133691" typeName="IsCustomerVisible">
									<description>This attribute states whether the VehicleFeature is customer visible (in contrast to a VehicleFeature that is e.g. technically driven).</description>
									<dataType>
										<simpleType>Boolean</simpleType>
									</dataType>
									<defaultValue></defaultValue>
								</property>
							</slot>
							<slot id="akpbyx" name="IsDesignVariabilityRationale" unique="false">
								<property type="Property_IsDesignVariabilityRationale_user_3400133740" typeName="IsDesignVariabilityRationale">
									<description>A VehicleFeature marked as a design variability rationale captures a variant showing up on a concrete artifact level that needs to be modeled on the VehicleLevel as well, in order to be directly available for immediate configuration on vehicle level.</description>
									<dataType>
										<simpleType>Boolean</simpleType>
									</dataType>
									<defaultValue></defaultValue>
								</property>
							</slot>
							<slot id="alpc2x" name="IsRemoved" unique="false">
								<property type="Property_IsRemoved_user_3400133812" typeName="IsRemoved">
									<description>This attribute describes if the VehicleFeature is removed (but kept in the database for tracking of evolution, which is required by the multi-level concept).</description>
									<dataType>
										<simpleType>Boolean</simpleType>
									</dataType>
									<defaultValue></defaultValue>
								</property>
							</slot>
							<slot id="am5tj3" name="DeviationAttributeSet" unique="false">
								<property type="Property_DeviationAttributeSet_user_3401358175" typeName="DeviationAttributeSet">
									<description></description>
									<dataType>
										<object type="Object_DeviationAttributeSet_user_3401358127" typeName="DeviationAttributeSet">
											<description></description>
											<slot id="e2jy16" name="__UUID" unique="false">
												<property href="#Property___UUID_sysadmin_3604668056"></property>
											</slot>
											<slot id="ds5t2u" name="Short name" unique="false">
												<property type="Property_AttrubuteSetName_user_3401357883" typeName="AttrubuteSet">
													<description>Short name is mandatory and must start with an alphabetical character. It may contain characters, numbers or underscores.</description>
													<dataType>
														<simpleType>String</simpleType>
													</dataType>
													<defaultValue>
														<string></string>
													</defaultValue>
													<regex>[a-zA-Z]([a-zA-Z0-9]|_[a-zA-Z0-9])*_?</regex>
													<widget>Input Field</widget>
												</property>
											</slot>
											<slot id="e3jy1e" name="Name" unique="false">
												<property href="#Property_Name_sysadmin_3536998876"></property>
											</slot>
											<slot id="dt5t3p" name="AllowChangeAttribute" unique="false">
												<property id="Property_DeviationPermissionKind_user_3401355220" type="Property_DeviationPermissionKind_user_3401355220" typeName="DeviationPermissionKind">
													<description>The DeviationPermissionKind is an enumeration with enumeration literals defining possible values
for deviation attributes.</description>
													<dataType>
														<simpleType>String</simpleType>
													</dataType>
													<defaultValue>
														<string>yes</string>
													</defaultValue>
													<widget>Fixed List</widget>
													<listValues>
														<string>no</string>
														<string>append</string>
														<string>subset</string>
														<string>subtree</string>
														<string>widen</string>
														<string>yes</string>
													</listValues>
												</property>
											</slot>
											<slot id="du5t5c" name="AllowChangeCardinality" unique="false">
												<property href="#Property_DeviationPermissionKind_user_3401355220"></property>
											</slot>
											<slot id="dv5t6f" name="AllowChangeDescription" unique="false">
												<property href="#Property_DeviationPermissionKind_user_3401355220"></property>
											</slot>
											<slot id="dw5t7a" name="AllowChangeName" unique="false">
												<property href="#Property_DeviationPermissionKind_user_3401355220"></property>
											</slot>
											<slot id="dx5t8a" name="AllowMove" unique="false">
												<property href="#Property_DeviationPermissionKind_user_3401355220"></property>
											</slot>
											<slot id="dy5t97" name="AllowReduction" unique="false">
												<property href="#Property_DeviationPermissionKind_user_3401355220"></property>
											</slot>
											<slot id="dz5tac" name="AllowRefinement" unique="false">
												<property href="#Property_DeviationPermissionKind_user_3401355220"></property>
											</slot>
											<slot id="e05tbe" name="AllowRegrouping" unique="false">
												<property href="#Property_DeviationPermissionKind_user_3401355220"></property>
											</slot>
											<slot id="e15tcb" name="AllowRemoval" unique="false">
												<property href="#Property_DeviationPermissionKind_user_3401355220"></property>
											</slot>
											<identProp slotID="ds5t2u"></identProp>
										</object>
									</dataType>
								</property>
							</slot>
							<identReport>if :Name; then :Name; else :Short name; endif</identReport>
							<objectSymbol offset="60,20" scaleFilter="1,1" xmlns="http://www.metacase.com/symbol">
								<defaultConnectable isSticky="true" points="210,74 209.239,76.2961 207.071,78.2426 203.827,79.5433 200,80 69.75,80 65.9232,79.5433 62.6789,78.2426 60.5112,76.2961 59.75,74 59.75,25.75 60.5112,23.4539 62.6789,21.5074 65.9232,20.2067 69.75,19.75 200,19.75 203.827,20.2067 207.071,21.5074 209.239,23.4539 210,25.75 210,74" targetPointX="134" targetPointY="49" usesGrid="true"></defaultConnectable>
								<svg baseProfile="tiny" height="83" version="1.2" width="213" xmlns="http://www.w3.org/2000/svg">
									<defs>
										<radialGradient cx="0.486667" cy="0.516667" gradientUnits="objectBoundingBox" id="gradient1" r="0.695421" sym:correctGamma="true" sym:fillType="PathFill">
											<stop offset="0" stop-color="rgb(255,255,255)"></stop>
											<stop offset="0.808846" stop-color="rgb(212,235,212)"></stop>
											<stop offset="1" stop-color="rgb(169,225,169)"></stop>
										</radialGradient>
									</defs>
									<rect fill="rgb(0,128,128)" height="60" rx="10" ry="6" stroke="rgb(0,128,128)" stroke-width="1" width="150" x="63" y="23">
										<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
									</rect>
									<rect fill="url(#gradient1)" height="60" rx="10" ry="6" stroke="rgb(0,0,0)" stroke-width="1" width="150" x="60" y="20">
										<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
									</rect>
									<textArea display-align="center" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="60" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="middle" width="150" x="60" y="20">
										ReportTextSource:id
										<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
									</textArea>
									<g fill="none" stroke="none" stroke-width="1" sym:height="21" sym:width="30" sym:x="6.2e1" sym:y="2.2e1">
										<ellipse cx="77" cy="32.5" fill="rgb(0,128,128)" rx="15" ry="10.5" stroke="rgb(0,128,128)" stroke-width="1" sym:startAngle="0.0e0" sym:sweepAngle="3.6e2">
											<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
										</ellipse>
										<textArea display-align="center" fill="rgb(255,255,255)" font-family="cooper black" font-size="16" font-style="normal" font-weight="normal" height="17" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="middle" width="28" x="63" y="25">
											VF
											<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
										</textArea>
										<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
									</g>
									<textArea display-align="before" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="60" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="end" width="148" x="60" y="20">
										ReportTextSource:if :Cardinality &lt;&gt; '1' then 
	:Cardinality 
endif
										<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
									</textArea>
								</svg>
							</objectSymbol>
						</object>
					</contentsDataType>
				</property>
			</slot>
			<slot id="hnro8y" name="Text" unique="false">
				<property href="#Property_2Description_user_3310902697"></property>
			</slot>
			<identReport>if :Name; then :Name; else :Short name; endif</identReport>
			<objectSymbol offset="80,40" scaleFilter="1,1" xmlns="http://www.metacase.com/symbol">
				<defaultConnectable isSticky="true" points="190,74 189.543,76.2961 188.243,78.2426 186.296,79.5433 184,80 85.75,80 83.4539,79.5433 81.5074,78.2426 80.2067,76.2961 79.75,74 79.75,45.75 80.2067,43.4539 81.5074,41.5074 83.4539,40.2067 85.75,39.75 184,39.75 186.296,40.2067 188.243,41.5074 189.543,43.4539 190,45.75 190,74" targetPointX="134.875" targetPointY="59.875" usesGrid="true"></defaultConnectable>
				<svg baseProfile="tiny" height="82" version="1.2" width="192" xmlns="http://www.w3.org/2000/svg">
					<rect fill="rgb(0,0,128)" height="40" rx="6" ry="6" stroke="rgb(0,0,0)" stroke-width="1" width="110" x="82" y="42">
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</rect>
					<rect fill="rgb(224,239,255)" height="40" rx="6" ry="6" stroke="rgb(0,0,0)" stroke-width="1" width="110" x="80" y="40">
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</rect>
					<textArea display-align="center" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="40" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="middle" width="110" x="80" y="40">
						ReportTextSource:id; newline
:DevelopmentCategory
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
					<textArea display-align="before" fill="rgb(0,0,0)" font-family="#sans serif" font-size="12" font-style="italic" font-weight="normal" height="40" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="end" width="110" x="80" y="40">
						ReportTextSource:type
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
				</svg>
			</objectSymbol>
		</object>
		<object href="#Object_VehicleFeature_user_3400133821"></object>
		<object id="Object_Vulnerability_sysadmin_3758567422" type="Object_Vulnerability_sysadmin_3758567422" typeName="Vulnerability">
			<description>In order to represent the weak spots in the system architecture, Vulnerability describes the weakness and affiliation to one or more Items.</description>
			<slot id="n7i9l7" name="__UUID" unique="false">
				<property href="#Property___UUID_sysadmin_3604668056"></property>
			</slot>
			<slot id="n8i9lm" name="Short name" unique="false">
				<property href="#Property_2ModelName_user_3310896462"></property>
			</slot>
			<slot id="n9i9lv" name="Name" unique="false">
				<property href="#Property_Name_sysadmin_3536998876"></property>
			</slot>
			<slot id="nfrx5x" name="ConditionPrerequisiteComplexity" unique="false">
				<property type="Property_ConditionPrerequisiteComplexity_sysadmin_3758566779" typeName="ConditionPrerequisiteComplexity">
					<description>This metric describes the conditions beyond the attacker's control that must exist in order to exploit the vulnerability. As described below, such conditions may require the collection of more information about the target, the presence of certain system configuration settings, or computational exceptions. Importantly, the assessment of this metric excludes any requirements for user interaction in order to exploit the vulnerability (such conditions are captured in the User Interaction metric). This metric value is largest for the least complex attacks.

Low (L) Specialized access conditions or extenuating circumstances do not exist. An attacker can expect repeatable success against the vulnerable component.

High (H) A successful attack depends on conditions beyond the attacker's control. That is, a successful attack cannot be accomplished at will, but requires the attacker to invest in some measurable amount of effort in preparation or execution against the vulnerable component before a successful attack can be expected. 2 For example, a successful attack may depend on an attacker overcoming any of the following conditions:
- The attacker must conduct target-specific reconnaissance. For example, on target configuration settings, sequence numbers, shared secrets, etc.
- The attacker must prepare the target environment to improve exploit reliability. For example, repeated exploitation to win a race condition, or overcoming advanced exploit mitigation techniques.
- The attacker must inject herself into the logical network path between the target and the resource requested by the victim in order to read and/or modify network communications (e.g. man in the middle attack).</description>
					<dataType>
						<simpleType>String</simpleType>
					</dataType>
					<defaultValue>
						<string>(L)ow</string>
					</defaultValue>
					<widget>Fixed List</widget>
					<listValues>
						<string>(L)ow</string>
						<string>(H)igh</string>
					</listValues>
				</property>
			</slot>
			<slot id="ndiabu" name="Scope" unique="false">
				<property type="Property_Scope_sysadmin_3758567397" typeName="Scope">
					<description>Formally, Scope refers to the collection of privileges defined by a computing authority (e.g. an application, an operating system, or a sandbox environment) when granting access to computing resources (e.g. files, CPU, memory, etc). These privileges are assigned based on some method of identification and authorization. In some cases, the authorization may be simple or loosely controlled based upon predefined rules or standards. For example, in the case of Ethernet traffic sent to a network switch, the switch accepts traffic that arrives on its ports and is an authority that controls the traffic flow to other switch ports.

When the vulnerability of a software component governed by one authorization scope is able to affect resources governed by another authorization scope, a Scope change has occurred.

Intuitively, one may think of a scope change as breaking out of a sandbox, and an example would be a vulnerability in a virtual machine that enables an attacker to delete files on the host OS (perhaps even its own VM). In this example, there are two separate authorization authorities: one that defines and enforces privileges for the virtual machine and its users, and one that defines and enforces privileges for the host system within which the virtual machine runs.

A scope change would not occur, for example, with a vulnerability in Microsoft Word that allows an attacker to compromise all system files of the host OS, because the same authority enforces privileges of the user's instance of Word, and the host's system files.

The Base score is greater when a scope change has occurred.

- Unchanged (U) An exploited vulnerability can only affect resources managed by the same authority. In this case the vulnerable component and the impacted component are the same.
- Changed (C) An exploited vulnerability can affect resources beyond the authorization privileges intended by the vulnerable component. In this case the vulnerable component and the impacted component are different.
Attribute</description>
					<dataType>
						<simpleType>String</simpleType>
					</dataType>
					<defaultValue>
						<string>(U)nchanged</string>
					</defaultValue>
					<widget>Fixed List</widget>
					<listValues>
						<string>(U)nchanged</string>
						<string>(C)hanged</string>
					</listValues>
				</property>
			</slot>
			<slot id="nai9sn" name="ExploitCodeMaturity" unique="false">
				<property type="Property_ExploitCodeMaturity_sysadmin_3758567051" typeName="ExploitCodeMaturity">
					<description>This metric measures the likelihood of the vulnerability being attacked, and is typically based on the current state of exploit techniques, exploit code availability, or active, "in-the-wild" exploitation. Public availability of easy-to-use exploit code increases the number of potential attackers by including those who are unskilled, thereby increasing the severity of the vulnerability. Initially, real-world exploitation may only be theoretical. Publication of proof-of-concept code, functional exploit code, or sufficient technical details necessary to exploit the vulnerability may follow. Furthermore, the exploit code available may progress from a proof-of-concept demonstration to exploit code that is successful in exploiting the vulnerability consistently. In severe cases, it may be delivered as the payload of a network-based worm or virus or other automated attack tools.

Not Defined (X) Assigning this value to the metric will not influence the score. It is a signal to a scoring equation to skip this metric.

High (H) Functional autonomous code exists, or no exploit is required (manual trigger) and details are widely available. Exploit code works in every situation, or is actively being delivered via an autonomous agent (such as a worm or virus). Network-connected systems are likely to encounter scanning or exploitation attempts. Exploit development has reached the level of reliable, widely-available, easy-to-use automated tools.

Functional (F) Functional exploit code is available. The code works in most situations where the vulnerability exists.

Proof-of-Concept (P) Proof-of-concept exploit code is available, or an attack demonstration is not practical for most systems. The code or technique is not functional in all situations and may require substantial modification by a skilled attacker.

Unproven (U) No exploit code is available, or an exploit is theoretical.</description>
					<dataType>
						<simpleType>String</simpleType>
					</dataType>
					<defaultValue>
						<string>(X)Not Defined</string>
					</defaultValue>
					<widget>Fixed List</widget>
					<listValues>
						<string>(X)Not Defined</string>
						<string>(U)nproven</string>
						<string>(P)roof-of-Concept</string>
						<string>(F)unctional</string>
						<string>(H)igh</string>
					</listValues>
				</property>
			</slot>
			<slot id="nbi9xp" name="RemediationLevel" unique="false">
				<property type="Property_RemediationLevel_sysadmin_3758567142" typeName="RemediationLevel">
					<description>The Remediation Level of a vulnerability is an important factor for prioritization. The typical vulnerability is unpatched when initially published. Workarounds or hotfixes may offer interim remediation until an official patch or upgrade is issued. Each of these respective stages adjusts the temporal score downwards, reflecting the decreasing urgency as remediation becomes final.

Not Defined (X) &gt;Assigning this value to the metric will not influence the score. It is a signal to a scoring equation to skip this metric.

Unavailable (U) There is either no solution available or it is impossible to apply.

Workaround (W) There is an unofficial, non-vendor solution available. In some cases, users of the affected technology will create a patch of their own or provide steps to work around or otherwise mitigate the vulnerability.

Temporary Fix (T) There is an official but temporary fix available. This includes instances where the vendor issues a temporary hotfix, tool, or workaround.

Official Fix (O) A complete vendor solution is available. Either the vendor has issued an official patch, or an upgrade is available.</description>
					<dataType>
						<simpleType>String</simpleType>
					</dataType>
					<defaultValue>
						<string>(X)Not Defined</string>
					</defaultValue>
					<widget>Fixed List</widget>
					<listValues>
						<string>(X)Not Defined</string>
						<string>(O)fficial Fix</string>
						<string>(T)emporary Fix</string>
						<string>(W)orkaround</string>
						<string>(U)navailable</string>
					</listValues>
				</property>
			</slot>
			<slot id="ncia6d" name="ReportConfidence" unique="false">
				<property type="Property_ReportConfidence__sysadmin_3758567298" typeName="ReportConfidence">
					<description>This metric measures the degree of confidence in the existence of the vulnerability and the credibility of the known technical details. Sometimes only the existence of vulnerabilities are publicized, but without specific details. For example, an impact may be recognized as undesirable, but the root cause may not be known. The vulnerability may later be corroborated by research which suggests where the vulnerability may lie, though the research may not be certain. Finally, a vulnerability may be confirmed through acknowledgement by the author or vendor of the affected technology. The urgency of a vulnerability is higher when a vulnerability is known to exist with certainty. This metric also suggests the level of technical knowledge available to would-be attackers.

- Not Defined (X) Assigning this value to the metric will not influence the score. It is a signal to a scoring equation to skip this metric.
- Confirmed (C) Detailed reports exist, or functional reproduction is possible (functional exploits may provide this). Source code is available to independently verify the assertions of the research, or the author or vendor of the affected code has confirmed the presence of the vulnerability.
- Reasonable (R) Significant details are published, but researchers either do not have full confidence in the root cause, or do not have access to source code to fully confirm all of the interactions that may lead to the result. Reasonable confidence exists, however, that the bug is reproducible and at least one impact is able to be verified (proof-of-concept exploits may provide this). An example is a detailed write-up of research into a vulnerability with an explanation (possibly obfuscated or "left as an exercise to the reader") that gives assurances on how to reproduce the results.
- Unknown (U) There are reports of impacts that indicate a vulnerability is present. The reports indicate that the cause of the vulnerability is unknown, or reports may differ on the cause or impacts of the vulnerability. Reporters are uncertain of the true nature of the vulnerability, and there is little confidence in the validity of the reports or whether a static Base score can be applied given the differences described. An example is a bug report which notes that an intermittent but non-reproducible crash occurs, with evidence of memory corruption suggesting that denial of service, or possible more serious impacts, may result.</description>
					<dataType>
						<simpleType>String</simpleType>
					</dataType>
					<defaultValue>
						<string>(X)Not Defined</string>
					</defaultValue>
					<widget>Fixed List</widget>
					<listValues>
						<string>(X)Not Defined</string>
						<string>(U)nknown</string>
						<string>(R)easonable</string>
						<string>(C)onfirmed</string>
					</listValues>
				</property>
			</slot>
			<slot id="necxpe" name="Description" unique="false">
				<property href="#Property_2Description_user_3310902697"></property>
			</slot>
			<identReport>if :Name; then :Name; else :Short name; endif</identReport>
			<objectSymbol offset="30,20" scaleFilter="1,1" xmlns="http://www.metacase.com/symbol">
				<defaultConnectable isSticky="true" points="240,134 239.543,136.296 238.243,138.243 236.296,139.543 234,140 35.75,140 33.4539,139.543 31.5074,138.243 30.2067,136.296 29.75,134 29.75,25.75 30.2067,23.4539 31.5074,21.5074 33.4539,20.2067 35.75,19.75 234,19.75 236.296,20.2067 238.243,21.5074 239.543,23.4539 240,25.75 240,134" targetPointX="135" targetPointY="80" usesGrid="false"></defaultConnectable>
				<svg baseProfile="tiny" height="143" version="1.2" width="243" xmlns="http://www.w3.org/2000/svg">
					<rect fill="rgb(213,213,213)" height="120" rx="6" ry="10" stroke="rgb(213,213,213)" stroke-width="1" width="210" x="33" y="23">
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</rect>
					<rect fill="rgb(224,255,224)" height="120" rx="6" ry="6" stroke="rgb(0,0,0)" stroke-width="1" width="210" x="30" y="20">
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</rect>
					<textArea display-align="before" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="bold" height="120" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="middle" width="210" x="30" y="20">
						ReportTextSource:newline
id
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
					<textArea display-align="before" fill="rgb(0,0,0)" font-family="#sans serif" font-size="12" font-style="normal" font-weight="normal" height="120" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="middle" width="210" x="30" y="20">
						ReportTextSource:type
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
					<textArea display-align="before" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="120" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="3" sym:wordWrap="true" text-anchor="start" width="210" x="30" y="20">
						ReportTextSource:newline
newline
newline
do :ConditionPrerequisiteComplexity {_levelColoring() ' conditionPrerequisiteComplexity'} newline
_symGetScope()
/* do :Scope; { id ' scope' newline }  */
do :ExploitCodeMaturity; { id ' exploit code maturity' newline}
do :RemediationLevel; { id ' remediation level' newline}
do :ReportConfidence; { id ' report confidence' }


						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
					<textArea display-align="before" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="120" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="false" text-anchor="middle" width="210" x="30" y="20">
						ReportTextSource:newline; newline; 
'_______________________________________________________________________________________________________________________________________________'
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
					<template aligmentPointX="0.5" aligmentPointY="1" isMovable="false" revealConnectables="false" rotation="false" scaleFilter="0,0" subsymbolExtentX="20" subsymbolExtentY="20" useTargetpoint="false" width="1" xmlns="http://www.metacase.com/symbol">
						<pathLayout allocation="start" layoutDistance="40" lineSegmentTable="" points="240,20" startDistance="0">
							<layoutPath allocation="start" layoutDistance="99999" lineSegmentTable="true" points="0,0 -210,0" startDistance="10"></layoutPath>
						</pathLayout>
						<noneNPSource></noneNPSource>
						<librarySubsymbolSource>Vulnerability_symbol</librarySubsymbolSource>
						<metaInfo></metaInfo>
					</template>
				</svg>
			</objectSymbol>
			<icon offset="51,37" xmlns="http://www.metacase.com/icon">
				<svg baseProfile="tiny" height="99" version="1.2" width="110" xmlns="http://www.w3.org/2000/svg">
					<polygon fill="rgb(255,64,64)" points="77.0294,40.1 51,86.6 103.059,86.6" stroke="rgb(0,0,0)" stroke-width="1"></polygon>
					<textArea display-align="center" fill="rgb(0,0,0)" font-family="#sans serif" font-size="40" font-style="normal" font-weight="bold" height="62" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="middle" width="59" x="51" y="37">!</textArea>
				</svg>
			</icon>
		</object>
		<object id="Object_Score_sysadmin_3758566237" type="Object_Score_sysadmin_3758566237" typeName="Score">
			<description></description>
			<slot id="mui8in" name="CalculationFormula" unique="false">
				<property type="Property_CalculationFormula_sysadmin_3758566223" typeName="CalculationFormula">
					<description></description>
					<dataType>
						<simpleType>String</simpleType>
					</dataType>
					<defaultValue>
						<string></string>
					</defaultValue>
					<widget>Overridable List</widget>
					<listValues>
						<string>CVSS Base</string>
						<string>CVSS Temporal</string>
						<string></string>
					</listValues>
				</property>
			</slot>
			<slot id="mvi8iy" name="Value" unique="false">
				<property type="Property_Value_sysadmin_3564907045" typeName="Value">
					<description></description>
					<dataType>
						<simpleType>String</simpleType>
					</dataType>
					<defaultValue></defaultValue>
					<widget>Input Field</widget>
				</property>
			</slot>
			<identReport>:CalculationFormula; ':' :Value</identReport>
			<objectSymbol offset="17,35" scaleFilter="1,1" xmlns="http://www.metacase.com/symbol">
				<defaultConnectable isSticky="true" points="17,35 140,35 140,70 17,70 17,35" targetPointX="79" targetPointY="53" usesGrid="false"></defaultConnectable>
				<svg baseProfile="tiny" height="70" version="1.2" width="140" xmlns="http://www.w3.org/2000/svg">
					<defs>
						<radialGradient cx="0.5" cy="0.5" gradientUnits="objectBoundingBox" id="gradient1" r="0.707107" sym:correctGamma="true" sym:fillType="PathFill">
							<stop offset="0" stop-color="rgb(255,255,255)"></stop>
							<stop offset="1" stop-color="rgb(240,240,240)"></stop>
						</radialGradient>
						<radialGradient cx="0.5" cy="0.5" gradientUnits="objectBoundingBox" id="gradient2" r="0.699294" sym:correctGamma="true" sym:fillType="PathFill">
							<stop offset="0" stop-color="rgb(0,0,0)"></stop>
							<stop offset="1" stop-color="rgb(255,255,255)"></stop>
						</radialGradient>
					</defs>
					<rect fill="url(#gradient1)" height="35" rx="0" ry="0" stroke="rgb(96,96,96)" stroke-width="1" width="123" x="17" y="35">
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</rect>
					<textArea display-align="center" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="35" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="middle" width="90" x="50" y="35">
						ReportTextSource:'Score ' 
if not :Value; then '?' else :Value; endif  
' in ' :CalculationFormula

						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
					<g fill="none" stroke="none" sym:height="30" sym:width="27" sym:x="1.9e1" sym:y="3.75e1">
						<rect fill="url(#gradient2)" height="30" rx="0" ry="0" stroke="rgb(0,0,0)" stroke-width="1" width="27" x="19" y="37.5">
							<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
						</rect>
						<rect fill="rgb(0,0,0)" height="23.3333" rx="0" ry="0" stroke="rgb(0,0,0)" stroke-width="1" width="21" x="22" y="40.8333">
							<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
						</rect>
						<line stroke="rgb(0,128,0)" stroke-width="1" x1="25" x2="25" y1="40.8333" y2="64.1667">
							<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
						</line>
						<line stroke="rgb(0,128,0)" stroke-width="1" x1="28" x2="28" y1="40.8333" y2="64.1667">
							<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
						</line>
						<line stroke="rgb(0,128,0)" stroke-width="1" x1="31" x2="31" y1="40.8333" y2="64.1667">
							<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
						</line>
						<line stroke="rgb(0,128,0)" stroke-width="1" x1="34" x2="34" y1="40.8333" y2="64.1667">
							<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
						</line>
						<line stroke="rgb(0,128,0)" stroke-width="1" x1="37" x2="37" y1="40.8333" y2="64.1667">
							<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
						</line>
						<line stroke="rgb(0,128,0)" stroke-width="1" x1="40" x2="40" y1="40.8333" y2="64.1667">
							<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
						</line>
						<line stroke="rgb(0,128,0)" stroke-width="1" x1="22" x2="43" y1="60.8333" y2="60.8333">
							<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
						</line>
						<line stroke="rgb(0,128,0)" stroke-width="1" x1="22" x2="43" y1="57.5" y2="57.5">
							<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
						</line>
						<line stroke="rgb(0,128,0)" stroke-width="1" x1="22" x2="43" y1="54.1667" y2="54.1667">
							<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
						</line>
						<line stroke="rgb(0,128,0)" stroke-width="1" x1="22" x2="43" y1="50.8333" y2="50.8333">
							<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
						</line>
						<line stroke="rgb(0,128,0)" stroke-width="1" x1="22" x2="43" y1="47.5" y2="47.5">
							<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
						</line>
						<line stroke="rgb(0,128,0)" stroke-width="1" x1="22" x2="43" y1="44.1667" y2="44.1667">
							<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
						</line>
						<polyline fill="none" points="22.3,54.1667 24.7,54.1667 25.6,57.5 26.8,50.8333 28,53.8333 29.8,44.1667 32.2,53.5 34.9,53.5 37,58.1667 38.5,55.8333 40,55.8333 41.5,48.1667 41.5,48.1667" stroke="rgb(255,255,255)" stroke-width="2">
							<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
						</polyline>
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</g>
				</svg>
			</objectSymbol>
			<icon offset="50,30" xmlns="http://www.metacase.com/icon">
				<svg baseProfile="tiny" height="120" version="1.2" width="140" xmlns="http://www.w3.org/2000/svg">
					<defs>
						<radialGradient cx="0.5" cy="0.5" gradientUnits="objectBoundingBox" id="gradient1" r="0.699294" sym:correctGamma="true" sym:fillType="PathFill">
							<stop offset="0" stop-color="rgb(0,0,0)"></stop>
							<stop offset="1" stop-color="rgb(255,255,255)"></stop>
						</radialGradient>
					</defs>
					<rect fill="url(#gradient1)" height="90" rx="0" ry="0" stroke="rgb(0,0,0)" stroke-width="1" width="90" x="50" y="30"></rect>
					<rect fill="rgb(0,0,0)" height="70" rx="0" ry="0" stroke="rgb(0,0,0)" stroke-width="1" width="70" x="60" y="40"></rect>
					<line stroke="rgb(0,128,0)" stroke-width="1" x1="70" x2="70" y1="40" y2="110"></line>
					<line stroke="rgb(0,128,0)" stroke-width="1" x1="80" x2="80" y1="40" y2="110"></line>
					<line stroke="rgb(0,128,0)" stroke-width="1" x1="90" x2="90" y1="40" y2="110"></line>
					<line stroke="rgb(0,128,0)" stroke-width="1" x1="100" x2="100" y1="40" y2="110"></line>
					<line stroke="rgb(0,128,0)" stroke-width="1" x1="110" x2="110" y1="40" y2="110"></line>
					<line stroke="rgb(0,128,0)" stroke-width="1" x1="120" x2="120" y1="40" y2="110"></line>
					<line stroke="rgb(0,128,0)" stroke-width="1" x1="60" x2="130" y1="100" y2="100"></line>
					<line stroke="rgb(0,128,0)" stroke-width="1" x1="60" x2="130" y1="90" y2="90"></line>
					<line stroke="rgb(0,128,0)" stroke-width="1" x1="60" x2="130" y1="80" y2="80"></line>
					<line stroke="rgb(0,128,0)" stroke-width="1" x1="60" x2="130" y1="70" y2="70"></line>
					<line stroke="rgb(0,128,0)" stroke-width="1" x1="60" x2="130" y1="60" y2="60"></line>
					<line stroke="rgb(0,128,0)" stroke-width="1" x1="60" x2="130" y1="50" y2="50"></line>
					<polyline fill="none" points="61,80 69,80 72,90 76,70 80,79 86,50 94,78 103,78 110,92 115,85 120,85 125,62 125,62" stroke="rgb(255,255,255)" stroke-width="2"></polyline>
				</svg>
			</icon>
		</object>
		<object id="Object_SecurityConcept_sysadmin_3758566484" type="Object_SecurityConcept_sysadmin_3758566484" typeName="SecurityConcept">
			<description>Represents the set of security requirements that together fulfill a SecurityGoal, e.g., according to Com-Criteria (CC) ISO/IEC 15408.</description>
			<slot id="mwi8ni" name="__UUID" unique="false">
				<property href="#Property___UUID_sysadmin_3604668056"></property>
			</slot>
			<slot id="mxi8nq" name="Short name" unique="false">
				<property href="#Property_2ModelName_user_3310896462"></property>
			</slot>
			<slot id="myi8nz" name="Name" unique="false">
				<property href="#Property_Name_sysadmin_3536998876"></property>
			</slot>
			<slot id="mzi8ti" name="ConsequencesForQuality" unique="false">
				<property type="Property_ConsequencesForQuality_sysadmin_3758566418" typeName="ConsequencesForQuality">
					<description>Consequences for quality, e.g., regarding performance, usability, time, costs, etc. Enter one per line.</description>
					<dataType>
						<simpleType>Text</simpleType>
					</dataType>
					<defaultValue>
						<text></text>
					</defaultValue>
				</property>
			</slot>
			<slot id="n0i8uw" name="Motivated by standard" unique="false">
				<property type="Property_Motivated_by_standard_sysadmin_3758566444" typeName="Motivated by standard">
					<description></description>
					<dataType>
						<simpleType>Boolean</simpleType>
					</dataType>
					<defaultValue>
						<bool>false</bool>
					</defaultValue>
				</property>
			</slot>
			<slot id="n1i8vr" name="Motivated by certification" unique="false">
				<property type="Property_Motivated_by_certification_sysadmin_3758566459" typeName="Motivated by certification">
					<description></description>
					<dataType>
						<simpleType>Boolean</simpleType>
					</dataType>
					<defaultValue>
						<bool>false</bool>
					</defaultValue>
				</property>
			</slot>
			<slot id="n2i8wq" name="Motivated by documented attacks" unique="false">
				<property type="Property_Motivated_by_documented_attacks_sysadmin_3758566477" typeName="Motivated by documented attacks">
					<description></description>
					<dataType>
						<simpleType>Boolean</simpleType>
					</dataType>
					<defaultValue>
						<bool>false</bool>
					</defaultValue>
				</property>
			</slot>
			<slot id="n3cxqt" name="Description" unique="false">
				<property href="#Property_2Description_user_3310902697"></property>
			</slot>
			<identReport>if :Name; then :Name; else :Short name; endif</identReport>
			<objectSymbol offset="30,30" scaleFilter="1,1" xmlns="http://www.metacase.com/symbol">
				<defaultConnectable isSticky="true" points="230,110 229.543,113.827 228.243,117.071 226.296,119.239 224,120 35.75,120 33.4539,119.239 31.5074,117.071 30.2067,113.827 29.75,110 29.75,39.75 30.2067,35.9232 31.5074,32.6789 33.4539,30.5112 35.75,29.75 224,29.75 226.296,30.5112 228.243,32.6789 229.543,35.9232 230,39.75 230,110" targetPointX="130" targetPointY="75" usesGrid="false"></defaultConnectable>
				<svg baseProfile="tiny" height="120" version="1.2" width="230" xmlns="http://www.w3.org/2000/svg">
					<defs>
						<linearGradient gradientUnits="objectBoundingBox" id="gradient1" sym:correctGamma="true" x1="0.1" x2="0.992107" y1="0.172727" y2="1.00909">
							<stop offset="0" stop-color="rgb(255,255,255)"></stop>
							<stop offset="0.814944" stop-color="rgb(255,255,96)"></stop>
							<stop offset="1" stop-color="rgb(255,255,0)"></stop>
						</linearGradient>
					</defs>
					<rect fill="url(#gradient1)" height="90" rx="6" ry="10" stroke="rgb(0,0,0)" stroke-width="1" width="200" x="30" y="30">
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</rect>
					<textArea display-align="before" fill="rgb(0,0,0)" font-family="#sans serif" font-size="11" font-style="normal" font-weight="normal" height="90" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="middle" width="180" x="40" y="30">
						SecurityConcept
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
					<textArea display-align="before" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="90" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="middle" width="200" x="30" y="30">
						ReportTextSource:newline
id
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
					<textArea display-align="before" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="90" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="3" sym:wordWrap="true" text-anchor="start" width="200" x="30" y="30">
						ReportTextSource:newline
newline
newline
if :Motivated by standard; or :Motivated by certification; or :Motivated by documented attacks; then
	'Motivated by ' 
	if :Motivated by standard; then 'standard' @sep = ', ' endif
	if :Motivated by certification; then @sep 'certification' @sep = ', ' endif
	if :Motivated by documented attacks; then @sep 'documented attacks' endif
endif

						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
					<textArea display-align="before" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="90" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="false" text-anchor="middle" width="200" x="30" y="30">
						ReportTextSource:newline; newline; 
'_______________________________________________________________________________________________________________________________________________'
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
				</svg>
			</objectSymbol>
			<icon offset="30,30" xmlns="http://www.metacase.com/icon">
				<svg baseProfile="tiny" height="110" version="1.2" width="160" xmlns="http://www.w3.org/2000/svg">
					<defs>
						<linearGradient gradientUnits="objectBoundingBox" id="gradient1" sym:correctGamma="true" x1="0.1" x2="0.992107" y1="0.172727" y2="1.00909">
							<stop offset="0" stop-color="rgb(255,255,255)"></stop>
							<stop offset="0.814944" stop-color="rgb(255,255,96)"></stop>
							<stop offset="1" stop-color="rgb(255,255,0)"></stop>
						</linearGradient>
					</defs>
					<rect fill="url(#gradient1)" height="80" rx="6" ry="10" stroke="rgb(0,0,0)" stroke-width="1" width="130" x="30" y="30"></rect>
				</svg>
			</icon>
		</object>
		<object id="Object_Hazard_sysadmin_3509606795" type="Object_Hazard_sysadmin_3509606795" typeName="Hazard">
			<description>The Hazard element represents a condition or state in the system that may contribute to accidents. The associated malfunction identifies the FeatureFlaw that corresponds to the Hazard.</description>
			<slot id="a2c8si" name="__UUID" unique="false">
				<property href="#Property___UUID_sysadmin_3604668056"></property>
			</slot>
			<slot id="a023vw" name="Short name" unique="false">
				<property type="Property_HazardName_sysadmin_3509606806" typeName="HazardName">
					<description>Short name is mandatory and must start with an alphabetical character. It may contain characters, numbers or underscores.</description>
					<dataType>
						<simpleType>String</simpleType>
					</dataType>
					<defaultValue>
						<string></string>
					</defaultValue>
					<regex>[a-zA-Z]([a-zA-Z0-9]|_[a-zA-Z0-9])*_?</regex>
					<widget>Input Field</widget>
				</property>
			</slot>
			<slot id="a3c8uh" name="Name" unique="false">
				<property href="#Property_Name_sysadmin_3536998876"></property>
			</slot>
			<slot id="a1rnkp" name="Text" unique="false">
				<property href="#Property_2Description_user_3310902697"></property>
			</slot>
			<identReport>if :Name; then :Name; else :Short name; endif</identReport>
			<objectSymbol offset="55,5" scaleFilter="1,1" xmlns="http://www.metacase.com/symbol">
				<defaultConnectable isSticky="true" points="110,10 55,100 55,105 60,110 185,110 190,105 190,100 130,10 120,5 110,10" targetPointX="120" targetPointY="60" usesGrid="true"></defaultConnectable>
				<svg baseProfile="tiny" height="110" version="1.2" width="190" xmlns="http://www.w3.org/2000/svg">
					<polygon fill="rgb(255,255,0)" points="110,10 55,100 55,105 60,110 185,110 190,105 190,100 130,10 120,5" stroke="rgb(0,0,0)" stroke-width="1">
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</polygon>
					<textArea display-align="center" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="bold" height="50" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="3" sym:wordWrap="true" text-anchor="middle" width="135" x="55" y="60">
						ReportTextSource:id
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
					<textArea display-align="before" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="italic" font-weight="normal" height="90" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="middle" width="50" x="95" y="20">
						Haz
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
				</svg>
			</objectSymbol>
		</object>
		<object id="Object_Actor_user_3610197079" type="Object_Actor_user_3610197079" typeName="Actor">
			<description>Actor represents a type of role played by an entity that interacts with the Use case.</description>
			<slot id="lnu3ma" name="__UUID" unique="false">
				<property href="#Property___UUID_sysadmin_3604668056"></property>
			</slot>
			<slot id="lou3mk" name="Short name" unique="false">
				<property href="#Property_2ECUName_user_3310972947"></property>
			</slot>
			<slot id="lpu3mt" name="Name" unique="false">
				<property href="#Property_Name_sysadmin_3536998876"></property>
			</slot>
			<slot id="lqu3n2" name="Description" unique="false">
				<property href="#Property_2Description_user_3310902697"></property>
			</slot>
			<identReport>if :Name; then :Name; else :Short name; endif</identReport>
			<objectSymbol offset="30,70" scaleFilter="1,1" xmlns="http://www.metacase.com/symbol">
				<defaultConnectable isSticky="true" points="65,70 75,70 85,100 110,100 110,115 30,115 30,100 55,100 65,70" targetPointX="70" targetPointY="90" usesGrid="true"></defaultConnectable>
				<svg baseProfile="tiny" height="130" version="1.2" width="110" xmlns="http://www.w3.org/2000/svg">
					<template aligmentPointX="0.5" aligmentPointY="0.5" isMovable="false" revealConnectables="false" rotation="false" scaleFilter="0,0" subsymbolExtentX="40" subsymbolExtentY="45" useTargetpoint="false" width="1" xmlns="http://www.metacase.com/symbol">
						<pathLayout allocation="start" layoutDistance="40" lineSegmentTable="" points="70,100" startDistance="0">
							<layoutPath allocation="start" layoutDistance="9999" lineSegmentTable="true" points="0,0 0,-30" startDistance="10"></layoutPath>
						</pathLayout>
						<noneNPSource></noneNPSource>
						<librarySubsymbolSource>Actor</librarySubsymbolSource>
						<metaInfo></metaInfo>
					</template>
					<textArea display-align="before" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="30" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="middle" width="80" x="30" y="100">
						ReportTextSource:id
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
				</svg>
			</objectSymbol>
			<icon offset="50,30" xmlns="http://www.metacase.com/icon">
				<svg baseProfile="tiny" height="75.76" version="1.2" width="76.4" xmlns="http://www.w3.org/2000/svg">
					<defs>
						<radialGradient cx="0.342857" cy="0.225" gradientUnits="objectBoundingBox" id="gradient1" r="1.12887" sym:correctGamma="true" sym:fillType="PathFill">
							<stop offset="0" stop-color="rgb(255,255,255)"></stop>
							<stop offset="1" stop-color="rgb(0,128,0)"></stop>
						</radialGradient>
						<radialGradient cx="0.348485" cy="0.351852" gradientUnits="objectBoundingBox" id="gradient2" r="0.919004" sym:correctGamma="true" sym:fillType="PathFill">
							<stop offset="0" stop-color="rgb(255,255,255)"></stop>
							<stop offset="1" stop-color="rgb(0,128,0)"></stop>
						</radialGradient>
					</defs>
					<g fill="none" stroke="rgb(0,128,0)" stroke-width="0" sym:height="45.76" sym:width="26.4" sym:x="5.0e1" sym:y="3.0e1">
						<ellipse cx="63.2" cy="60.36" fill="url(#gradient1)" rx="13.2" ry="15.4" stroke="rgb(0,128,0)" stroke-width="0" sym:startAngle="1.8e2" sym:sweepAngle="1.8e2"></ellipse>
						<ellipse cx="63.2" cy="37.48" fill="url(#gradient2)" rx="6.6" ry="7.48" stroke="rgb(0,128,0)" stroke-width="0" sym:startAngle="0.0e0" sym:sweepAngle="3.6e2"></ellipse>
					</g>
				</svg>
			</icon>
		</object>
		<object id="Object_OperationalSituation_sysadmin_3509602770" type="Object_OperationalSituation_sysadmin_3509602770" typeName="OperationalSituation">
			<description>An operational situation is a state, condition or scenario in the environment that may influence the vehicle. The Operational Situation may be further detailed by a functional definition in the EnvironmentModel.</description>
			<slot id="iac6bi" name="__UUID" unique="false">
				<property href="#Property___UUID_sysadmin_3604668056"></property>
			</slot>
			<slot id="i81xm5" name="Short name" unique="false">
				<property type="Property_OperationalSituationName_sysadmin_3509602742" typeName="OperationalSituationName">
					<description>Short name is mandatory and must start with an alphabetical character. It may contain characters, numbers or underscores.</description>
					<dataType>
						<simpleType>String</simpleType>
					</dataType>
					<defaultValue>
						<string></string>
					</defaultValue>
					<regex>[a-zA-Z]([a-zA-Z0-9]|_[a-zA-Z0-9])*_?</regex>
					<widget>Input Field</widget>
				</property>
			</slot>
			<slot id="ibc6bz" name="Name" unique="false">
				<property href="#Property_Name_sysadmin_3536998876"></property>
			</slot>
			<slot id="i91xnc" name="Description" unique="false">
				<property href="#Property_2Description_user_3310902697"></property>
			</slot>
			<identReport>if :Name; then :Name; else :Short name; endif</identReport>
			<objectSymbol offset="90,50" scaleFilter="1,1" xmlns="http://www.metacase.com/symbol">
				<defaultConnectable isSticky="true" points="230,80 229.239,83.8268 227.071,87.0711 223.827,89.2388 220,90 99.75,90 95.9232,89.2388 92.6789,87.0711 90.5112,83.8268 89.75,80 89.75,59.75 90.5112,55.9232 92.6789,52.6789 95.9232,50.5112 99.75,49.75 220,49.75 223.827,50.5112 227.071,52.6789 229.239,55.9232 230,59.75 230,80" targetPointX="159.875" targetPointY="69.875" usesGrid="true"></defaultConnectable>
				<svg baseProfile="tiny" height="90" version="1.2" width="230" xmlns="http://www.w3.org/2000/svg">
					<rect fill="rgb(0,128,0)" height="40" rx="10" ry="10" stroke="rgb(0,0,0)" stroke-width="1" width="140" x="90" y="50">
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</rect>
					<textArea display-align="center" fill="rgb(255,255,255)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="bold" height="40" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="middle" width="140" x="90" y="50">
						ReportTextSource:id
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
					<textArea display-align="before" fill="rgb(255,255,255)" font-family="#sans serif" font-size="12" font-style="italic" font-weight="normal" height="40" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="end" width="137" x="90" y="50">
						OperationalSituation
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
				</svg>
			</objectSymbol>
		</object>
		<object id="Object_ADLRequirement_user_3400763726" type="Object_ADLRequirement_user_3400763726" typeName="Requirement">
			<description>The Requirement represents a capability or condition that must (or should) be satisfied.</description>
			<slot id="cm94t5" name="__UUID" unique="false">
				<property href="#Property___UUID_sysadmin_3604668056"></property>
			</slot>
			<slot id="cegc53" name="Short name" unique="false">
				<property type="Property_2RequirementName_user_3310903808" typeName="RequirementName">
					<description>Short name is mandatory and must start with an alphabetical character. It may contain characters, numbers or underscores.</description>
					<dataType>
						<simpleType>String</simpleType>
					</dataType>
					<defaultValue>
						<string></string>
					</defaultValue>
					<regex>[a-zA-Z]([a-zA-Z0-9]|_[a-zA-Z0-9])*_?</regex>
					<widget>Input Field</widget>
				</property>
			</slot>
			<slot id="cl94sa" name="Name" unique="false">
				<property href="#Property_Name_sysadmin_3536998876"></property>
			</slot>
			<slot id="cilf4e" name="Formalism" unique="false">
				<property type="Property_Formalism_user_3462188263" typeName="Formalism">
					<description>Specifies the language used for the requirement statement. </description>
					<dataType>
						<simpleType>String</simpleType>
					</dataType>
					<defaultValue>
						<string></string>
					</defaultValue>
					<widget>Input Field</widget>
				</property>
			</slot>
			<slot id="cjlf5t" name="Url" unique="false">
				<property type="Property_Url_user_3462188288" typeName="Url">
					<description>Reference to possible external file containing the requirement statement. </description>
					<dataType>
						<simpleType>String</simpleType>
					</dataType>
					<defaultValue>
						<string></string>
					</defaultValue>
					<widget>Input Field</widget>
				</property>
			</slot>
			<slot id="ck5kxl" name="Modes" unique="false">
				<property type="Property_Modes_sysadmin_3543224568" typeName="Modes">
					<description>The mode(s) where this requirement is valid.</description>
					<dataType>
						<simpleType>Collection</simpleType>
					</dataType>
					<contentsDataType>
						<object type="Object_Mode_sysadmin_3509262593" typeName="Mode">
							<description>Modes are a way to introduce various configurations in the system to account for different states of the system, or of a hardware entity, or an application. The use of modes can be used to filter different views of the model. Modes are characterized by a Boolean condition provided as a String, which evaluates to true when the Mode is active. The Mode is active if and only if the condition is true.</description>
							<slot id="hyc9tj" name="__UUID" unique="false">
								<property href="#Property___UUID_sysadmin_3604668056"></property>
							</slot>
							<slot id="hvn6km" name="Short name" unique="false">
								<property type="Property_Mode_name_sysadmin_3509258627" typeName="Mode name">
									<description>Short name is mandatory and must start with an alphabetical character. It may contain characters, numbers or underscores.</description>
									<dataType>
										<simpleType>String</simpleType>
									</dataType>
									<defaultValue>
										<string></string>
									</defaultValue>
									<regex>[a-zA-Z]([a-zA-Z0-9]|_[a-zA-Z0-9])*_?</regex>
									<widget>Input Field</widget>
								</property>
							</slot>
							<slot id="hzc9tr" name="Name" unique="false">
								<property href="#Property_Name_sysadmin_3536998876"></property>
							</slot>
							<slot id="hxn6oj" name="Condition" unique="false">
								<property type="Property_Condition_sysadmin_3509258696" typeName="Condition">
									<description>A Boolean expression that characterizes the Mode, it evaluates to true when the Mode is active. The syntax and grammar of this expression is unspecified.</description>
									<dataType>
										<simpleType>String</simpleType>
									</dataType>
									<defaultValue>
										<string></string>
									</defaultValue>
									<widget>Input Field</widget>
								</property>
							</slot>
							<slot id="hwn6kv" name="Description" unique="false">
								<property href="#Property_2Description_user_3310902697"></property>
							</slot>
							<identReport>if :Name; then :Name; else :Short name; endif</identReport>
							<objectSymbol offset="90,50" scaleFilter="1,1" xmlns="http://www.metacase.com/symbol">
								<defaultConnectable isSticky="true" points="230,80 229.239,83.8268 227.071,87.0711 223.827,89.2388 220,90 99.75,90 95.9232,89.2388 92.6789,87.0711 90.5112,83.8268 89.75,80 89.75,59.75 90.5112,55.9232 92.6789,52.6789 95.9232,50.5112 99.75,49.75 220,49.75 223.827,50.5112 227.071,52.6789 229.239,55.9232 230,59.75 230,80" targetPointX="159.875" targetPointY="69.875" usesGrid="true"></defaultConnectable>
								<svg baseProfile="tiny" height="90" version="1.2" width="230" xmlns="http://www.w3.org/2000/svg">
									<rect fill="rgb(192,224,255)" height="40" rx="10" ry="10" stroke="rgb(0,0,0)" stroke-width="1" width="140" x="90" y="50">
										<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
									</rect>
									<textArea display-align="center" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="bold" height="40" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="middle" width="140" x="90" y="50">
										ReportTextSource:id
										<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
									</textArea>
									<textArea display-align="before" fill="rgb(0,0,0)" font-family="#sans serif" font-size="12" font-style="italic" font-weight="normal" height="40" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="end" width="136" x="94" y="50">
										Mode
										<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
									</textArea>
								</svg>
							</objectSymbol>
						</object>
					</contentsDataType>
				</property>
			</slot>
			<slot id="ch5a4q" name="Description" unique="false">
				<property href="#Property_2Description_user_3310902697"></property>
			</slot>
			<identReport>if :Name; then :Name; else :Short name; endif</identReport>
			<objectSymbol offset="30,20" scaleFilter="1,1" xmlns="http://www.metacase.com/symbol">
				<defaultConnectable isSticky="true" points="30,20 210,20 210,140 30,140 30,20" targetPointX="120" targetPointY="80" usesGrid="true"></defaultConnectable>
				<svg baseProfile="tiny" height="142" version="1.2" width="212" xmlns="http://www.w3.org/2000/svg">
					<defs>
						<radialGradient cx="0.5" cy="0.5" gradientUnits="objectBoundingBox" id="gradient1" r="0.70711" sym:correctGamma="true" sym:fillType="RadialFill">
							<stop offset="0" stop-color="rgb(255,255,255)"></stop>
							<stop offset="1" stop-color="rgb(192,192,255)"></stop>
						</radialGradient>
					</defs>
					<rect fill="rgb(128,128,255)" height="120" rx="0" ry="0" stroke="rgb(128,128,255)" stroke-width="1" width="180" x="32" y="22">
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</rect>
					<rect fill="url(#gradient1)" height="120" rx="0" ry="0" stroke="rgb(0,0,0)" stroke-width="1" width="180" x="30" y="20">
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</rect>
					<textArea display-align="before" fill="rgb(0,0,0)" font-family="#sans serif" font-size="12" font-style="italic" font-weight="normal" height="120" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="end" width="180" x="30" y="20">
						Req
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
					<textArea display-align="before" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="120" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="start" width="180" x="30" y="20">
						ReportTextSource:newline newline newline
if :Description; then :Description; newline endif;

						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
					<textArea display-align="before" fill="rgb(0,0,0)" font-family="#sans serif" font-size="13" font-style="normal" font-weight="normal" height="120" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="false" text-anchor="start" width="180" x="30" y="20">
						ReportTextSource:newline newline newline
'¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯'
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
					<textArea display-align="before" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="bold" height="120" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="middle" width="180" x="30" y="20">
						ReportTextSource:newline
id
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
				</svg>
			</objectSymbol>
			<icon offset="110,70" xmlns="http://www.metacase.com/icon">
				<svg baseProfile="tiny" height="180" version="1.2" width="290" xmlns="http://www.w3.org/2000/svg">
					<defs>
						<radialGradient cx="0.5" cy="0.5" gradientUnits="objectBoundingBox" id="gradient1" r="0.70711" sym:correctGamma="true" sym:fillType="RadialFill">
							<stop offset="0" stop-color="rgb(255,255,255)"></stop>
							<stop offset="1" stop-color="rgb(192,192,255)"></stop>
						</radialGradient>
					</defs>
					<rect fill="url(#gradient1)" height="110" rx="0" ry="0" stroke="rgb(0,0,0)" stroke-width="1" width="180" x="110" y="70"></rect>
					<textArea display-align="center" fill="rgb(0,0,0)" font-family="#sans serif" font-size="96" font-style="normal" font-weight="bold" height="110" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="middle" width="180" x="110" y="70">R</textArea>
				</svg>
			</icon>
		</object>
		<object id="Object_QualityRequirement_user_3400822352" type="Object_QualityRequirement_user_3400822352" typeName="QualityRequirement">
			<description>QualityRequirement element represent a requirement which is non-functional. </description>
			<superType>
				<object href="#Object_ADLRequirement_user_3400763726"></object>
			</superType>
			<slot id="cgiuks" name="Kind" unique="false">
				<property type="Property_QualityRequirementKind_user_3400822210" typeName="QualityRequirementKind">
					<description>QualityRequirementKind represents the kind of QualityRequirement given by the definition of the respective Enumeration Literal.</description>
					<dataType>
						<simpleType>String</simpleType>
					</dataType>
					<defaultValue>
						<string>Other</string>
					</defaultValue>
					<widget>Fixed List</widget>
					<listValues>
						<string>Configurability</string>
						<string>Ergonomy</string>
						<string>HumanMachineInterface</string>
						<string>Safety</string>
						<string>Security</string>
						<string>Timing</string>
						<string>Other</string>
						<string>Availability</string>
						<string>Reliability</string>
						<string>Confidentiality  </string>
						<string>Integrity</string>
						<string>Maintainability</string>
						<string>Performance</string>
					</listValues>
				</property>
			</slot>
			<identReport>if :Name; then :Name; else :Short name; endif</identReport>
			<objectSymbol offset="30,20" scaleFilter="1,1" xmlns="http://www.metacase.com/symbol">
				<defaultConnectable isSticky="true" points="30,20 210,20 210,140 30,140 30,20" targetPointX="120" targetPointY="80" usesGrid="true"></defaultConnectable>
				<svg baseProfile="tiny" height="141" version="1.2" width="211" xmlns="http://www.w3.org/2000/svg">
					<defs>
						<radialGradient cx="0.5" cy="0.5" gradientUnits="objectBoundingBox" id="gradient1" r="0.70711" sym:correctGamma="true" sym:fillType="RadialFill">
							<stop offset="0" stop-color="rgb(255,255,255)"></stop>
							<stop offset="1" stop-color="rgb(255,224,192)"></stop>
						</radialGradient>
					</defs>
					<rect fill="rgb(255,128,128)" height="119" rx="0" ry="0" stroke="rgb(255,128,128)" stroke-width="1" width="180" x="31" y="22">
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</rect>
					<rect fill="url(#gradient1)" height="120" rx="0" ry="0" stroke="rgb(0,0,0)" stroke-width="1" width="180" x="30" y="20">
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</rect>
					<textArea display-align="before" fill="rgb(0,0,0)" font-family="#sans serif" font-size="12" font-style="italic" font-weight="normal" height="120" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="end" width="180" x="30" y="20">
						QReq
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
					<textArea display-align="before" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="120" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="start" width="180" x="30" y="20">
						ReportTextSource:if :Kind; then 'Kind: ' :Kind; endif
newline newline newline
if :Description; then :Description; newline endif;
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
					<textArea display-align="before" fill="rgb(0,0,0)" font-family="#sans serif" font-size="13" font-style="normal" font-weight="normal" height="120" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="false" text-anchor="start" width="180" x="30" y="20">
						ReportTextSource:newline newline newline
'¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯'
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
					<textArea display-align="before" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="bold" height="120" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="middle" width="180" x="30" y="20">
						ReportTextSource:newline
id
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
				</svg>
			</objectSymbol>
			<icon offset="70,30" xmlns="http://www.metacase.com/icon">
				<svg baseProfile="tiny" height="140" version="1.2" width="250" xmlns="http://www.w3.org/2000/svg">
					<defs>
						<radialGradient cx="0.5" cy="0.5" gradientUnits="objectBoundingBox" id="gradient1" r="0.70711" sym:correctGamma="true" sym:fillType="RadialFill">
							<stop offset="0" stop-color="rgb(255,255,255)"></stop>
							<stop offset="1" stop-color="rgb(255,224,192)"></stop>
						</radialGradient>
					</defs>
					<rect fill="url(#gradient1)" height="110" rx="0" ry="0" stroke="rgb(0,0,0)" stroke-width="1" width="180" x="70" y="30"></rect>
					<textArea display-align="center" fill="rgb(0,0,0)" font-family="#sans serif" font-size="96" font-style="normal" font-weight="bold" height="110" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="middle" width="180" x="70" y="30">QR</textArea>
				</svg>
			</icon>
		</object>
		<object id="Object_Joker_user_3399887441" type="Object_Joker_user_3399887441" typeName="Comment">
			<description>Commenting the metamodel or model, can be connected to all objects.</description>
			<slot id="a2y9ru" name="Comment" unique="false">
				<property type="Property_Comment_ID_user_3460808445" typeName="Comment ID">
					<description></description>
					<dataType>
						<simpleType>String</simpleType>
					</dataType>
					<defaultValue>
						<string></string>
					</defaultValue>
					<widget>Input Field</widget>
				</property>
			</slot>
			<slot id="a1xmpf" name="Description" unique="false">
				<property href="#Property_2Description_user_3310902697"></property>
			</slot>
			<identProp slotID="a2y9ru"></identProp>
			<objectSymbol offset="70,50" scaleFilter="1,1" xmlns="http://www.metacase.com/symbol">
				<defaultConnectable isSticky="true" points="290,185 289.543,186.913 288.243,188.536 286.296,189.619 284,190 76,190 73.7039,189.619 71.7574,188.536 70.4567,186.913 70,185 70,55 70.4567,53.0866 71.7574,51.4645 73.7039,50.3806 76,50 284,50 286.296,50.3806 288.243,51.4645 289.543,53.0866 290,55 290,185" targetPointX="180" targetPointY="120" usesGrid="true"></defaultConnectable>
				<svg baseProfile="tiny" height="190" version="1.2" width="290" xmlns="http://www.w3.org/2000/svg">
					<rect fill="rgb(255,255,224)" height="140" rx="6" ry="5" stroke="rgb(128,64,64)" stroke-width="0" width="220" x="70" y="50">
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</rect>
					<textArea display-align="before" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="140" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="start" width="220" x="70" y="50">
						ReportTextSource::Comment; newline
:Description;
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
				</svg>
			</objectSymbol>
		</object>
		<relationship id="Relationship_reference_sysadmin_3524947284" type="Relationship_reference_sysadmin_3524947284" typeName="Reference">
			<description>Reference denotes a reference link between two model elements.</description>
			<icon offset="67,44" xmlns="http://www.metacase.com/icon">
				<svg baseProfile="tiny" height="70" version="1.2" width="93" xmlns="http://www.w3.org/2000/svg">
					<polyline fill="none" points="82,49.5263 93,44 88.4167,55" stroke="rgb(0,0,0)" stroke-width="2"></polyline>
					<line stroke="rgb(0,0,0)" stroke-width="2" x1="93" x2="67" y1="44" y2="70"></line>
				</svg>
			</icon>
		</relationship>
		<relationship id="Relationship_Comment_user_3460793460" type="Relationship_Comment_user_3460793460" typeName="Comment">
			<description>Comment creates a link between comment or constraint and other design element.</description>
			<icon offset="104,34" xmlns="http://www.metacase.com/icon">
				<svg baseProfile="tiny" height="60" version="1.2" width="130" xmlns="http://www.w3.org/2000/svg">
					<line stroke="rgb(0,0,0)" stroke-width="1" x1="130" x2="104" y1="34" y2="60"></line>
				</svg>
			</icon>
		</relationship>
		<relationship id="Relationship_SubAttackGroup_sysadmin_3758910458" type="Relationship_SubAttackGroup_sysadmin_3758910458" typeName="SubAttackGroup">
			<description>SubAttackGroup is used to create compositions of attacks in form of an attack tree. Attacks can have multiple subattacks. These subattacks can be linked either with an AND, OR or CUSTOM connector.</description>
			<slot id="b3wzq8" name="Kind" unique="false">
				<property type="Property_SubAttackGroupKind_sysadmin_3758910448" typeName="SubAttackGroupKind">
					<description></description>
					<dataType>
						<simpleType>String</simpleType>
					</dataType>
					<defaultValue>
						<string>none</string>
					</defaultValue>
					<widget>Radio Button Set</widget>
					<listValues>
						<string>OR</string>
						<string>AND</string>
						<string>custom</string>
						<string>none</string>
					</listValues>
				</property>
			</slot>
			<identProp slotID="b3wzq8"></identProp>
			<relationshipSymbol offset="60,20" scaleFilter="1,1" xmlns="http://www.metacase.com/symbol">
				<defaultConnectable isSticky="true" targetPointX="90" targetPointY="40" usesGrid="false"></defaultConnectable>
				<svg baseProfile="tiny" height="40" version="1.2" width="100" xmlns="http://www.w3.org/2000/svg">
					<textArea display-align="center" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="bold" height="20" sym:characterBackgroundFill="rgb(255,255,255)" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="middle" width="40" x="60" y="20">
						ReportTextSource:if not :Kind = 'none' then :Kind; endif
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
				</svg>
			</relationshipSymbol>
			<icon offset="65,25" xmlns="http://www.metacase.com/icon">
				<svg baseProfile="tiny" height="55" version="1.2" width="95" xmlns="http://www.w3.org/2000/svg">
					<polyline fill="none" points="65,55 65,40 95,40 95,55 95,55" stroke="rgb(0,0,0)" stroke-width="1"></polyline>
					<line stroke="rgb(0,0,0)" stroke-width="1" x1="80" x2="80" y1="55" y2="25"></line>
				</svg>
			</icon>
		</relationship>
		<role id="Role_referred_from_sysadmin_3524947545" type="Role_referred_from_sysadmin_3524947545" typeName="referred_from">
			<description></description>
			<roleSymbol xmlns="http://www.metacase.com/symbol">
				<rolelineGOs stroke="rgb(128,128,128)" stroke-dasharray="8,2" stroke-width="0">
					<metaInfo shouldRotate="false"></metaInfo>
				</rolelineGOs>
				<svg baseProfile="tiny" height="0" version="1.2" width="0" xmlns="http://www.w3.org/2000/svg"></svg>
			</roleSymbol>
		</role>
		<role id="Role_refer_to_sysadmin_3524947529" type="Role_refer_to_sysadmin_3524947529" typeName="refer_to">
			<description></description>
			<roleSymbol xmlns="http://www.metacase.com/symbol">
				<rolelineGOs stroke="rgb(128,128,128)" stroke-dasharray="8,2" stroke-width="0">
					<metaInfo shouldRotate="false"></metaInfo>
				</rolelineGOs>
				<svg baseProfile="tiny" height="84" version="1.2" width="150" xmlns="http://www.w3.org/2000/svg">
					<polyline fill="none" points="140,76 150,80 140,84" stroke="rgb(128,128,128)" stroke-width="1">
						<metaInfo shouldRotate="true" xmlns="http://www.metacase.com/symbol"></metaInfo>
					</polyline>
				</svg>
			</roleSymbol>
		</role>
		<role id="Role_AttackSituation_sysadmin_3758638433" type="Role_AttackSituation_sysadmin_3758638433" typeName="AttackSituation">
			<description></description>
			<slot id="a5lby7" name="Kind" unique="false">
				<property type="Property_Kind_sysadmin_3758638431" typeName="Kind">
					<description></description>
					<dataType>
						<simpleType>String</simpleType>
					</dataType>
					<defaultValue>
						<string>traffic</string>
					</defaultValue>
					<widget>Radio Button Set</widget>
					<listValues>
						<string>traffic</string>
						<string>environment</string>
					</listValues>
				</property>
			</slot>
			<identProp slotID="a5lby7"></identProp>
			<roleSymbol xmlns="http://www.metacase.com/symbol">
				<rolelineGOs stroke="rgb(128,128,128)" stroke-dasharray="8,2" stroke-width="0">
					<metaInfo shouldRotate="false"></metaInfo>
				</rolelineGOs>
				<svg baseProfile="tiny" height="110" version="1.2" width="150" xmlns="http://www.w3.org/2000/svg">
					<polyline fill="none" points="140,76 150,80 140,84" stroke="rgb(128,128,128)" stroke-dasharray="8,2" stroke-width="0">
						<metaInfo shouldRotate="true" xmlns="http://www.metacase.com/symbol"></metaInfo>
					</polyline>
					<textArea display-align="center" fill="rgb(0,0,0)" font-family="#sans serif" font-size="12" font-style="normal" font-weight="normal" height="60" sym:characterBackgroundFill="rgb(255,255,255)" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="middle" width="60" x="80" y="50">
						PropertyTextSource:a5lby7
						<metaInfo shouldRotate="false" xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
				</svg>
			</roleSymbol>
		</role>
		<role id="Role_Comment_user_3460793566" type="Role_Comment_user_3460793566" typeName="Comment">
			<description></description>
			<roleSymbol xmlns="http://www.metacase.com/symbol">
				<rolelineGOs stroke="rgb(128,64,64)" stroke-dasharray="1,1" stroke-width="2">
					<metaInfo shouldRotate="false"></metaInfo>
				</rolelineGOs>
				<svg baseProfile="tiny" height="0" version="1.2" width="0" xmlns="http://www.w3.org/2000/svg"></svg>
			</roleSymbol>
		</role>
		<role id="Role_SubAttackGroup_sysadmin_3758910614" type="Role_SubAttackGroup_sysadmin_3758910614" typeName="SubAttackGroup">
			<description></description>
			<roleSymbol xmlns="http://www.metacase.com/symbol">
				<rolelineGOs stroke="rgb(0,0,0)" stroke-width="1">
					<metaInfo shouldRotate="false"></metaInfo>
				</rolelineGOs>
				<svg baseProfile="tiny" height="85" version="1.2" width="150" xmlns="http://www.w3.org/2000/svg">
					<polygon fill="rgb(0,0,0)" points="150,80 142.5,75 135,80 142.5,85" stroke="rgb(0,0,0)" stroke-width="1">
						<metaInfo shouldRotate="true" xmlns="http://www.metacase.com/symbol"></metaInfo>
					</polygon>
				</svg>
			</roleSymbol>
		</role>
		<role id="Role_SubAttack_sysadmin_3758910628" type="Role_SubAttack_sysadmin_3758910628" typeName="SubAttack">
			<description></description>
		</role>
		<binding>
			<relationship href="#Relationship_Comment_user_3460793460"></relationship>
			<connection>
				<cardinality start="1" stop="1"></cardinality>
				<role href="#Role_Comment_user_3460793566"></role>
				<object href="#Object_Actor_user_3610197079"></object>
				<object href="#Object_Attack_sysadmin_3758638313"></object>
				<object href="#Object___AttackMotivation_sysadmin_3758564669"></object>
				<object href="#Object_Feature_user_3399887361"></object>
				<object href="#Object_Hazard_sysadmin_3509606795"></object>
				<object href="#Object_Item_sysadmin_3509259179"></object>
				<object href="#Object_OperationalSituation_sysadmin_3509602770"></object>
				<object href="#Object_QualityRequirement_user_3400822352"></object>
				<object href="#Object_ADLRequirement_user_3400763726"></object>
				<object href="#Object_Score_sysadmin_3758566237"></object>
				<object href="#Object_SecurityConcept_sysadmin_3758566484"></object>
				<object href="#Object_VehicleFeature_user_3400133821"></object>
				<object href="#Object_Vulnerability_sysadmin_3758567422"></object>
			</connection>
			<connection>
				<cardinality start="1" stop="1"></cardinality>
				<role href="#Role_Comment_user_3460793566"></role>
				<object href="#Object_Joker_user_3399887441"></object>
			</connection>
		</binding>
		<binding>
			<relationship href="#Relationship_Comment_user_3460793460"></relationship>
			<connection>
				<cardinality start="1" stop="1"></cardinality>
				<role href="#Role_Comment_user_3460793566"></role>
				<object href="#Object_Joker_user_3399887441"></object>
			</connection>
			<connection>
				<cardinality start="1" stop="1"></cardinality>
				<role href="#Role_Comment_user_3460793566"></role>
				<object href="#Object_Actor_user_3610197079"></object>
				<object href="#Object_Attack_sysadmin_3758638313"></object>
				<object href="#Object___AttackMotivation_sysadmin_3758564669"></object>
				<object href="#Object_Feature_user_3399887361"></object>
				<object href="#Object_Hazard_sysadmin_3509606795"></object>
				<object href="#Object_Item_sysadmin_3509259179"></object>
				<object href="#Object_OperationalSituation_sysadmin_3509602770"></object>
				<object href="#Object_QualityRequirement_user_3400822352"></object>
				<object href="#Object_ADLRequirement_user_3400763726"></object>
				<object href="#Object_Score_sysadmin_3758566237"></object>
				<object href="#Object_SecurityConcept_sysadmin_3758566484"></object>
				<object href="#Object_VehicleFeature_user_3400133821"></object>
				<object href="#Object_Vulnerability_sysadmin_3758567422"></object>
			</connection>
		</binding>
		<binding>
			<relationship href="#Relationship_reference_sysadmin_3524947284"></relationship>
			<connection>
				<cardinality start="1" stop="1"></cardinality>
				<role href="#Role_referred_from_sysadmin_3524947545"></role>
				<object href="#Object_Attack_sysadmin_3758638313"></object>
			</connection>
			<connection>
				<cardinality start="1" stop="1"></cardinality>
				<role href="#Role_AttackSituation_sysadmin_3758638433"></role>
				<object href="#Object_OperationalSituation_sysadmin_3509602770"></object>
			</connection>
		</binding>
		<binding>
			<relationship href="#Relationship_reference_sysadmin_3524947284"></relationship>
			<connection>
				<cardinality start="1" stop="1"></cardinality>
				<role href="#Role_referred_from_sysadmin_3524947545"></role>
				<object href="#Object_Attack_sysadmin_3758638313"></object>
			</connection>
			<connection>
				<cardinality start="1" stop="1"></cardinality>
				<role href="#Role_refer_to_sysadmin_3524947529"></role>
				<object href="#Object_Actor_user_3610197079"></object>
				<object href="#Object_Hazard_sysadmin_3509606795"></object>
				<object href="#Object_Item_sysadmin_3509259179"></object>
				<object href="#Object_Vulnerability_sysadmin_3758567422"></object>
			</connection>
		</binding>
		<binding>
			<relationship href="#Relationship_reference_sysadmin_3524947284"></relationship>
			<connection>
				<cardinality start="1" stop="1"></cardinality>
				<role href="#Role_referred_from_sysadmin_3524947545"></role>
				<object href="#Object___AttackMotivation_sysadmin_3758564669"></object>
			</connection>
			<connection>
				<cardinality start="1" stop="1"></cardinality>
				<role href="#Role_refer_to_sysadmin_3524947529"></role>
				<object href="#Object_Attack_sysadmin_3758638313"></object>
				<object href="#Object___AttackMotivation_sysadmin_3758564669"></object>
				<object href="#Object_Item_sysadmin_3509259179"></object>
			</connection>
		</binding>
		<binding>
			<relationship href="#Relationship_reference_sysadmin_3524947284"></relationship>
			<connection>
				<cardinality start="1" stop="1"></cardinality>
				<role href="#Role_referred_from_sysadmin_3524947545"></role>
				<object href="#Object_Hazard_sysadmin_3509606795"></object>
			</connection>
			<connection>
				<cardinality start="1" stop="1"></cardinality>
				<role href="#Role_refer_to_sysadmin_3524947529"></role>
				<object href="#Object_Item_sysadmin_3509259179"></object>
			</connection>
		</binding>
		<binding>
			<relationship href="#Relationship_reference_sysadmin_3524947284"></relationship>
			<connection>
				<cardinality start="1" stop="1"></cardinality>
				<role href="#Role_referred_from_sysadmin_3524947545"></role>
				<object href="#Object_Item_sysadmin_3509259179"></object>
			</connection>
			<connection>
				<cardinality start="1" stop="1"></cardinality>
				<role href="#Role_refer_to_sysadmin_3524947529"></role>
				<object href="#Object_VehicleFeature_user_3400133821"></object>
			</connection>
		</binding>
		<binding>
			<relationship href="#Relationship_reference_sysadmin_3524947284"></relationship>
			<connection>
				<cardinality start="1" stop="1"></cardinality>
				<role href="#Role_referred_from_sysadmin_3524947545"></role>
				<object href="#Object_SecurityConcept_sysadmin_3758566484"></object>
			</connection>
			<connection>
				<cardinality start="1" stop="1"></cardinality>
				<role href="#Role_refer_to_sysadmin_3524947529"></role>
				<object href="#Object_Attack_sysadmin_3758638313"></object>
				<object href="#Object_ADLRequirement_user_3400763726"></object>
			</connection>
		</binding>
		<binding>
			<relationship href="#Relationship_reference_sysadmin_3524947284"></relationship>
			<connection>
				<cardinality start="1" stop="1"></cardinality>
				<role href="#Role_referred_from_sysadmin_3524947545"></role>
				<object href="#Object_Vulnerability_sysadmin_3758567422"></object>
			</connection>
			<connection>
				<cardinality start="1" stop="1"></cardinality>
				<role href="#Role_refer_to_sysadmin_3524947529"></role>
				<object href="#Object_Item_sysadmin_3509259179"></object>
				<object href="#Object_ADLRequirement_user_3400763726"></object>
				<object href="#Object_Score_sysadmin_3758566237"></object>
			</connection>
		</binding>
		<binding>
			<relationship href="#Relationship_SubAttackGroup_sysadmin_3758910458"></relationship>
			<connection>
				<cardinality start="1" stop="1"></cardinality>
				<role href="#Role_SubAttackGroup_sysadmin_3758910614"></role>
				<object href="#Object_Attack_sysadmin_3758638313"></object>
			</connection>
			<connection>
				<cardinality start="1" stop="N"></cardinality>
				<role href="#Role_SubAttack_sysadmin_3758910628"></role>
				<object href="#Object_Attack_sysadmin_3758638313"></object>
			</connection>
		</binding>
		<report>
			!Check()
Check()
			<icon offset="80,87" xmlns="http://www.metacase.com/icon">
				<svg baseProfile="tiny" height="135" version="1.2" width="128" xmlns="http://www.w3.org/2000/svg">
					<defs>
						<radialGradient cx="0.37" cy="0.642857" gradientUnits="objectBoundingBox" id="gradient1" r="0.71551" sym:correctGamma="true" sym:fillType="PathFill">
							<stop offset="0" stop-color="rgb(255,255,255)"></stop>
							<stop offset="0.649419" stop-color="rgb(0,192,0)"></stop>
							<stop offset="1" stop-color="rgb(0,192,0)"></stop>
						</radialGradient>
					</defs>
					<rect fill="rgb(255,255,255)" height="40" rx="5" ry="7" stroke="rgb(0,128,0)" stroke-width="1" width="40" x="80" y="95"></rect>
					<polygon fill="url(#gradient1)" points="89.3,99.5714 85,105.857 85,112.143 97.9,131 102.2,131 128,99.5714 128,93.2857 123.7,87 119.4,87 101.34,115.914 93.6,99.5714" stroke="rgb(0,0,0)" stroke-width="1"></polygon>
				</svg>
			</icon>
		</report>
		<report>Report '!CVSSBase'
CVSS-SIG\ Base()
endreport</report>
		<report>Report '!CVSSTemp'
CVSS-SIG\ Temp()
endreport</report>
		<report>Check()
subreport '_translators' run
$LiveCheck = 'F' /* Check report run from toolbar/menu, not to run via liveCheck pane */
$warnings = '0'
'Warnings:' newline

_checking()

if $warnings &lt;&gt; '0' then
	'Total number of warnings: ' $warnings newline
else
	'No warnings found!' newline
endif

</report>
		<report>CVSS-SIG\ Base()
/* produces base vector from SAM to CVSS */

_translators()
_CVSStranslators()

foreach .Vulnerability {
	local 'params' write
		_getCVSSBase()
	close
	external 'https://www.first.org/cvss/calculator/3.1#CVSS:3.1' @params execute 
}</report>
		<report>CVSS-SIG\ Temp()
/* produces temporal score vector from SAM to CVSS */

_translators()
_CVSStranslators()

foreach .Vulnerability {
	local 'params' write
		_getCVSSBase()
		'/E:' :ExploitCodeMaturity%letter
		'/RL:' :RemediationLevel%letter
		'/RC:' :ReportConfidence%letter
	close
	external 'https://www.first.org/cvss/calculator/3.1#CVSS:3.1' @params execute 
}</report>
		<report>_AttackAndAttackMotivationIsTree()

$inAttackCycles = ''

foreach .(Attack | AttackMotivation) where ~referred_from~refer_to.(Attack | AttackMotivation) {
	$CycleStart = oid
	_nextInAttackTree()
}

if $inAttackCycles then
	_reportWarnings()
	'Warning: Attacks and AttackMotivations (' dowhile $inAttackCycles where id unique id { do contents {id } ', ' } ') form a cyclic structure' newline
endif</report>
		<report>_AttackMotivationHasOneKind()
/* each attack motivation may contain one kind of motivation (aka one harm, one gain etc.) */

foreach .AttackMotivation {
	@kinds = ''
	do ~refer_to~referred_from.AttackMotivation {
		if @kinds =~ :Motivation; then
			_reportWarnings()
			'Warning: ' type;1 ' ' id;1 ' has already ' :Motivation ' motivation' newline
		endif	
		local 'kinds' append :Motivation; close
	}
}
</report>
		<report>_AttackMustReferToVulnerability()

foreach .Attack {
	if not &gt;().Vulnerability; then
		_reportWarnings()
		'Warning: ' type ' ' id ' is not connected to any Vulnerability' newline
	endif	
}

</report>
		<report>_calcCVSSvars()

/* Attack Vector (AV) */
$AccessRequiredN= '0.85' 
$AccessRequiredA= '0.62' 
$AccessRequiredL = '0.55' 
$AccessRequiredP = '0.2'

/* Attack Complexity (AC)
Attack Complexity - Modified Attack Complexity */
$ConditionPrerequisiteComplexityL = '0.77'
$ConditionPrerequisiteComplexityH = '0.44'

/* Privileges Required (PR) */
$PrivilegesRequiredN = '0.85'
$PrivilegesRequiredL = '0.62'
$PrivilegesRequiredH = '0.27'
$PrivilegesRequiredN_ScopeChanged = '0.85'
$PrivilegesRequiredL_ScopeChanged = '0.68'
$PrivilegesRequiredH_ScopeChanged = '0.50'

/* User Interaction (UI) */
$UserInteractionN = '0.85'
$UserInteractionR = '0.62'

/* ConfidentialityImpact (C) */
$ConfidentialityImpactH = '0.56' 
$ConfidentialityImpactL = '0.22' 
$ConfidentialityImpactN = '0'

/* IntegrityImpact ()) */
$IntegrityImpactH = '0.56' 
$IntegrityImpactL = '0.22' 
$IntegrityImpactN = '0'

/* AvailabilityImpact (C) */
$AvailabilityImpactH = '0.56' 
$AvailabilityImpactL = '0.22' 
$AvailabilityImpactN = '0'

/* ExploitCodeMaturity (E) */
$ExploitCodeMaturityX = '1' 
$ExploitCodeMaturityH = '1' 
$ExploitCodeMaturityF = '0.97' 
$ExploitCodeMaturityP = '0.94'
$ExploitCodeMaturityU = '0.91'

/* Remediation Level (RL) */
$RemediationLevelX = '1'
$RemediationLevelU = '1'
$RemediationLevelW = '0.97'
$RemediationLevelT = '0.96'
$RemediationLevelO = '0.95'

/* Report Confidence (RC) */
$ReportConfidenceX = '1'
$ReportConfidenceC = '1'
$ReportConfidenceR = '0.96'
$ReportConfidenceU = '0.92'

/* Security Requirements – C,I,A Requirements    --- not used
Not Defined 
High 
Medium 
Low
1 
1.5 
1 
0.5 */</report>
		<report>_checking()
/* constraint checks for SAM models: applied also at live check pane */
_AttackAndAttackMotivationIsTree()
_AttackMotivationHasOneKind()
_AttackMustReferToVulnerability()
_VulnerabilityToAttack()
_ItemMustReferToVehicleFeatureAndVulnerabilityAndAttackMotivation()
_HazardMustReferToItem()
_SafetyConceptMustReferToARequirement()
_SecurityConceptWithMotivationOnDocumentedAttacksRefersToAttack()
_RequirementMustLinkToSecurityConcept()
_ScoreToVulnerability()
</report>
		<report>_CVSStranslators()

to '%letter
/^(\()(.)(.*)$/ $$2'
endto

to '%first
/^(.)(.*)$/ $$1'
endto</report>
		<report>_CVSS_ISSBase()

math 
	'1-(' 
	'(1-' variable 'ConfidentialityImpact' :ConfidentialityImpact%letter read ')'
	'*(1-' variable 'IntegrityImpact' :IntegrityImpact%letter read ')'
	'*(1-' variable 'AvailabilityImpact' :AvailabilityImpact%letter read ')'
	')'
evaluate</report>
		<report>_getAttack4CVSS()
/* highest scale per Attack */
_calcCVSSvars()

do &gt;().Attack {
	local 'attacks' append oid newline close /* all attacks for vulnerability */
	@iss = _CVSS_ISSBase()
	@exploitability = __(math 
			variable 'AccessRequired' :AccessRequired%first read
			'*' variable 'PrivilegesRequired' :PrivilegesRequired%letter read
			'*' variable 'UserInteraction' :UserInteraction%letter read
	evaluate)
	local oid write math @iss '+' @exploitability evaluate close
}

do @attacks where id {
	@this = __(local id read)
	if @maxVal &lt; @this num then
		@maxVal = @this
		@max = id
	endif
}

@max /* highest attack */</report>
		<report>_getCVSSBase()

/* get "max" attack as vulnerability could have many */
@oid = _getAttack4CVSS()

do &gt;().Attack; where oid = @oid { 
	'/AV:' :AccessRequired%first
	'/AC:' :ConditionPrerequisiteComplexity;1%letter
	'/PR:' :PrivilegesRequired%letter
	'/UI:' :UserInteraction%letter
	'/S:' _subScope() 
	'/C:' :ConfidentialityImpact%letter
	'/I:' :IntegrityImpact%letter
	'/A:' :AvailabilityImpact%letter
}</report>
		<report>_HazardMustReferToItem()

foreach .Hazard {
	if not &gt;().Item; then
		_reportWarnings()
		'Warning: ' type ' ' id ' is not connected to any Item' newline
	endif
}
</report>
		<report>_ItemMustReferToVehicleFeatureAndVulnerabilityAndAttackMotivation()

foreach .Item {
	if not &gt;().VehicleFeature; then
		_reportWarnings()
		'Warning: ' type ' ' id ' is not connected to any VehicleFeature' newline
	endif

	if not &gt;().Vulnerability; then
		_reportWarnings()
		'Warning: ' type ' ' id ' is not connected to any Vulnerability' newline
	endif

	if not &gt;().(AttackMotivation | Attack); then
		_reportWarnings()
		'Warning: ' type ' ' id ' is not connected to any Attack or AttackMotivation' newline
	endif	
	
}</report>
		<report>_levelColorForUserInteraction()
/* color codes for symbols */

if id = '(R)equired' then
	id
else
	'No'
endif
</report>
		<report>_levelColoring()
/* color codes for symbols */
if id =~ '(L)ow*' then 
	id
else
	if id =~ '(H)igh*' then
		id
	else
		if id = '(N)one' then
			'No'
		else
			id
		endif
	endif
endif
</report>
		<report>_nextInAttackTree()

do ~referred_from~refer_to.(Attack | AttackMotivation) {
	if not $CycleStart = oid then
		_nextInAttackTree()
	else
		variable 'inAttackCycles' append oid newline close
	endif
}</report>
		<report>_recommendations()

foreach .Attack; where not &gt;().Actor {
'It is recommended to associate each attack to an external or internal actors' newline
}</report>
		<report>_RequirementMustLinkToSecurityConcept()

foreach .(*Requirement) {
	if not &gt;().SecurityConcept; then
		_reportWarnings()
		'Warning: ' type ' ' id ' is not connected to any SecurityConcept' newline
	endif
}</report>
		<report>_SafetyConceptMustReferToARequirement()

foreach .SecurityConcept {
	if not ~()~().(*Requirement); then
		_reportWarnings()
		'Warning: SafetyConcept ' id ' is not connected to any Requirement' newline
	endif
}</report>
		<report>_ScoreToVulnerability()

foreach .Score {
	if not &gt;().Vulnerability; then
		_reportWarnings()
		'Warning: ' type ' ' id ' is not connected to any Vulnerability' newline
	endif
}</report>
		<report>_SecurityConceptWithMotivationOnDocumentedAttacksRefersToAttack()

foreach .SecurityConcept; where :Motivated by documented attacks; {
	if not &gt;().Attack; then
		_reportWarnings()
		'Warning: ' type ' ' id ' that is motivated by documentAttack is not connected to any Attack' newline
	endif	
}</report>
		<report>_subScope()

do &gt;().Vulnerability; where oid = oid;2 {
	@result = _symGetScope()
	if @result =~ '(C*' then
		'C'
	else
		'U'
	endif
}</report>
		<report>_symGetScope()

if :Scope =~ '(U)*' then

to '%wildsp
/^(.*)$/ $\*\ $1\ \*'
endto

	local 'myItems' write 
		' ' 
		do &gt;().Attack {
			do &gt;().Item {oid ' ' }
		}
	close
	
	$visited = ' '
	local 'otherItems' write
		do &gt;().Attack {  /* todo: if different attacks */
			_symOtherItems()
		}
	close
	
	do @otherItems where id unique id {
		if not @myItems =~ id%wildsp then
			@result = '(C)hanged'
		endif
	}
	
	if @result then
		@result ' scope (other sub-items)'
	else
		:Scope ' scope' 
	endif
else
	:Scope ' scope' 
endif
newline</report>
		<report>_symOtherItems()

do ~SubAttackGroup~SubAttack.Attack {
	do &gt;().Item {oid newline}
	if not $visited =~ oid%wildsp then
		variable 'visited' append oid ' ' close
		_symOtherItems()
	endif
}</report>
		<report>_VulnerabilityToAttack()

foreach .Vulnerability {
	if not &gt;().Attack; then
		_reportWarnings()
		'Warning: ' type ' ' id ' is not connected to any Attack' newline
	endif	
}</report>
		<report>__LiveCheck()
subreport '_translators' run
$warnings = '0'
$LiveCheck = 'T'

_recommendations()
_checking()

if $warnings = '0' then
	'No warnings' newline
endif</report>
		<constraints>
			<connectivity>
				<object href="#Object_OperationalSituation_sysadmin_3509602770"></object>
				<relationship href="#Relationship_reference_sysadmin_3524947284"></relationship>
				<max>1</max>
			</connectivity>
			<connectivity>
				<object href="#Object_Score_sysadmin_3758566237"></object>
				<relationship href="#Relationship_reference_sysadmin_3524947284"></relationship>
				<max>1</max>
			</connectivity>
			<uniqueness>
				<object href="#Object_Actor_user_3610197079"></object>
				<propertyName>Short name</propertyName>
			</uniqueness>
			<uniqueness>
				<object href="#Object_Attack_sysadmin_3758638313"></object>
				<propertyName>Short name</propertyName>
			</uniqueness>
			<uniqueness>
				<object href="#Object___AttackMotivation_sysadmin_3758564669"></object>
				<propertyName>Short name</propertyName>
			</uniqueness>
			<uniqueness>
				<object href="#Object_Hazard_sysadmin_3509606795"></object>
				<propertyName>Short name</propertyName>
			</uniqueness>
			<uniqueness>
				<object href="#Object_Item_sysadmin_3509259179"></object>
				<propertyName>Short name</propertyName>
			</uniqueness>
			<uniqueness>
				<object href="#Object_OperationalSituation_sysadmin_3509602770"></object>
				<propertyName>Short name</propertyName>
			</uniqueness>
			<uniqueness>
				<object href="#Object_QualityRequirement_user_3400822352"></object>
				<propertyName>Short name</propertyName>
			</uniqueness>
			<uniqueness>
				<object href="#Object_ADLRequirement_user_3400763726"></object>
				<propertyName>Short name</propertyName>
			</uniqueness>
			<uniqueness>
				<object href="#Object_SecurityConcept_sysadmin_3758566484"></object>
				<propertyName>Short name</propertyName>
			</uniqueness>
			<uniqueness>
				<object href="#Object_VehicleFeature_user_3400133821"></object>
				<propertyName>Short name</propertyName>
			</uniqueness>
			<uniqueness>
				<object href="#Object_Vulnerability_sysadmin_3758567422"></object>
				<propertyName>Short name</propertyName>
			</uniqueness>
		</constraints>
		<icon offset="40,30" xmlns="http://www.metacase.com/icon">
			<svg baseProfile="tiny" height="80" version="1.2" width="80" xmlns="http://www.w3.org/2000/svg">
				<polygon fill="rgb(0,0,0)" points="40,40 45,62.2222 50,71.1111 60,80 70,71.1111 75,62.2222 80,40" stroke="rgb(0,0,0)" stroke-width="0"></polygon>
				<polygon fill="rgb(0,0,0)" points="40,40 60,30 80,40 60,60" stroke="rgb(0,0,0)" stroke-width="0"></polygon>
				<polyline fill="none" points="50,52 60,62 70,42" stroke="rgb(255,255,255)" stroke-width="5"></polyline>
			</svg>
		</icon>
	</graph>
</gxl>