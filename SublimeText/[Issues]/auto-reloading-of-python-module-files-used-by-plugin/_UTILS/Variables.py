
#▄▄▄▄▄──────────────────▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄¦⌠#
#░░░░░      Import      ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░s2#
#▀▀▀▀▀──────────────────▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀¦⌡#

import sublime
from _UTILS import Comments, Edit

from os.path import dirname

#▐▌▒▓▒▐▌═════════════════════▐▌▒▓▒▐▌▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄¦⌠#
#▐▌▓▒▓▐▌                     ▐▌▓▒▓▐▌▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓‡#
#▐▌▒▓▒▐▌      Variables      ▐▌▒▓▒▐▌██████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████c3#
#▐▌▓▒▓▐▌                     ▐▌▓▒▓▐▌▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓‡#
#▐▌▒▓▒▐▌═════════════════════▐▌▒▓▒▐▌▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀¦⌡#

class create ():

	def __init__ ( self, pluginName ):

		self.load_Settings ( pluginName )
		self.initialize_Variables ()

	def load_Settings ( self, pluginName ):

		pluginSettings = sublime.load_settings ( pluginName + ".sublime-settings" ).get ( "settings", [] )
		for setting in pluginSettings: setattr ( self, setting, pluginSettings[ setting ] )

		commentSettings = sublime.load_settings ( "_UTILS_Comments.sublime-settings" ).get ( "settings", [] )
		for setting in commentSettings: setattr ( self, setting, commentSettings[ setting ] )

	def initialize_Variables ( self ):

		self.view     = ""
		self.lastView = ""
		self.edit     = ""
		self.window   = ""

		self.fileExtension = ""
		self.fileName      = ""
		self.last_FileName = ""
		self.syntax        = ""
		self.lastSyntax    = ""

		self.commentPrefix = ""
		self.commentSuffix = ""

		self.plainText_Syntax = "Packages/Text/Plain text.tmLanguage"

	def update_Variables ( self, view, window ):

		#▒▒▒▒▒  View Data  ▒▒▒▒▒#

		self.view   = view
		self.window = window

		self.edit = Edit.get ( self.view )

		self.syntax   = view.settings().get ( "syntax" )
		self.fileName = self.view.file_name()

		#▒▒▒▒▒  New [ View | File | Syntax ]  ▒▒▒▒▒#

		if self.lastView      != self.view \
		or self.lastSyntax    != self.syntax \
		or self.last_FileName != self.fileName:

			#▒▒▒▒▒  Unsaved File - No Syntax  ▒▒▒▒▒#

			if not self.fileName \
			and self.syntax == self.plainText_Syntax:
				self.fileExtension = None
				self.commentPrefix, self.commentSuffix = Comments.get_CommentCharacters ( view, "__DEFAULT__", self.fileType_CommentCharacters, True )

			#▒▒▒▒▒  Unsaved File - With Syntax  ▒▒▒▒▒#

			elif not self.fileName \
			and self.syntax != self.plainText_Syntax:
				self.fileExtension = None
				self.commentPrefix, self.commentSuffix = Comments.get_CommentCharacters ( view, None, None, True )

			#▒▒▒▒▒  Saved File  ▒▒▒▒▒#

			else:
				self.fileExtension = window.extract_variables()[ "file_extension" ]
				self.commentPrefix, self.commentSuffix = Comments.get_CommentCharacters ( view, self.fileExtension, self.fileType_CommentCharacters, True )

		#▒▒▒▒▒  Set : References  ▒▒▒▒▒#

		self.lastView      = view
		self.lastSyntax    = self.syntax
		self.last_FileName = self.fileName
