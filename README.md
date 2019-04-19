# quick-ssh
提前配置好机器名称或者host,以及对应机器的用户和密码，快速的进行ssh登录 
### 一、 下载
直接git clone 到home目录下
### 二、 配置

#### 修改user.conf文件
    user         server    pwd          host

    jijijiji     dev       xxxxxxxx     xx.xx.xx.xx

    binbinbin    txy       xxxxxxxx     xx.xx.xx.xx
### 三、 设置为全局命令

```
ln -s $QS_PATH  /usr/local/bin/qs
```

