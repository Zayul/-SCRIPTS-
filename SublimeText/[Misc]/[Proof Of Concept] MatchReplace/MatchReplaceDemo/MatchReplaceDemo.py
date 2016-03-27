import sublime, sublime_plugin
import Edit
import operator

class MatchReplaceDemoCommand ( sublime_plugin.TextCommand ):

	def run ( self, edit ):

		replacementKeys = []

		#▒▒▒  Populate With Keys To Be Replaced In Document2  ▒▒▒#
		replacementKeys.append ( "flight_number" )
		replacementKeys.append ( "price" )
		replacementKeys.append ( "payment" )

		self.replace_KeyValues ( replacementKeys )

	def replace_KeyValues ( self, replacementKeys ):

		window = self.view.window()

		document1_ResultStrings = {}
		document2_ResultRegions = {}

		#▒▒▒  Verify : 2 Active Window Groups  ▒▒▒#
		windowGroup_Count = window.num_groups()

		if windowGroup_Count != 2:
			return

		#▒▒▒  Set : Document Views  ▒▒▒#
		document1 = window.active_view_in_group ( 0 ) # Document 1 == SOURCE
		document2 = window.active_view_in_group ( 1 ) # Document 2 == MATCH
		edit = Edit.get ( document2 )

		#▒▒▒  Set : Seach Parameters  ▒▒▒#
		query_StartPosition = 0
		queryPrefix         = "((^)|(^[\t\ ]+))"
		querySuffix         = ":"

		#▒▒▒  Store : KeyValue Regions & Strings  ▒▒▒#
		for key in replacementKeys:

			#▒▒▒  Find Document1 Key Regions & Strings  ▒▒▒#
			document1_KeyRegion          = document1.find ( queryPrefix + key + querySuffix, query_StartPosition )
			document1_ResultRegion_Start = document1_KeyRegion.b
			document1_ResultRegion_End   = document1.line ( document1_KeyRegion ).b
			document1_ResultRegion       = sublime.Region ( document1_ResultRegion_Start, document1_ResultRegion_End )
			document1_ResultString       = document1.substr ( document1_ResultRegion )

			#▒▒▒  Find Document2 Key Regions  ▒▒▒#
			document2_KeyRegion          = document2.find ( queryPrefix + key + querySuffix, query_StartPosition )
			document2_ResultRegion_Start = document2_KeyRegion.b
			document2_ResultRegion_End   = document2.line ( document2_KeyRegion ).b
			document2_ResultRegion       = sublime.Region ( document2_ResultRegion_Start, document2_ResultRegion_End )

			#▒▒▒  Verify Match  ▒▒▒#
			if  document1_ResultRegion_Start != -1 \
			and document2_ResultRegion_Start != -1:
				document1_ResultStrings[ key ] = document1_ResultString
				document2_ResultRegions[ key ] = document2_ResultRegion

		#▒▒▒  Verify : Matches Found  ▒▒▒#
		if len ( document1_ResultStrings ) == 0 \
		or len ( document2_ResultRegions ) == 0:
			return

		#▒▒▒  Sort Regions To Avoid Replacement Overlap  ▒▒▒#
		document2_ResultRegions = sorted ( document2_ResultRegions.items(), key=operator.itemgetter ( 1 ) )

		#▒▒▒  Replace Matched KeyValues  ▒▒▒#
		for key, value  in reversed ( document2_ResultRegions ):
			replacementField  = key
			replacementRegion = value
			replacementString = document1_ResultStrings[ key ]
			edit.replace ( replacementRegion, replacementString )

