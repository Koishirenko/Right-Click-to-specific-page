# Right Click to specific page

浏览器插件+AHK脚本，代码不涉及游戏窗口操作，AHK脚本只负责把右键改成Alt+1，基本等于改键。浏览器插件功能只包括在你按下Alt+1时跳转到特定页面，默认星本。
按QWERTY上方的数字键5，退出AHK脚本。如果你没有键盘，那么双击AHK脚本，左上角点File，选最后一个Exit

## 如何使用

1. 点击上方绿色按钮<>Code，点Download ZIP
2. 解压
3. 打开谷歌浏览器→设置→拓展程序→加载已解压的拓展程序→选择plugin文件夹
4. 双击打开【右键转ALT+1.ahk】，你需要安装了AutoHotKey才能使用ahk脚本
5. 现在你按右键将不会输出【右键】，而是输出【Alt+1】，而Alt+1会触发浏览器插件让你跳转到特定页面，默认是星本，请先打开mypage再使用
6. 按QWERTY上方的数字键5，可以直接退出脚本，如果你没有键盘，那么双击AHK脚本，左上角点File，选最后一个Exit

## 如何修改
要修改浏览器插件的跳转页面，请笔记本打开【background.js】，内有中文注释

要修改浏览器插件的快捷键，请笔记本打开【manifest.json】，在
```
"default": "Alt+1"
```
这一行代码，改键，应该是不能改单键的，得是组合键，要改单键请配合AHK脚本使用。

如果想绑多几个快捷键，最简单的方法，复制多几个plugin文件夹，修改对应的【background.js】和【manifest.json】，记得在【manifest.json】上方的
```
"name": "Bookmark Navigator"
```
把名字换一下。然后导入多几个拓展程序。

## 这是一个AHK脚本语法事例，方便不会AHK脚本语法的参考，以自行编辑
```
#NoEnv
#SingleInstance Force
SetBatchLines, -1
SetKeyDelay, 50

$1::
Send, {Alt Down}{1}{Alt Up}
return

$5::ExitApp
```
上述脚本会在你按下QWERTY上方的数字键1时，输出【Alt+1】，按数字键5时，退出脚本。
