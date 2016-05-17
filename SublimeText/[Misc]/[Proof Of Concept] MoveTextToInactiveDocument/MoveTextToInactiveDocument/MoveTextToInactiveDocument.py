import sublime, sublime_plugin

LINE_BREAK = "\n"

class MoveTextToInactiveDocumentCommand( sublime_plugin.TextCommand ):
	def run( self, edit, MODE = "copy" ):

		view   = self.view
		window = view.window()

		#■■■  Verify Window Groups  ■■■#

		windowGroup_Count = window.num_groups()

		if windowGroup_Count != 2:
			return

		#■■■  Set Active & Inactive Documents  ■■■#

		activeDocument_Group = window.active_group()

		if activeDocument_Group == 0:
			activeDocument   = window.active_view_in_group( 0 )
			inactiveDocument = window.active_view_in_group( 1 )
		elif activeDocument_Group == 1:
			activeDocument   = window.active_view_in_group( 1 )
			inactiveDocument = window.active_view_in_group( 0 )

		#■■■  Verify Selection  ■■■#

		selections = activeDocument.sel()

		if len( selections ) == 0:
			return

		#■■■  Move Text From Active Document To Inactive Document  ■■■#

		first_InsertionPoint = inactiveDocument.size()

		for region in selections:

			regionText     = activeDocument.substr( region ) + LINE_BREAK
			insertionPoint = inactiveDocument.size()

			inactiveDocument.insert( edit, insertionPoint, regionText )

			if MODE.lower() == "cut":
				activeDocument.erase( edit, region )

		#■■■  Select & Scroll To Inserted Text  ■■■#

		inactiveDocument_End = inactiveDocument.size()
		insertedText_Region  = sublime.Region( first_InsertionPoint, inactiveDocument_End )

		inactiveDocument.selection.clear()
		inactiveDocument.selection.add( insertedText_Region )

		inactiveDocument.show( inactiveDocument.size() )
		window.focus_view( activeDocument )
