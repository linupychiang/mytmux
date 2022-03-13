## tmux-notes

### 安装

```shell
brew install tmux
```

配置文件 `~/.tmux.conf`

> *注意：* 为便于编辑，使用 `SS` 表示前缀键 `C + s`

### 配置

```shell
# 修改前缀键(ctrl + s), 修改 ~/.tmux.conf
set -g prefix C-s
# 切换panel(上一个)
SS ;
# 切换panel(下一个)
SS o
# 根据编号切换，使用以下命令，屏幕显示编号（从0开始），在编号消失前，输入编号，直接切换
SS q
```

### 概念

### session

### windows

### panel

```shell
# 切换 panel
SS 上下左右
# 调整panel大小
SS alt+左右 （调整垂直panel大小）
SS alt+上下 （调整水平panel大小）
# panel翻页
SS [  切换到复制模式 
ctrl + b 往前,  ctrl + f 往后
ctrl + p 往上,  ctrl + n 往下
```
