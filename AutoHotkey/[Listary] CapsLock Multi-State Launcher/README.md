Add this @ your `AHK` hotkeys file:

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
Add these settings @ Listary:

![Listary Settings](https://raw.githubusercontent.com/Enteleform/-SCRIPTS-/master/AutoHotkey/%5BListary%5D%20CapsLock%20Multi-State%20Launcher/Hotkey%20Settings.PNG)
