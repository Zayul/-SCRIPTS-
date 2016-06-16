```AutoHotkey
$CapsLock::

	KeyWait, CapsLock, T0.15

	;▒▒▒  Long Press  ▒▒▒;
	If (ErrorLevel){
		Return
	}

	Else{
		KeyWait, CapsLock, D T0.15

		;▒▒▒  Single Press  ▒▒▒;
		If (ErrorLevel){
			Send, ^+!#{F11}
		}

		;▒▒▒  Double Press  ▒▒▒;
		Else{
			Send, ^+!#{F12}
		}
	}

	KeyWait, CapsLock

Return
```
