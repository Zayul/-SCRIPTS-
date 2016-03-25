
import sublime, sublime_plugin

from MyPlugin.Modules import module_loader
moduleDirectories = [ "MyPlugin/Modules" ] #▒▒▒  list all directories to be loaded  ▒▒▒#
module_loader.load ( moduleDirectories, globals() )

TestModule.run() #▒▒▒  imported modules do NOT require explicit declaration  ▒▒▒#

class MyPluginCommand ( sublime_plugin.TextCommand ):
	def run ( self, edit ):
		return

