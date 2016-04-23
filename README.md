[TOC]

# 常用命令

### 移动

```vim
gg 		第一行
G  		最后一行
[row]G  跳到[row]

w 上一个单词的首字母
b 下一个单词的首字母
0 移动到行首
```



### 选择

```vim
v 选择
ctrl + v 列选择
```



### 插入与修改

```vim
i 当前字符前插入
I 行首插入

a 当前字符后插入
A 行尾插入

o 当前行下一行插入
O 当前行上一行插入
```

```vim
r 更改当前字符
R 更改多个字符

cc 更改整行
```



### 删除

```vim
x 删除当前字符
dw 删除单词
dd 删除一行
```



### 复制、粘贴

```vim
yw 拷贝单词
yy 拷贝一行

p 粘贴
```



### 撤销

```vim
u 撤销 (ctrl + z)
ctrl + r 重做 (ctrl + shift + z)
```



# Plugins

## NERDTree

切换窗口

```vim
ctrl + w + h 切换到左侧

ctrl + w + l 切换到右侧

ctrl + w + j 切换到上侧

ctrl + w + r / l 切换目录位置
```

打开文件

```vim
o  打开，光标跳转

i  下方，打开，光标跳转

s  右方，打开，光标跳转
```

目录操作

```vim
O 打开该 node
O 打开 node 的所有 subnodes

x 关闭该 node
X 关闭该目录下所有展开的结点，但不关闭自身
```

跳转窗口

```vim
k 上一个
j 下一个

K 同级第一个
J 同级最后一个
```



## NERDCommenter

```vim
<leader>cc 注释
<leader>cu 取消注释
<leader>c<space> 注释
<leader>cy 注释

r 刷新当前目录
R 刷新根目录
```



## CtrlP

```vim
c-p 打开搜索
c-v 水平打开
c-x 垂直打开
```



## Tabular

```vim
:Tab /=
```



## Rename

```vim
rename {new name}
```

