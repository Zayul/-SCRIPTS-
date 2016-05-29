import sublime, sublime_plugin
import subprocess
import os
import re

class ExecuteSelectionCommand( sublime_plugin.TextCommand ):
	def run( self, edit ):

		plugin_FilePath = os.path.dirname( __file__ ).replace( "/", os.sep )
		exec_File       = plugin_FilePath + os.sep + "exec.py"

		view      = self.view
		selection = view.sel()[0]

		script = view.substr( selection ).strip()
		script = re.sub( "[\n\r]+", ";", script )

		command  = [ "cmd.exe", "/c" ]
		command += [ "python", "-u", exec_File, script ]
		command += [ "&", "echo.", "&", "pause" ]

		subprocess.Popen( command )
