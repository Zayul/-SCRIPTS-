Written in response to this [**StackOverflow Question**](http://stackoverflow.com/questions/37855139/can-you-highlight-a-character-after-a-certain-length-in-sublime-text)

&nbsp;

![Demo](http://i.stack.imgur.com/bK4a9.gif)

-----

&nbsp;

Save the following script @:  
`/Packages/Highlight Long Lines/highlight_long_lines.py`

&nbsp;

<!-- language: lang-python -->

	import sublime, sublime_plugin

	class highlight_long_lines( sublime_plugin.EventListener ):
		def on_modified_async( self, view ):



			#▒▒▒  Settings  ▒▒▒#
			maxLength = 80
			scope     = "Invalid"



			invalidRegions = []

			document = sublime.Region( 0, view.size() )
			lines    = view.lines( document )

			for region in lines:
				difference = ( region.end() - region.begin() )
				if difference > maxLength:
					invalidRegion = sublime.Region( region.begin() + maxLength, region.end() )
					invalidRegions.append( invalidRegion )

			if len( invalidRegions ) > 0:
				view.add_regions( "LongLines", invalidRegions, scope )

&nbsp;

-----

&nbsp;

## Variable Settings:

`maxLength` affects the length that lines will highlight after.

`scope` affects the color of the highlighted regions.  
You can use any scope from your active `.tmTheme` file ( *color scheme* )
