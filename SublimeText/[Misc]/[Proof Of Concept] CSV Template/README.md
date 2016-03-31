Written in response to this [__SublimeText forum question__](https://forum.sublimetext.com/t/creating-a-text-file-based-on-inputs-from-template-and-data-text-files/18975) asking how to transcribe CSV data to document view in a particular format.

#Demo:

![Demo](https://raw.githubusercontent.com/Enteleform/-SCRIPTS-/master/SublimeText/%5BMisc%5D/%5BProof%20Of%20Concept%5D%20CSV%20Template/Demo.gif)

&nbsp;

-----

#Implementation:

&nbsp;

* extract fields from each row in CSV file
 * append formatting text around each field
 * send formatted row text to blank document

&nbsp;

-----

#Usage:

&nbsp;

To use `csvTemplate`:

* edit the `csvFile`, `delimiter`, & `row[ "___field_name___" ]` variables to match your `CSV` file.
* edit the `templateString` statements to match your desired formatting
* save the plugin & restart SublimeText
* open the Command Palette with <kbd>Ctrl + Shift + P</kbd> and run the `CSV Template: Demo` command
