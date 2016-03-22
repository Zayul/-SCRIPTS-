param ( [string]$MODE = "", [string]$global:file = "", [string]$global:fileName = "", [string]$global:fileBase = "", [string]$global:filePath = "", [string]$global:projectName = "" )

#▐▌▒▓▒▐▌═════════════════════════════▐▌▒▓▒▐▌▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄¦⌠#
#▐▌▓▒▓▐▌                             ▐▌▓▒▓▐▌▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓‡#
#▐▌▒▓▒▐▌      { USER SETTINGS }      ▐▌▒▓▒▐▌██████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████c3#
#▐▌▓▒▓▐▌                             ▐▌▓▒▓▐▌▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓‡#
#▐▌▒▓▒▐▌═════════════════════════════▐▌▒▓▒▐▌▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀¦⌡#

	#▄▄▄▄▄─────────────────────────────▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄¦•⌠#
	#░░░░░      •   { Variables }      ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░s2#
	#▀▀▀▀▀─────────────────────────────▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀¦•⌡#

#  powerShell_Enabled, sublimeBuild_Enabled, topHeader_Enabled, & bottomHeader_Enabled
#  are set globally, and can also be overridden within individual build statements in the next section.

$global:powerShell_Enabled   = $TRUE # $TRUE | $FALSE
$global:sublimeBuild_Enabled = $TRUE # $TRUE | $FALSE

#  Header Styles can be altered at the HEADER_CHARACTERS section.
$global:headerText           = $fileName # $file | $fileName | $fileBase | $filePath
$global:projectName_Enabled  = $TRUE     # $TRUE | $FALSE
$global:topHeader_Enabled    = $TRUE     # $TRUE | $FALSE
$global:bottomHeader_Enabled = $TRUE     # $TRUE | $FALSE

$global:header_NewLine_Count   = 3 # number of blank lines between headers & code output
$global:buildEnd_NewLine_Count = 2 # number of blank lines after code output

	#▐▌»»▒▐▌───────────────────────────────▐▌▒««▐▌_____________________________________________________________________________________________________________________________________________________¦•⌠#
	#▐▌»»▒▐▌    •   { Build Setings }      ▐▌▒««▐▌░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬m2#
	#▐▌»»▒▐▌───────────────────────────────▐▌▒««▐▌‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾¦•⌡#

function set_BuildMode ( $file, $fileName, $fileBase, $filePath, $filePathSlash, $projectName, `
$POWER_SHELL, $SUBLIME_BUILD, $powerShell_Enabled, $sublimeBuild_Enabled, `
$powerShell_Commands, $sublimeBuild_Commands, $pQuote, $sQuote )
	{
		If ( $MODE -eq "" ) { Exit }




		#  powerShell_Commands & sublimeBuild_Commands are arrays which contain commands to be executed by PowerShell.

		#  These file variables are available for use in commands:
		#    file, fileName, fileBase, filePath, filePathSlash, projectName

		#  When you need quotes in your commands, use these predefined quote variables:
		#    pQuote @ powerShell_Commands
		#    sQuote @ sublimeBuild_Commands
		#  If neither of those work for some reason, try constructing your own sequence of escaped quotes.

		#  If you are not getting a parallel build, try changing the build order.
		#  This is useful for quick debugging if your input build fails.
		#    use:  firstBuild = $POWER_SHELL   OR   firstBuild = $SUBLIME_BUILD

		#  backticks  `  are used to escape lines & characters.




		#/////  PYTHON  //////////////////////////////////
		ElseIf ( $MODE -ieq "Python_Input" )
			{
				$firstBuild = $POWER_SHELL
				$powerShell_Commands   += "python -u " + $pQuote + $file + $pQuote
				$sublimeBuild_Commands += "python -u " + $sQuote + $file + $sQuote
			}
		ElseIf ( $MODE -ieq "Python_NoInput" )
			{
				$firstBuild = $SUBLIME_BUILD
				$sublimeBuild_Commands += "python -u " + $sQuote + $file + $sQuote
				$powerShell_Enabled   = $FALSE
				$bottomHeader_Enabled = $FALSE
			}



		#/////  JAVA  ////////////////////////////////////
		ElseIf ( $MODE -ieq "Java_Input" )
			{
				$firstBuild = $SUBLIME_BUILD
				$sublimeBuild_Commands += `
					"If ( Test-Path " + $sQuote + $filePathSlash + $fileBase + ".class" + $sQuote + " )" + `
					"{ Remove-Item "  + $sQuote + $filePathSlash + $fileBase + ".class" + $sQuote + " }"
				$sublimeBuild_Commands += "cd " + $sQuote + $filePath + $sQuote
				$sublimeBuild_Commands += "javac -encoding UTF-8 " + $sQuote + $fileName + $sQuote
				$powerShell_Commands += "cd " + $pQuote + $filePath + $pQuote
				$powerShell_Commands += "java " + $fileBase
			}
		ElseIf ( $MODE -ieq "Java_NoInput" )
			{
				$firstBuild = $SUBLIME_BUILD
				$sublimeBuild_Commands += `
					"If ( Test-Path " + $sQuote + $filePathSlash + $fileBase + ".class" + $sQuote + " )" + `
					"{ Remove-Item "  + $sQuote + $filePathSlash + $fileBase + ".class" + $sQuote + " }"
				$sublimeBuild_Commands += "cd " + $sQuote + $filePath + $sQuote
				$sublimeBuild_Commands += "javac -encoding UTF-8 " + $sQuote + $fileName + $sQuote
				$sublimeBuild_Commands += "java " + $fileBase
				$powerShell_Enabled   = $FALSE
				$bottomHeader_Enabled = $FALSE
			}




		#/////  GLOBALS - DO NOT ALTER  //////////////////////
		Else { Exit }
		$global:powerShell_Enabled    = $powerShell_Enabled
		$global:sublimeBuild_Enabled  = $sublimeBuild_Enabled
		$global:firstBuild            = $firstBuild
		$global:powerShell_Commands   = $powerShell_Commands
		$global:sublimeBuild_Commands = $sublimeBuild_Commands
		$global:topHeader_Enabled     = $topHeader_Enabled
		$global:bottomHeader_Enabled  = $bottomHeader_Enabled
	}

#▐▌▒▓▒▐▌═════════════════════════▐▌▒▓▒▐▌▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄¦⌠#
#▐▌▓▒▓▐▌                         ▐▌▓▒▓▐▌▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓‡#
#▐▌▒▓▒▐▌      { FUNCTIONS }      ▐▌▒▓▒▐▌██████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████c3#
#▐▌▓▒▓▐▌                         ▐▌▓▒▓▐▌▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓‡#
#▐▌▒▓▒▐▌═════════════════════════▐▌▒▓▒▐▌▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀¦⌡#

	#▐▌»»▒▐▌───────────────────────────▐▌▒««▐▌_________________________________________________________________________________________________________________________________________________________¦•⌠#
	#▐▌»»▒▐▌    •   execute_Build      ▐▌▒««▐▌░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬m2#
	#▐▌»»▒▐▌───────────────────────────▐▌▒««▐▌‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾¦•⌡#

function execute_Build ( $buildTarget )
	{
		$powerShell_Commands   = $global:powerShell_Commands
		$sublimeBuild_Commands = $global:sublimeBuild_Commands
		$pQuote                = $global:pQuote
		$sQuote                = $global:sQuote
		$cmdQuote              = $global:cmdQuote
		$POWER_SHELL           = $global:POWER_SHELL
		$SUBLIME_BUILD         = $global:SUBLIME_BUILD

		$subCommands = ""

		If ( $buildTarget -eq $POWER_SHELL )
			{
				$subCommand_Prefix = $cmdQuote + " & {"
				$subCommand_Suffix = "}" + $cmdQuote + ";"

				foreach ( $subCommand in $powerShell_Commands )
					{ $subCommands += $subCommand_Prefix + $subCommand + $subCommand_Suffix }

				$command_Prefix = "start powershell " + $sQuote + "-NoExit -Command "
				$command_Suffix = $sQuote
			}

		ElseIf ( $buildTarget -eq $SUBLIME_BUILD )
			{
				$subCommand_Prefix = " & {"
				$subCommand_Suffix = "};"

				foreach ( $subCommand in $sublimeBuild_Commands )
					{ $subCommands += $subCommand_Prefix + $subCommand + $subCommand_Suffix }

				$command_Prefix = ""
				$command_Suffix = ""
			}

		$command = $command_Prefix + $subCommands + $command_Suffix

		invoke-expression "$command"
	}

	#▐▌»»▒▐▌─────────────────────────────▐▌▒««▐▌_______________________________________________________________________________________________________________________________________________________¦•⌠#
	#▐▌»»▒▐▌    •   prepare_Headers      ▐▌▒««▐▌░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬m2#
	#▐▌»»▒▐▌─────────────────────────────▐▌▒««▐▌‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾¦•⌡#

function prepare_Headers ( $characterMode )
	{
		#/////  HEADER_CHARACTERS //////////////////
		If ( $characterMode -eq $POWER_SHELL )
			{
				$topLeft     = [Char]9554
				$bottomLeft  = [Char]9560
				$topRight    = [Char]9557
				$bottomRight = [Char]9563
				$vertical    = [Char]9474
				$horizontal  = [Char[]]9552
			}
		ElseIf ( $characterMode -eq $SUBLIME_BUILD )
			{
				$topLeft     = ""
				$bottomLeft  = ""
				$topRight    = ""
				$bottomRight = ""
				$vertical    = ""
				$horizontal  = "-"
			}
		#/////  /HEADER_CHARACTERS /////////////////

		$headerText           = $global:headerText
		$projectName          = $global:projectName
		$projectName_Enabled  = $global:projectName_Enabled
		$header_NewLine_Count = $global:header_NewLine_Count

		If ( ( $projectName_Enabled -eq $TRUE ) `
		-And ( $projectName -ne "" ) )
			{ $headerText = "[ " + $projectName + " ] " + $headerText }

		$global:buildEnd_NewLines = "`n" * ( $buildEnd_NewLine_Count - 1 )
		$header_NewLines          = "`n" * ( $header_NewLine_Count   - 1 )

		$padding = " "
		$slash   = "/"

		$topDivider_1 = `
			$topLeft + `
			-join $horizontal * ( $headerText.length + ( $padding.length * 2 ) ) + `
			$topRight

		$bottomDivider_1 = `
			$bottomLeft + `
			-join $horizontal * ( $headerText.length + ( $padding.length * 2 ) ) + `
			$bottomRight

		$topDivider_2 = `
			$topLeft + `
			-join $horizontal * ( $headerText.length + ( $padding.length * 2 ) + $slash.length ) + `
			$topRight

		$bottomDivider_2 = `
			$bottomLeft + `
			-join $horizontal * ( $headerText.length + ( $padding.length * 2 ) + $slash.length ) + `
			$bottomRight

		$title_1 = $vertical + $padding + $headerText + $padding + $vertical
		$title_2 = $vertical + $padding + $slash + $headerText + $padding + $vertical

		$global:topHeader = `
			$topDivider_1    + "`n" + `
			$title_1         + "`n" + `
			$bottomDivider_1 + "`n" + `
			$header_NewLines

		$global:bottomHeader = `
			$header_NewLines + "`n" + `
			$topDivider_2    + "`n" + `
			$title_2         + "`n" + `
			$bottomDivider_2 + "`n"

	}

	#▐▌»»▒▐▌───────────────────────────▐▌▒««▐▌_________________________________________________________________________________________________________________________________________________________¦•⌠#
	#▐▌»»▒▐▌    •   insert_Header      ▐▌▒««▐▌░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬░╬m2#
	#▐▌»»▒▐▌───────────────────────────▐▌▒««▐▌‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾¦•⌡#

function insert_Header ( $headerMode )
	{
		$POWER_SHELL           = $global:POWER_SHELL
		$SUBLIME_BUILD         = $global:SUBLIME_BUILD
		$powerShell_Commands   = $global:powerShell_Commands
		$sublimeBuild_Commands = $global:sublimeBuild_Commands
		$topHeader_Enabled     = $global:topHeader_Enabled
		$bottomHeader_Enabled  = $global:bottomHeader_Enabled
		$headerMode_Start      = $global:headerMode_Start
		$headerMode_End        = $global:headerMode_End
		$pQuote                = $global:pQuote
		$sQuote                = $global:sQuote

		If ( ( $topHeader_Enabled -eq $TRUE ) `
		-And ( $headerMode -eq $headerMode_Start ) )
			{
				prepare_Headers $POWER_SHELL
				$powerShell_Commands   += "Write-Output " + $pQuote + $global:topHeader + $pQuote
				prepare_Headers $SUBLIME_BUILD
				$sublimeBuild_Commands += "Write-Output " + $sQuote + $global:topHeader + $sQuote
			}

		ElseIf ( ( $bottomHeader_Enabled -eq $TRUE ) `
		-And ( $headerMode -eq $headerMode_End ) )
			{
				prepare_Headers $POWER_SHELL
				$powerShell_Commands   += "Write-Output " + $pQuote + $global:bottomHeader + $pQuote
				prepare_Headers $SUBLIME_BUILD
				$sublimeBuild_Commands += "Write-Output " + $sQuote + $global:bottomHeader + $sQuote
			}

		$powerShell_Commands   += "Write-Output " + $pQuote + $buildEnd_NewLines + $pQuote
		$sublimeBuild_Commands += "Write-Output " + $sQuote + $buildEnd_NewLines + $sQuote

		$global:powerShell_Commands   = $powerShell_Commands
		$global:sublimeBuild_Commands = $sublimeBuild_Commands
	}

#▐▌▒▓▒▐▌══════════════════════▐▌▒▓▒▐▌▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄¦⌠#
#▐▌▓▒▓▐▌                      ▐▌▓▒▓▐▌▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓‡#
#▐▌▒▓▒▐▌      { SCRIPT }      ▐▌▒▓▒▐▌█████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████c3#
#▐▌▓▒▓▐▌                      ▐▌▓▒▓▐▌▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓‡#
#▐▌▒▓▒▐▌══════════════════════▐▌▒▓▒▐▌▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀¦⌡#

	#▄▄▄▄▄─────────────────────────────▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄¦•⌠#
	#░░░░░      •   { Variables }      ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░s2#
	#▀▀▀▀▀─────────────────────────────▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀¦•⌡#

$global:filePathSlash = $filePath + "\"

$global:pQuote   = "`"`"`"`"`"`""
$global:cmdQuote = "`"`""
$global:sQuote   = "`""

$global:topHeader         = ""
$global:bottomHeader      = ""
$global:buildEnd_NewLines = ""

$global:firstBuild = ""

$global:powerShell_Commands   = @()
$global:sublimeBuild_Commands = @()

$global:headerMode_Start = "Start"
$global:headerMode_End   = "End"

$global:POWER_SHELL   = "PowerShell"
$global:SUBLIME_BUILD = "SublimeBuild"

	#▄▄▄▄▄───────────────────────────▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄¦•⌠#
	#░░░░░      •   { Execute }      ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░s2#
	#▀▀▀▀▀───────────────────────────▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀¦•⌡#

insert_Header $headerMode_Start

set_BuildMode $file $fileName $fileBase $filePath $filePathSlash $projectName `
	$POWER_SHELL $SUBLIME_BUILD $powerShell_Enabled $sublimeBuild_Enabled `
	$powerShell_Commands $sublimeBuild_Commands $pQuote $sQuote

insert_Header $headerMode_End

If ( $firstBuild -eq $POWER_SHELL )
	{
		If ( $powerShell_Enabled   -eq $TRUE ) { execute_Build $POWER_SHELL }
		If ( $sublimeBuild_Enabled -eq $TRUE ) { execute_Build $SUBLIME_BUILD }
	}
ElseIf ( $firstBuild -eq $SUBLIME_BUILD )
	{
		If ( $sublimeBuild_Enabled -eq $TRUE ) { execute_Build $SUBLIME_BUILD }
		If ( $powerShell_Enabled   -eq $TRUE ) { execute_Build $POWER_SHELL }
	}
