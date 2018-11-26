#### Git更新远程分支列表

```sh
git remote update origin --prune
```

这里要注意下，如果你的remote branch不是在origin下，按你得把origin换成你的名字

#### 强制覆盖本地代码（与git远程仓库保持一致）

git强制覆盖：

```sh
git fetch --all
git reset --hard origin/master
git pull
```

git强制覆盖本地命令（单条执行）：

```sh
git fetch --all && git reset --hard origin/master && git pull
```

