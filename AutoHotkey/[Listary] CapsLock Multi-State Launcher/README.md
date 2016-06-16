
This script launches Listary's fuzzy search with various <kbd>CapsLock</kbd> states.

```
• Single Press: launch fuzzy search
• Double Press: launch user menu
• Long Press:   currently does nothing, but you can add any custom action
```

**Note:** The `CapsLock` default function can still be accessed via <kbd>Shift + CapsLock</kbd>, kbd>Ctrl + CapsLock</kbd>, etc.

&nbsp;

-----

&nbsp;

### @ MyHotkeys.ahk:

```AutoHotkey
$CapsLock::

	KeyWait, CapsLock, T0.15

	;▒▒▒  Long Press  ▒▒▒;
	If (ErrorLevel){
		Return
	}

	Else{
		KeyWait, CapsLock, D T0.15

		;▒▒▒  Single Press ( Launch Fuzzy Search )  ▒▒▒;
		If (ErrorLevel){
			Send, ^+!#{F11}
		}

		;▒▒▒  Double Press ( Launch Menu )  ▒▒▒;
		Else{
			Send, ^+!#{F12}
		}
	}

	KeyWait, CapsLock

Return
```

&nbsp;

-----

&nbsp;

### @ Listary > Options:

![Listary Settings](https://raw.githubusercontent.com/Enteleform/-SCRIPTS-/master/AutoHotkey/%5BListary%5D%20CapsLock%20Multi-State%20Launcher/Hotkey%20Settings.PNG)
