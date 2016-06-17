Written in response to this [**StackOverflow Question**](http://stackoverflow.com/questions/37855139/can-you-highlight-a-character-after-a-certain-length-in-sublime-text)

&nbsp;

![Demo](http://i.stack.imgur.com/bK4a9.gif)

-----

&nbsp;

Save the following script @:  
`/Packages/Highlight Long Lines/highlight_long_lines.py`

&nbsp;

```python
import sublime, sublime_plugin

class highlight_long_lines( sublime_plugin.EventListener ):
	def on_modified_async( self, view ):


		#▒▒▒▒▒▒▒▒  Settings  ▒▒▒▒▒▒▒▒#
		maxLength           = 80
		scope               = "Invalid"
		firstCharacter_Only = False



		view.erase_regions( "LongLines" )

		indentationSize     = view.settings().get( "tab_size" )
		indentation_IsSpace = view.settings().get( "translate_tabs_to_spaces" )

		document    = sublime.Region( 0, view.size() )
		lineRegions = view.lines( document )

		invalidRegions = []

		for region in lineRegions:

			text             = view.substr( region )
			text_WithoutTabs = text.expandtabs( indentationSize )

			if text_WithoutTabs.isspace():
				tabOffset = 0
			else:
				tabCount      = text.count( "	" )
				tabDifference = len( text_WithoutTabs ) - len( text )
				tabOffset     = tabDifference

			lineLength = ( region.end() - region.begin() ) - tabOffset
			if lineLength > maxLength:

				highlightStart = region.begin() + ( maxLength - tabOffset )

				if firstCharacter_Only == True:
					highlightEnd = highlightStart + 1
				else:
					highlightEnd = region.end()

				invalidRegion = sublime.Region( highlightStart, highlightEnd )
				invalidRegions.append( invalidRegion )

		if len( invalidRegions ) > 0:
			view.add_regions( "LongLines", invalidRegions, scope )
```

&nbsp;

-----

&nbsp;

## Variable Settings:

`maxLength` affects the length that lines will highlight after.

`scope` affects the color of the highlighted regions.  
You can use any scope from your active `.tmTheme` file ( *color scheme* )
