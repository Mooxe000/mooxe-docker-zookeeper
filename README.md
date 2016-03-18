# mooxe-docker-zookeeper

docker image for zookeeper of mooxe

## How To Test Zookeeper Cluster

- zkCli.sh -server ${ip}:${port}
- telnet ${ip}:${port}
  * stat

## 常用命令

* 启动ZK服务

  ```sh bin/zkServer.sh start```

* 查看ZK服务状态

  ```sh bin/zkServer.sh status```

* 停止ZK服务

  ```sh bin/zkServer.sh stop```
* 重启ZK服务

  ```sh bin/zkServer.sh restart```

----

* 显示根目录下、文件

  ```ls / 使用 ls 命令来查看当前 ZooKeeper 中所包含的内容```

* 显示根目录下、文件

  ```ls2 / 查看当前节点数据并能看到更新次数等数据```

* 创建文件，并设置初始内容

  ```create /zk "test" 创建一个新的 znode节点“ zk ”以及与它关联的字符串```

* 获取文件内容

  ```get /zk 确认 znode 是否包含我们所创建的字符串```

* 修改文件内容

  ```set /zk "zkbak" 对 zk 所关联的字符串进行设置```

* 删除文件

  ```delete /zk 将刚才创建的 znode 删除```

* 退出客户端

  ```quit```

* 帮助命令

  ```help```

----

* 查看哪个节点被选择作为follower或者leader

  ```echo stat | nc 127.0.0.1 2181```

* 测试是否启动了该Server，若回复imok表示已经启动

  ```echo ruok | nc 127.0.0.1 2181```

* 列出未经处理的会话和临时节点

  ```echo dump | nc 127.0.0.1 2181```

* 关掉server

  ```echo kill | nc 127.0.0.1 2181```

* 输出相关服务配置的详细信息

  ```echo conf | nc 127.0.0.1 2181```

* 列出所有连接到服务器的客户端的完全的连接 / 会话的详细信息

  ```echo cons | nc 127.0.0.1 2181```

* 输出关于服务环境的详细信息（区别于 conf 命令）

  ```echo envi | nc 127.0.0.1 2181```

* 列出未经处理的请求

  ```echo reqs | nc 127.0.0.1 2181```

* 列出服务器 watch 的详细信息

  ```echo wchs | nc 127.0.0.1 2181```

* 通过 session 列出服务器 watch 的详细信息，它的输出是一个与 相关的会话的列表

  ```echo wchc | nc 127.0.0.1 2181```

* 通过路径列出服务器 watch 的详细信息。它输出一个与 session 相关的路径

  ```echo wchp | nc 127.0.0.1 2181```
