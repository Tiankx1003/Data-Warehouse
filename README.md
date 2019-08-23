# Data-Warehouse
* 一个应用了Hadoop生态体系阶段相关技术的大数据离线计算案例。

## 目录介绍
| Directory                | Description                                |
| :----------------------- | :----------------------------------------- |
| ~~**Hello**~~            | 用于测试分支  **已过期*                    |
| **logcollector**         | 用于生成数据的Maven工程                    |
| **Configuration**        | 配置文件                                   |
| **Configuration/Flume**  | Flume任务的`*.conf`配置文件                |
| **Configuration/Hadoop** | `$HADOOP_HOME/etc/hadoop/`目录下的配置文件 |
| **gmv-job**              | gmv任务<!-- 添加描述 -->                   |
| **Markdown**             | 数据仓库各个阶段的的技术文档               |
| **ShellScript**          | 服务器端的自定义脚本文件，主要用于启停进程 |
| **flumeinterceptor**     | Flume自定义拦截器                          |

## 完成进度

#### ▼ 用户行为数据采集阶段

>**架构设计**<br>~~项目需求分析~~<br>~~系统流程设计~~<br>~~技术选型~~<br>~~服务器选型~~<br>~~集群规划~~<br>

>**数据生成脚本**<br>~~事件日志bean~~<br>~~启动日志bean~~<br>~~主程序~~<br>

>**环境搭建**<br>~~JDK配置~~<br>~~Hadoop集群搭建~~<br>HDFS存储多目录<br>~~支持LZO压缩配置~~<br>基准测试<br>Hadoop参数优化<br>~~Zookeeper配置~~<br>~~`~/.bashrc`配置~~<br>~~Flume配置~~<br>~~生成日志~~<br>~~Kafka配置~~<br>~~采集日志Flume~~<br>~~Flume消费Kafka配置~~<br>~~采集通道启停~~<br>

#### ▼ 用户行为数据仓库

>**数仓分层**<br>Hive配置Tez引擎<br>ODS<br>DWD<br>

<p align="right"><i>▲2019-8-23 11:21:35</i></p>

