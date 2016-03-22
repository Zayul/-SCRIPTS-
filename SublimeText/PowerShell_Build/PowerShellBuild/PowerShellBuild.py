import sublime, sublime_plugin

class PowershellBuildCommand ( sublime_plugin.TextCommand ):

	def run ( self, edit, mode = None ):

		view = self.view
		window = sublime.active_window ()

		if mode   == "build":        Commands.build        ( window )
		elif mode == "select_Build": Commands.select_Build ( window )
		elif mode == "end_Build":    Commands.end_Build    ( window )

class Commands ():

	def build ( window ):

		Commands.end_Build ( window )
		window.run_command ( "build" )

	def select_Build ( window ):

		Commands.end_Build ( window )
		window.run_command ( "build", { "select": True } )

	def end_Build ( window ):

		window.run_command ( "exec",       { "kill": True } )
		window.run_command ( "hide_panel", { "cancel": True } )
