import sublime, sublime_plugin

class SelectToLineCommand( sublime_plugin.TextCommand ):

	def run( self, edit ):

		window     = self.view.window()
		selections = self.view.sel()

		if len( selections ) != 1:
			return

		self.currentSelection = selections[0]

		if self.currentSelection.a > self.currentSelection.b:
			self.currentSelection = sublime.Region( self.currentSelection.b, self.currentSelection.a )

		window.show_input_panel( "Select To Line Number", "", self.get_LineNumber, None, None )

	def get_LineNumber( self, userInput ):

		lineToRow_Offset = 1
		row = int ( userInput ) - lineToRow_Offset
		selectionEnd_Row = self.view.text_point( row, 0 )

		currentSelection = self.currentSelection

		if selectionEnd_Row >= currentSelection.b:
			selectionStart = currentSelection.a
			selectionEnd   = self.view.line( selectionEnd_Row ).b
		elif selectionEnd_Row < currentSelection.a:
			selectionStart = currentSelection.b
			selectionEnd   = self.view.line( selectionEnd_Row ).a

		newSelection = sublime.Region ( selectionStart, selectionEnd )

		self.view.selection.clear()
		self.view.selection.add( newSelection )
