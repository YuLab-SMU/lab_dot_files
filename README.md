# 实验室共用 dot files

所谓dot files，是指一些以`.`开始的文件名，这些在`Linux`下是隐藏文件，通常用于配置软件，比如`~/.bashrc`。

大家用同一台机器，共享一些dot files是有好处的。

## 场景一

`.Renviron`中：

```
R_LIBS_USER='/opt/R/library'
```

指定了大家都使用了`/opt/R/library`为R包的安装目录，这样子就不用大家都在自己的用户目录上有一份R包，有且只有一份拷贝，是大家公共的，每个人安装都会装到指定的这个目录里。


## 场景二

有小伙伴在`/opt`里扔了一个二进制的软件，要把`/opt/softwareA/bin`加到`$PATH`中，你可以在生成一个文件，`.user_path`, 里面比如加入：

```
export PATH=/opt/softwareA/bin:$PATH
```

## 使用

首先把这个`lab_dot_files`克隆到自己的用户目录下：

```
git clone git@github.com:YuLab-SMU/lab_dot_files.git
```

对于场景一，你要直接使用这个文件，那么创建一个软链接：

```
ln -s ~/lab_dot_files/.Renviron ~/.Renviron
```

对于场景二，在自己的`~/.bashrc`中加入：

```
source ~/lab_dot_files/.user_path
```


只需要做一次，以后就不用再做了，当`lab_dot_files`有更改的时候，你只要`git pull`更新就行。

像场景二这种，比如小伙伴A放了一个软件在`/opt`下，然后在`.user_path`里设置了，小伙伴B又`git pull`了更新，那么这个软件在A和B的系统路径里都是可见的。某一天小伙伴B也要用这个软件，他并不清楚是否有安装，打了部分名字，按一个tab，发现自动补齐了，有安装，那么就可以直接用了。

PS: 也可以用`which`或`where`找一个软件有没有安装。

## 维护

这个repo，需要大家一起来维护，适合大家公用的设置，可以push上来。

