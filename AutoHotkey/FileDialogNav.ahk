
#Persistent
#SingleInstance Force
#WinActivateForce
SetKeyDelay 30, 30

;▓▓▓▓▓║     Init     ║▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓⌠¦g1⌡;

global fileDialog
global directoryGUI
global directoryListBox
global selectedDirectory

global directories := Object()
directories.Insert( "C:/Program Files" )
directories.Insert( "C:/Users" )

global gui_Width  := 200
global gui_Height := 100
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
	directoryGUI_Window := WinExist()
	GroupAdd, directoryGUI_Group, ahk_id %directoryGUI_Window%
	Gui directoryGUI: Hide

}

show_GUI(){

	MouseGetPos, mouse_xPos, mouse_yPos
	gui_xPos := mouse_xPos
	gui_yPos := mouse_yPos
	Gui directoryGUI: Show, x%gui_xPos% y%gui_yPos% w%gui_Width% h%gui_Height%

}

send_SelectedDirectory(){

	Gui directoryGUI: Submit
	selectedDirectory := directoryListBox

	WinActivate, ahk_id %fileDialog%
	ControlFocus, ToolbarWindow324, ahk_id %fileDialog%
	Send, {Space}

	ControlSetText, Edit2, %selectedDirectory%, ahk_id %fileDialog%
	Send, {Enter}

	ControlFocus, DirectUIHWND2, ahk_id %fileDialog% /* Edit1 == File Name | DirectUIHWND2 == Directory Contents */

}

;▓▓▓▓▓║     Execution Contexts     ║▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓⌠¦g1⌡;

on_Selection:

	If ( A_GuiControlEvent == "DoubleClick" )
		send_SelectedDirectory()
	return

#IfWinActive ahk_class #32770

	`::

		fileDialog := WinExist( "A" )
		show_GUI()

		return

#IfWinActive, ahk_group directoryGUI_Group

	Enter::
		send_SelectedDirectory()
		return

	Escape::
		Gui directoryGUI: Hide
		return
