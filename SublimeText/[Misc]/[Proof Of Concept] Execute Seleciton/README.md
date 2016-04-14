Written in response to this [__StackOverflow question__](http://stackoverflow.com/questions/36620919/sublime-text-package-that-runs-selected-code-to-a-console) asking how to execute selected `Python` code in an external console.

#Demo:

![Demo]()

&nbsp;

-----

#Implementation:

&nbsp;

* clean selected text of newlines & replace with semicolons

* pass cleaned text as an argument to a simple `exec` script via:
`subprocess.Popen` > `cmd` > `python`

&nbsp;

-----

#Usage:

&nbsp;

To use ExecuteSelection:

* use the included keybinding:
<kbd>Ctrl + Shift + Alt + Super + E</kbd>
