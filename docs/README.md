# Python Extension Example [example.python_ext]

This is an example of an F# Omniverse Kit extension based on the Fable transpiler. It is intended to be copied 
and serve as a template to create new omniverse extensions in F#.

## Installation:
(1) Download this template into the source/extensions directory of your Omniverse app. (If you dont have one then
download that first from https://github.com/NVIDIA-Omniverse/kit-app-template.)
(2) In the root of the Omniverse app run the folliwng command: repo build

## Development
(1) Open the fs_project directory in your favorite F# editor or ide
(2) Open the ext_glue.py file. This is what the Omniverse extension python stub calls to pass start up and shut down
    extension nessages to your F# program. You can change the bodies of ext_on_startup and ext_on_shutdown to begin
    and end execution of your F# extension code.
(3) After makign changes to your F# code, run repo build again in the app root directory to compile it to python

## Testing
To test your code, use the following command line in the terminal at the root of your app:
_build\windows-x86_64\release\my_name.my_app.bat

I usually stick that in a run.bat file in my root so all I need to type is run

## Limitations and ToDos
(1) I have not yet written the FAable F# bindings for the python Omniverse Kit library. This
    Is next on the agenda but right now you can call it by doing literal emits in your F#
    code. (See https://fable.io/Fable.Python/communicate/py-from-fable.html)
