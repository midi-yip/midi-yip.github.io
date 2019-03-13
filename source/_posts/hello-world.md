---
title: 世界，你好！
date: 2019-03-05 22:23:38
tags: 
- hexo
- github
---
## 菜鸟的记录
## 注意层跟空格
``` bash
因为一个层结构导致一直
You should configure deployment settings in _config.yml first!
无语无语！！
```
1.
``` bash
如果系统中有一些配置文件在服务器上做了配置修改,然后后续开发又新添加一些配置项的时候,
在发布这个配置文件的时候,会发生代码冲突:

error: Your local changes to the following files would be overwritten by merge:
        protected/config/main.php
Please, commit your changes or stash them before you can merge.
如果希望保留生产服务器上所做的改动,仅仅并入新配置项, 处理方法如下:
git stash 会把所有未提交的修改（包括暂存的和非暂存的）都保存起来，
用于后续恢复当前工作目录。
https://www.cnblogs.com/tocy/p/git-stash-reference.html
比如下面的中间状态，通过git stash命令推送一个新的储藏，当前的工作目录就干净了。
需要说明一点，stash是本地的，不会通过git push命令上传到git server上。
实际应用中推荐给每个stash加一个message，用于记录版本，使用git stash save取代git stash命令。
git pull 命令的作用是：取回远程主机某个分支的更新，再与本地的指定分支合并
git stash pop 可以通过git stash pop命令恢复之前缓存的工作目录，这个指令将缓存堆栈中的第一个stash删除，
并将对应修改应用到当前的工作目录下。
```
2.放弃本地修改,直接覆盖之
``` bash
git reset --hard
git pull

```
## 本地与远程关联
``` bash
最近使用git pull的时候多次碰见下面的情况：

There is no tracking information for the current branch.
Please specify which branch you want to merge with.
See git-pull(1) for details.

git pull <remote> <branch>

If you wish to set tracking information for this branch you can do so with:

git branch --set-upstream-to=origin/<branch> release

其实，输出的提示信息说的还是比较明白的。

使用git在本地新建一个分支后，需要做远程分支关联。如果没有关联，git会在下面的操作中提示你显示的添加关联。

关联目的是在执行git pull, git push操作时就不需要指定对应的远程分支，你只要没有显示指定，git pull的时候，就会提示你。

解决方法就是按照提示添加一下呗：

git branch --set-upstream-to=origin/remote_branch  your_branch

其中，origin/remote_branch是你本地分支对应的远程分支；your_branch是你当前的本地分支。
```

## 域名绑定

``` bash
$ 后台绑定域名后每次hexo d 都会解绑域名，直接在source文件里面添加CNAME文件后生成上传。
```
## 推送
``` bash
  推送代码分支时出现：fatal: 'origin' does not appear to be a git repository
  输入$ git remote add origin git@github.com:djqiang（github帐号名）/gitdemo（项目名）.git 

  如果输入$ git remote add origin git@github.com:djqiang（github帐号名）/gitdemo（项目名）.git 

    提示出错信息：fatal: remote origin already exists.
    解决办法如下：
    输入$ git remote rm origin 再执行
```

### 上传文件到分支问题
``` bash
在用主题是不是传不上到分支呢？
执行 git add .      与   git  commit -m " "
再执行 git push origin dev（分支）
还是上不去。
网上搜索在另一个博客上看到的方法：
将themes目录以内中的主题的.git目录删除（如果有），因为一个git仓库中不能包含另一个git仓库，提交主题文件夹会失败。
可能有人会问，删除了themes目录中的.git不就不能git pull更新主题了吗？
很简单，需要更新主题时在另一个地方git clone下来该主题的最新版本，然后将内容拷到当前主题目录即可
```
### 提交到分支
``` bash
后执行git add .、git commit -m 'back up hexo files'（引号内容可改）、git push

其中遇到的说是分库过多！

fatal: The current branch dev has no upstream branch.
To push the current branch and set the remote as upstream, use

    git push --set-upstream origin dev


***移走了themes中的.git，但还是上传不上去，源码中的修改的*MD文件倒是更新了。***
```

## 在其它电脑更新博客
``` bash
将新电脑的生成的ssh key添加到GitHub账户上
在新电脑上克隆username.github.io仓库的xxx分支到本地，此时本地git仓库处于xxx分支
切换到username.github.io目录，执行npm install(由于仓库有一个.gitignore文件，里面默认是忽略掉  node_modules文件夹的，
也就是说仓库的hexo分支并没有存储该目录[也不需要]，所以需要install下)

编辑、撰写文章或其他博客更新改动
依次执行git add .、git commit -m 'back up hexo files'（引号内容可改）、git push指令，保证xxx分支版本最新
执行hexo d -g指令（在此之前，有时可能需要执行hexo clean），完成后就会发现，最新改动已经更新到master分支了，两个分支互不干扰！
** 注意： 每次换电脑进行博客更新时，不管上次在其他电脑有没有更新，最好先git pull**
```
