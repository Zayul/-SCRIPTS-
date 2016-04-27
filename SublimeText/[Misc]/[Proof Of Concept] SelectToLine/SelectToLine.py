import sublime, sublime_plugin

class SelectToLineCommand( sublime_plugin.TextCommand ):

	def run( self, edit ):

		window     = self.view.window()
		selections = self.view.sel()

		if len( selections ) != 1:
			return

		selection = selections[0]
		self.selectionStart = selection.a

		window.show_input_panel( "Select To Line Number", "", self.get_LineNumber, None, None )

	def get_LineNumber( self, userInput ):

		lineToRow_Offset = 1
		row = int ( userInput ) - lineToRow_Offset

		selectionStart = self.selectionStart
		selectionEnd_Row   = self.view.text_point( row, 0 )

		if selectionEnd_Row >= selectionStart:
			selectionEnd = self.view.line( selectionEnd_Row ).b
		elif selectionEnd_Row < selectionStart:
			selectionEnd = self.view.line( selectionEnd_Row ).a

		newSelection = sublime.Region ( self.selectionStart, selectionEnd )

		self.view.selection.clear()
		self.view.selection.add( newSelection )
