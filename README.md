# unballanced
Unbalanced calls to begin/end appearance transitions

ViewController1 is in a container.

ViewController2 in modally presented in current context, so it also stays inside the bounds of the container.

ViewController3 is modally presented in default style, so it appears full screen.

All looks good, but when we dismiss back to ViewController1 we get

> Unbalanced calls to begin/end appearance transitions for <ViewController1: 0x7fefe5c07520>.

and viewWillAppear doesn't get called for VC1.

```
2018-03-13 10:04:58.265869+0800 unbalanced[40810:29306627] ViewController1 viewWillAppear
2018-03-13 10:04:58.273213+0800 unbalanced[40810:29306627] ViewController1 viewDidAppear
2018-03-13 10:05:01.750584+0800 unbalanced[40810:29306627] ViewController1 viewWillDisappear
2018-03-13 10:05:01.750774+0800 unbalanced[40810:29306627] ViewController2 viewWillAppear
2018-03-13 10:05:02.254540+0800 unbalanced[40810:29306627] ViewController2 viewDidAppear
2018-03-13 10:05:02.254807+0800 unbalanced[40810:29306627] ViewController1 viewDidDisappear
2018-03-13 10:05:16.161571+0800 unbalanced[40810:29306627] ViewController2 viewWillDisappear
2018-03-13 10:05:16.161761+0800 unbalanced[40810:29306627] ViewController3 viewWillAppear
2018-03-13 10:05:16.663935+0800 unbalanced[40810:29306627] ViewController3 viewDidAppear
2018-03-13 10:05:16.664219+0800 unbalanced[40810:29306627] ViewController2 viewDidDisappear
2018-03-13 10:05:24.269678+0800 unbalanced[40810:29306627] ViewController3 viewWillDisappear
2018-03-13 10:05:24.269860+0800 unbalanced[40810:29306627] ViewController2 viewWillAppear
2018-03-13 10:05:24.771780+0800 unbalanced[40810:29306627] ViewController2 viewDidAppear
2018-03-13 10:05:24.772053+0800 unbalanced[40810:29306627] ViewController3 viewDidDisappear
2018-03-13 10:05:32.840803+0800 unbalanced[40810:29306627] ViewController2 viewWillDisappear
2018-03-13 10:05:33.342605+0800 unbalanced[40810:29306627] Unbalanced calls to begin/end appearance transitions for <ViewController1: 0x7f9c5970afc0>.
2018-03-13 10:05:33.342811+0800 unbalanced[40810:29306627] ViewController1 viewDidAppear
2018-03-13 10:05:33.342927+0800 unbalanced[40810:29306627] ViewController2 viewDidDisappear
```
