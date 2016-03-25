
# Module_Loader

### [Info](https://github.com/Enteleform/-SCRIPTS-/tree/master/SublimeText/Module_Loader#demo) &nbsp;| &nbsp;[Implementation](https://github.com/Enteleform/-SCRIPTS-/tree/master/SublimeText/Module_Loader#implementation)

&nbsp;

-----

## INFO

SublimeText does not natively support module reloading.

This can be a hassle when developing plugins, as you will constantly need to restart SublimeText in order to update your modules.

`module_loader` solves that issue by reloading all modules every time the plugin is saved.

It also removes the need for explicit declaration of modules.&nbsp; Just list the directories you want to load all modules from in `moduleDirectories`, and `module_loader` will do the rest.

-----

### With `module_loader`:
![with_module_loader](https://raw.githubusercontent.com/Enteleform/-SCRIPTS-/master/SublimeText/Module_Loader/%5BGIFs%5D/%5BWith%5D%20module_loader.gif)

### Without `module_loader`:
![without_module_loader](https://raw.githubusercontent.com/Enteleform/-SCRIPTS-/master/SublimeText/Module_Loader/%5BGIFs%5D/%5BWithout%5D%20module_loader.gif)

&nbsp;

-----

## IMPLEMENTATION

To implement `module_loader`, just put a copy of `module_loader.py` in your `PluginName/Modules` directory and include these 3 lines in your plugin:
```
from MyPlugin.Modules import module_loader
moduleDirectories = [ "MyPlugin/Modules", "MyPlugin/MoreModules" ]
module_loader.load ( moduleDirectories, globals() )
```
*( update directories accordingly )*

### Try out the [Demo Plugin](https://github.com/Enteleform/-SCRIPTS-/tree/master/SublimeText/Module_Loader/%5BDemo%5D) to see a working implementation of `module_loader`.
