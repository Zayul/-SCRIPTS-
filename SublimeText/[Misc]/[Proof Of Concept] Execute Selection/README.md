Written in response to this [__StackOverflow question__](http://stackoverflow.com/questions/36620919/sublime-text-package-that-runs-selected-code-to-a-console) asking how to execute selected `Python` code in an external console.

#Demo:

![Demo](https://raw.githubusercontent.com/Enteleform/-SCRIPTS-/master/SublimeText/%5BMisc%5D/%5BProof%20Of%20Concept%5D%20Execute%20Seleciton/Demo.gif)

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

* copy the plugin folder to your `Packages` directory
* select text to execute
* execute using the included keybinding:  
<kbd>Ctrl + Shift + Alt + Super + E</kbd>
