Written in response to this [__StackOverflow question__](http://stackoverflow.com/questions/37248764/sublime-text-how-do-i-create-a-keyboard-shortcut-to-move-text-from-one-open-fi) asking how to cut text from one file to another ( *in a 2 group view layout* ).

#Demo:

![Demo](https://raw.githubusercontent.com/Enteleform/-SCRIPTS-/master/SublimeText/%5BMisc%5D/%5BProof%20Of%20Concept%5D%20MoveTextToInactiveDocument/Demo.gif)

&nbsp;

-----

# Features:

* bidirectional `copy` & `cut` commands ( *from active document to inactive document, works on either view* )
* selects & scrolls to inserted text @ inactive document
* only executes if there are exactly 2 view groups

&nbsp;

-----

#Implementation:

* verify window groups
* set active & inactive documents
* verify selection
* move text from active document to inactive document
* select & scroll to inserted text

&nbsp;

-----

#Usage:

* copy the plugin folder to your `Packages` directory
* restart SublimeText
* execute the commands via the included `key-bindings`:
 * <kbd>Ctrl + Super + C</kbd> to copy selections to the inactive document
 * <kbd>Ctrl + Super + X</kbd> to cut selections to the inactive document
