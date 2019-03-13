[1mdiff --git a/source/_posts/hello-word.md b/source/_posts/hello-word.md[m
[1mindex a114b6b..d1e659b 100644[m
[1m--- a/source/_posts/hello-word.md[m
[1m+++ b/source/_posts/hello-word.md[m
[36m@@ -5,6 +5,7 @@[m [mtags:[m
 - hexo[m
 - github[m
 ---[m
[32m+[m[32m## 菜鸟的记录[m
 ## 注意层跟空格[m
 ``` bash[m
 因为一个层结构导致一直[m
[36m@@ -17,22 +18,43 @@[m [mYou should configure deployment settings in _config.yml first![m
 ``` bash[m
 $ 后台绑定域名后每次hexo d 都会解绑域名，直接在source文件里面添加CNAME文件后生成上传。[m
 ```[m
[31m-## 上传分支问题[m
[32m+[m[32m## 推送[m
[32m+[m[32m``` bash[m
[32m+[m[32m  推送代码分支时出现：fatal: 'origin' does not appear to be a git repository[m
[32m+[m[32m  输入$ git remote add origin git@github.com:djqiang（github帐号名）/gitdemo（项目名）.git [m
[32m+[m
[32m+[m[32m  如果输入$ git remote add origin git@github.com:djqiang（github帐号名）/gitdemo（项目名）.git [m
 [m
[32m+[m[32m    提示出错信息：fatal: remote origin already exists.[m
[32m+[m[32m    解决办法如下：[m
[32m+[m[32m    输入$ git remote rm origin 再执行[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32m### 上传文件到分支问题[m
 ``` bash[m
 在用主题是不是传不上到分支呢？[m
 执行 git add .      与   git  commit -m " "[m
 再执行 git push origin dev（分支）[m
 还是上不去。[m
[31m-在另一个博客上看到的方法：[m
[32m+[m[32m网上搜索在另一个博客上看到的方法：[m
 将themes目录以内中的主题的.git目录删除（如果有），因为一个git仓库中不能包含另一个git仓库，提交主题文件夹会失败。[m
 可能有人会问，删除了themes目录中的.git不就不能git pull更新主题了吗？[m
 很简单，需要更新主题时在另一个地方git clone下来该主题的最新版本，然后将内容拷到当前主题目录即可[m
 ### 提交到分支[m
 后执行git add .、git commit -m 'back up hexo files'（引号内容可改）、git push[m
[32m+[m
[32m+[m[32m其中遇到的说是分库过多！[m
[32m+[m
[32m+[m[32mfatal: The current branch dev has no upstream branch.[m
[32m+[m[32mTo push the current branch and set the remote as upstream, use[m
[32m+[m
[32m+[m[32m    git push --set-upstream origin dev[m
[32m+[m
[32m+[m
[32m+[m[32m***移走了themes中的.git，但还是上传不上去，源码中的修改的*MD文件倒是更新了。***[m
 ```[m
 [m
[31m-### 在新电脑更新博客[m
[32m+[m[32m## 在其它电脑更新博客[m
 ``` bash[m
 将新电脑的生成的ssh key添加到GitHub账户上[m
 在新电脑上克隆username.github.io仓库的xxx分支到本地，此时本地git仓库处于xxx分支[m
[1mdiff --git a/themes/next b/themes/next[m
[1m--- a/themes/next[m
[1m+++ b/themes/next[m
[36m@@ -1 +1 @@[m
[31m-Subproject commit 395bcfc123fb239d711d778e1a3f4c84360c5a18[m
[32m+[m[32mSubproject commit 395bcfc123fb239d711d778e1a3f4c84360c5a18-dirty[m
