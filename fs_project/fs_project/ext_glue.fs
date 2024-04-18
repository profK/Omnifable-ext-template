(*******************************
This module is very important. It
defines the interface between the
python Omniverse extentsion framework
and the Fable F# code.

To create a new extension, modify
the defined functions to run your
F# code

********************************)

module ext_glue

let ext_on_startup extid =
    printfn("in startup")

let ext_on_shutdown() =
    printfn("in startup")
