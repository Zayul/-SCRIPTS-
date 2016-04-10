Created for: [Auto reloading of python module files used by plugin](https://forum.sublimetext.com/t/auto-reloading-of-python-module-files-used-by-plugin/5321)
&nbsp;

-----

&nbsp;
This is an incomplete version of Parkour, a plugin for SublimeText.

__[Parkour v0](https://github.com/Enteleform/Presentations/tree/master/Writing%20Your%20Own%20Sublime%20Text%20Plugins/2015-05-26#parkour)__ is fully functional, but has pretty terrible code since it was my first attempt at working with Python & SublimeText.
It will not be released, since I have no intention of supporting it.

-----

I am in the process of building a framework which I will be using for all of my future plugins, and Parkour v1 is currently just a testing ground for said framework. &nbsp; For now, it has none of the functionality of Parkour v0, only a new inline comment function.

The primary purpose of the current code is to implement dynamic variable loading & a core of `_UTIL` modules that will be central to the framework. &nbsp; Once the framework is complete, I will be implementing it into several plugin releases.

-----

Below is a demonstration of the inline comment function, which is executed with the following keybinding:  
<kbd>shift + alt + /</kbd>

![Demo](https://raw.githubusercontent.com/Enteleform/ST_Parkour/master/Inline%20Comment%20Demo.gif)
