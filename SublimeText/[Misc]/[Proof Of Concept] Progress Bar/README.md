I've been meaning to work with [__mdpopups__](http://facelessuser.github.io/sublime-markdown-popups/) for a while, and decided to give it a shot when I came across this [__StackOverflow question__](http://stackoverflow.com/questions/36205245/progress-bar-in-sublime-text-with-python) asking how to implement a progress bar.

&nbsp;
The implementation is pretty straightforward:

* a loop with incrementing delay times that calls `sublime.set_timeout`
*( Thanks @kingkeith for helping me out with it @ [__This Thread__ ](https://forum.sublimetext.com/t/retrieving-inserted-and-deleted-text/18697))* &nbsp; :grin:

* an array of colors for `mdpopups.color_box` that is populated with 100 values
 * array entries up to the current `progressPercent` == `progress` color
 * array entries after the current `progressPercent` == `incomplete` color
 * if `progressPercent` == `100`, all array entries == `complete` color
&nbsp;

-----

-----

#Demo:

![Demo](https://raw.githubusercontent.com/Enteleform/-SCRIPTS-/master/SublimeText/%5BMisc%5D/%5BProof%20Of%20Concept%5D%20Progress%20Bar/Demo.gif)
&nbsp;

-----

-----

#Code:

# [@ GitHub](https://github.com/Enteleform/-SCRIPTS-/tree/master/SublimeText/%5BMisc%5D/%5BProof%20Of%20Concept%5D%20Progress%20Bar)

*( run the plugin by typing `Progress Bar Demo` @ the Command Palette )*
&nbsp;
