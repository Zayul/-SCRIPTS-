import sublime, sublime_plugin
import mdpopups

class ProgressBarDemoCommand ( sublime_plugin.TextCommand ):

	def run ( self, edit ):

		view = self.view

		self.initialize_ProgressBar ( view )

		for index in range ( 1, self.maxPercent + 1 ):
			sublime.set_timeout ( lambda: self.udpate_ProgressBar ( view ), self.updateFrequency * index )

	def initialize_ProgressBar ( self, view ):

		#▒▒▒  Text  ▒▒▒#
		self.popUp_Label_InProgress = "PROGRESS:"
		self.popUp_Label_Complete   = "COMPLETE!"

		#▒▒▒  Progress Tracking  ▒▒▒#
		self.maxPercent      = 100
		self.updateFrequency = 50 # In Milliseconds

		#▒▒▒  Dimensions  ▒▒▒#
		self.popupWidth         = 500
		self.popupMaxHeight     = 500
		self.progressBar_Height = 21

		#▒▒▒  Colors  ▒▒▒#
		self.progressBar_Incomplete_Color = "#0B121A"
		self.progressBar_Complete_Color   = "#57BB80"
		self.progressBar_Progress_Color   = "#5A91BC"
		self.progressBar_BorderColor      = "#000000"

		self.popupCSS = sublime.load_resource ( sublime.find_resources ( "ProgressBarDemo_ProgressBar.css" )[0] )
		self.progressBar_Width = int ( float ( self.popupWidth * 0.8 ) )
		self.progressPercent   = 0

		mdpopups.show_popup (
			view,               # view
			"",                 # content
			True,               # markdown
			self.popupCSS,      # css
			0,                  # flags
			-1,                 # location
			self.popupWidth,    # width
			self.popupMaxHeight # height
		)

	def udpate_ProgressBar ( self, view ):

		self.progressPercent   += 1
		progressPercent_String  = str ( self.progressPercent ) + "%"
		progressBar_Colors      = []

		popUp_Label = self.popUp_Label_InProgress

		for index in range ( 0, self.maxPercent ):
			if  index <= self.progressPercent \
			and self.progressPercent < self.maxPercent:
				progressBar_Colors.append ( self.progressBar_Progress_Color )
			elif index > self.progressPercent \
			and  self.progressPercent < self.maxPercent:
				progressBar_Colors.append ( self.progressBar_Incomplete_Color )
			elif self.progressPercent >= self.maxPercent:
				progressBar_Colors.append ( self.progressBar_Complete_Color )
				popUp_Label = self.popUp_Label_Complete

		progressBar = mdpopups.color_box (
			progressBar_Colors,           # [ colors ]
			self.progressBar_BorderColor, # border1_color
			None,                         # border2_color
			self.progressBar_Height,      # height
			self.progressBar_Width,       # width
			0,                            # border_size
			4,                            # check_size
			self.maxPercent               # max_colors
		)

		space     = "&nbsp;"
		blankLine = space + "\n"
		h5        = "#####"
		h6        = "######"

		markdown_PopUp_Text =                  \
				h5 + popUp_Label + "\n"            \
			+ blankLine                          \
			+ h6 + progressPercent_String + "\n" \
			+ progressBar

		mdpopups.update_popup ( view, markdown_PopUp_Text, True, self.popupCSS )

