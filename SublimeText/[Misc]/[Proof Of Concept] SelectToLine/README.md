Written in response to this [__StackOverflow question__](http://stackoverflow.com/questions/36878733/select-variable-numbers-of-lines-in-sublime-text) asking how to select until specific lines programatically.

#Demo:

![Demo](https://raw.githubusercontent.com/Enteleform/-SCRIPTS-/master/SublimeText/%5BMisc%5D/%5BProof%20Of%20Concept%5D%20SelectToLine/Demo.gif)

&nbsp;

-----

# Features:

* works bi-directionally
* respects the current selection
* only executes if there is a single selection

&nbsp;

-----

#Implementation:

* verify single selection
* get user input for new point to select until
* verify current selection vs new selection positions
* update selection

&nbsp;

-----

#Usage:

* copy the plugin folder to your `Packages` directory
* restart SublimeText
* execute the command via the included:
 * key-binding: <kbd>Ctrl + Shift + Alt + L</kbd>
 * command palette entry: `Select To Line`
