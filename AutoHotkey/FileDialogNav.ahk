
;▓▓▓▓▓║     Directives     ║▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓⌠¦g1⌡;

#Persistent
#SingleInstance Force
#WinActivateForce
SetKeyDelay 30, 30

;▓▓▓▓▓║     Preferences     ║▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓⌠¦g1⌡;

global directories := Object()
directories.Insert( "C:\Program Files" )
directories.Insert( "C:\Program Files (x86)" )
directories.Insert( "C:\Users" )

global gui_Width  := 200
global gui_Height := 100

;▓▓▓▓▓║     Init     ║▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓⌠¦g1⌡;

global appWindow
global appClass
global appGroup
global directoryGUI
global directoryGUI_Group
global directoryListBox
global selectedDirectory
global blankString := " "

global fileDialog_Class   := "#32770"
global fileExplorer_Class := "CabinetWClass"
GroupAdd, appGroup, ahk_class #32770
GroupAdd, appGroup, ahk_class CabinetWClass

global listbox_Width  := gui_Width - 20
global listbox_Height := gui_Height - 6

build_GUI()

;▓▓▓▓▓║     Functions     ║▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓⌠¦g1⌡;

get_DirectoryList(){

	directoryList := ""

	For index in directories{
		directoryList .= directories[ index ]
		directoryList .= "|"
	}

	return directoryList
}

build_GUI(){

	directoryList := get_DirectoryList()

	Gui directoryGUI: Add, ListBox, w%listbox_Width% h%listbox_Height% vdirectoryListBox gon_Selection Choose1, %directoryList%
	Gui directoryGUI: +LastFound +AlwaysOnTop +ToolWindow
	Gui directoryGUI: Show, x0 y0 w0 h0
	directoryGUI_Window := WinExist()
	GroupAdd, directoryGUI_Group, ahk_id %directoryGUI_Window%
	Gui directoryGUI: Hide
}

show_GUI(){

	CoordMode, Mouse
	MouseGetPos, mouse_xPos, mouse_yPos
	gui_xPos := mouse_xPos - ( gui_Width / 2 )
	gui_yPos := mouse_yPos - ( gui_Width / 4 )

	Gui directoryGUI: Show, x%gui_xPos% y%gui_yPos% w%gui_Width% h%gui_Height%, %blankString%
}

send_SelectedDirectory(){

	Gui directoryGUI: Submit
	selectedDirectory := directoryListBox

	WinActivate, ahk_id %appWindow%

	If ( appClass = fileDialog_Class ){
		directoryBar := "ToolbarWindow324"
		directoryField := "Edit2"
		focusField := "DirectUIHWND2" /* Edit1 == File Name | DirectUIHWND2 == Directory Contents */
	}
	Else If ( appClass = fileExplorer_Class ){
		directoryBar := "ToolbarWindow323"
		directoryField := "Edit1"
		focusField := "DirectUIHWND3"
	}

	ControlFocus, %directoryBar%, ahk_id %appWindow%
	Sleep, 10
	Send, {Space}
	Sleep, 10
	ControlSetText, %directoryField%, %selectedDirectory%, ahk_id %appWindow%
	Sleep, 10
	Send, {Enter}
	ControlFocus, %focusField%, ahk_id %appWindow%
}

;▓▓▓▓▓║     Contexts     ║▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓⌠¦g1⌡;

on_Selection:

	If ( A_GuiControlEvent == "DoubleClick" )
		send_SelectedDirectory()
	return

#IfWinActive, ahk_group appGroup

	`::
		appWindow := WinExist( "A" )
		WinGetClass, appClass, ahk_id %appWindow%
		show_GUI()
		return

#IfWinActive, ahk_group directoryGUI_Group

	`::
		show_GUI()
		return

	Enter::
		send_SelectedDirectory()
		return

	Escape::
		Gui directoryGUI: Hide
		return
