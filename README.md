# unballanced
Unbalanced calls to begin/end appearance transitions

ViewController1 is in a container.

ViewController2 in modally presented in current context, so it also stays inside the bounds of the container.

ViewController3 is modally presented in default style, so it appears full screen.

All looks good, but when we dismiss back to ViewController1 we get

> Unbalanced calls to begin/end appearance transitions for <ViewController1: 0x7fefe5c07520>.

and viewWillAppear doesn't get called for VC1.
