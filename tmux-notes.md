## tmux-notes

### 安装

```shell
brew install tmux
```

配置文件 `~/.tmux.conf`

### 配置

```shell
# 修改前缀键(ctrl + s), 修改 ~/.tmux.conf
set -g prefix C-s
# 切换pane(上一个)
C+s ;
# 切换pane(下一个)
C+s o
# 根据编号切换，使用以下命令，屏幕显示编号（从0开始），在编号消失前，输入编号，直接切换
C+s q
```
