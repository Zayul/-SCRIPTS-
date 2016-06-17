Written in response to this [**StackOverflow Question**](http://stackoverflow.com/questions/37865230/changing-editing-mode-in-sublime-text-3-toggle-multiple-settings-with-a-command) asking how to toggle a custom set of view settings.

&nbsp;

![Demo](http://i.stack.imgur.com/C6GRe.gif)

-----

&nbsp;

Save the following script @:  
`/Packages/Toggle Custom View/toggle_custom_view.py`

&nbsp;

```python
import sublime, sublime_plugin

STORED_SETTINGS = {}

class toggle_custom_view( sublime_plugin.TextCommand ):
	def run( self, edit ):

		view     = self.view
		settings = view.settings()

		if settings.get( "is_widget" ):
			return

		if view.file_name():
			viewID = view.file_name()
		else:
			viewID = str( view )

		global STORED_SETTINGS
		if not viewID in STORED_SETTINGS:
			STORED_SETTINGS[ viewID ] = {
				"custom_view_enabled": True,
				"word_wrap":           settings.get( "word_wrap"           ),
				"wrap_width":          settings.get( "wrap_width"          ),
				"draw_centered":       settings.get( "draw_centered"       ),
				"line_padding_top":    settings.get( "line_padding_top"    ),
				"line_padding_bottom": settings.get( "line_padding_bottom" ),
			}
		storedSettings = STORED_SETTINGS[ viewID ]

		if storedSettings[ "custom_view_enabled" ]:
			settings.set( "word_wrap",           True )
			settings.set( "wrap_width",          80   )
			settings.set( "draw_centered",       True )
			settings.set( "line_padding_top",    1    )
			settings.set( "line_padding_bottom", 1    )

		else:
			settings.set( "word_wrap",           storedSettings[ "word_wrap"           ] )
			settings.set( "wrap_width",          storedSettings[ "wrap_width"          ] )
			settings.set( "draw_centered",       storedSettings[ "draw_centered"       ] )
			settings.set( "line_padding_top",    storedSettings[ "line_padding_top"    ] )
			settings.set( "line_padding_bottom", storedSettings[ "line_padding_bottom" ] )

		storedSettings[ "custom_view_enabled" ] = not storedSettings[ "custom_view_enabled" ]
```

&nbsp;

-----

&nbsp;

To execute via `Command Palette > Toggle Custom View`, add the following code @:  
`/Packages/Toggle Custom View/Default.sublime-commands`

&nbsp;

```json
[
	{
		"caption": "Toggle Custom View",
		"command": "toggle_custom_view",
	},
]
```

&nbsp;

-----

&nbsp;

To execute via <kbd>Ctrl + Super + Alt + V</kbd>, add the following code @:  
`/Packages/Toggle Custom View/Default.sublime-keymap`

&nbsp;

```json
[
	{
		"keys": ["ctrl+super+alt+v"],
		"command": "toggle_custom_view",
	},
]
```

