
import sublime, sublime_plugin
import csv

class csvTemplateDemoCommand ( sublime_plugin.TextCommand ):

	def run ( self, edit ):

		csvFile   = "C:\\___YOUR_DIRECTORY___\\Data.csv"
		delimiter = ","

		view = self.view.window().new_file()

		with open( csvFile ) as csvData:
			csvRows = csv.DictReader ( csvData, delimiter = delimiter )
			for row in csvRows:

				documentEnd    = view.size()
				templateString = ""

				template    = row[ "Template" ]
				item        = row[ "Item" ]
				item_colour = row[ "Item_Colour" ]
				item_wt     = row[ "Item_wt" ]
				grows_in    = row[ "Grows_in" ]
				salad       = row[ "Salad" ]
				raw         = row[ "Raw" ]

				if template:       templateString += "\n" + "Template: "+ template
				if item:           templateString += "\n" + "Selected " + template + ": "+ item
				if item_colour:    templateString += "\n" + item + " color is " + item_colour
				if item_wt:        templateString += "\n" + "Average weight of " + item + " is " + item_wt + " grams"
				if grows_in:       templateString += "\n" + item + " grows in regions that are " + grows_in
				if salad == "yes": templateString += "\n" + item + " can be used in salad"
				if raw   == "yes": templateString += "\n" + "It can be eaten raw"

				view.insert ( edit, documentEnd, templateString + "\n" )

