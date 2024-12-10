0: jdbc:hive2://ip-172-31-1-36.eu-west-2.comp> CREATE EXTERNAL TABLE  hitesh_itc.employees (
. . . . . . . . . . . . . . . . . . . . . . .>   id INT,
. . . . . . . . . . . . . . . . . . . . . . .>   name STRING,
. . . . . . . . . . . . . . . . . . . . . . .>   category STRING,
. . . . . . . . . . . . . . . . . . . . . . .>   amout DOUBLE
. . . . . . . . . . . . . . . . . . . . . . .> )
. . . . . . . . . . . . . . . . . . . . . . .> ROW FORMAT DELIMITED
. . . . . . . . . . . . . . . . . . . . . . .> FIELDS TERMINATED BY ','
. . . . . . . . . . . . . . . . . . . . . . .> LINES TERMINATED BY '\n'
. . . . . . . . . . . . . . . . . . . . . . .> STORED AS TEXTFILE
. . . . . . . . . . . . . . . . . . . . . . .> LOCATION '/tmp/bigdata_nov_2024/hitesh/hive/data.csv';
INFO  : Compiling command(queryId=hive_20241210123445_25b6cebb-9b4a-496b-8865-44b54ee90d24): CREATE EXTERNAL TABLE  hitesh_itc.employees (
id INT,
name STRING,
category STRING,
amout DOUBLE
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE
LOCATION '/tmp/bigdata_nov_2024/hitesh/hive/data.csv'
INFO  : Semantic Analysis Completed (retrial = false)
INFO  : Created Hive schema: Schema(fieldSchemas:null, properties:null)
INFO  : Completed compiling command(queryId=hive_20241210123445_25b6cebb-9b4a-496b-8865-44b54ee90d24); Time taken: 0.037 seconds
INFO  : Executing command(queryId=hive_20241210123445_25b6cebb-9b4a-496b-8865-44b54ee90d24): CREATE EXTERNAL TABLE  hitesh_itc.employees (
id INT,
name STRING,
category STRING,
amout DOUBLE
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE
LOCATION '/tmp/bigdata_nov_2024/hitesh/hive/data.csv'
INFO  : Starting task [Stage-0:DDL] in serial mode
ERROR : Failed
org.apache.hadoop.hive.ql.metadata.HiveException: MetaException(message:Got exception: org.apache.hadoop.fs.FileAlreadyExistsException Path is not a directory: /tmp/bigdata_nov_2024/hitesh/hive/data.csv
        at org.apache.hadoop.hdfs.server.namenode.FSDirMkdirOp.mkdirs(FSDirMkdirOp.java:55)
        at org.apache.hadoop.hdfs.server.namenode.FSNamesystem.mkdirs(FSNamesystem.java:3290)
        at org.apache.hadoop.hdfs.server.namenode.NameNodeRpcServer.mkdirs(NameNodeRpcServer.java:1125)
        at org.apache.hadoop.hdfs.protocolPB.ClientNamenodeProtocolServerSideTranslatorPB.mkdirs(ClientNamenodeProtocolServerSideTranslatorPB.java:735)
        at org.apache.hadoop.hdfs.protocol.proto.ClientNamenodeProtocolProtos$ClientNamenodeProtocol$2.callBlockingMethod(ClientNamenodeProtocolProtos.java)
        at org.apache.hadoop.ipc.ProtobufRpcEngine$Server$ProtoBufRpcInvoker.call(ProtobufRpcEngine.java:533)
        at org.apache.hadoop.ipc.RPC$Server.call(RPC.java:1070)
        at org.apache.hadoop.ipc.Server$RpcCall.run(Server.java:989)
        at org.apache.hadoop.ipc.Server$RpcCall.run(Server.java:917)
        at java.security.AccessController.doPrivileged(Native Method)
        at javax.security.auth.Subject.doAs(Subject.java:422)
        at org.apache.hadoop.security.UserGroupInformation.doAs(UserGroupInformation.java:1898)
        at org.apache.hadoop.ipc.Server$Handler.run(Server.java:2894)
)
        at org.apache.hadoop.hive.ql.metadata.Hive.createTable(Hive.java:1143) ~[hive-exec-3.1.3000.7.1.7.0-551.jar:3.1.3000.7.1.7.0-551]
        at org.apache.hadoop.hive.ql.metadata.Hive.createTable(Hive.java:1148) ~[hive-exec-3.1.3000.7.1.7.0-551.jar:3.1.3000.7.1.7.0-551]
        at org.apache.hadoop.hive.ql.ddl.table.create.CreateTableOperation.createTableNonReplaceMode(CreateTableOperation.java:140) ~[hive-exec-3.1.3000.7.1.7.0-551.jar:3.1.3000.7.1.7.0-551]
        at org.apache.hadoop.hive.ql.ddl.table.create.CreateTableOperation.execute(CreateTableOperation.java:98) ~[hive-exec-3.1.3000.7.1.7.0-551.jar:3.1.3000.7.1.7.0-551]
        at org.apache.hadoop.hive.ql.ddl.DDLTask.execute(DDLTask.java:82) [hive-exec-3.1.3000.7.1.7.0-551.jar:3.1.3000.7.1.7.0-551]
        at org.apache.hadoop.hive.ql.exec.Task.executeTask(Task.java:213) [hive-exec-3.1.3000.7.1.7.0-551.jar:3.1.3000.7.1.7.0-551]
        at org.apache.hadoop.hive.ql.exec.TaskRunner.runSequential(TaskRunner.java:105) [hive-exec-3.1.3000.7.1.7.0-551.jar:3.1.3000.7.1.7.0-551]
        at org.apache.hadoop.hive.ql.Executor.launchTask(Executor.java:357) [hive-exec-3.1.3000.7.1.7.0-551.jar:3.1.3000.7.1.7.0-551]
        at org.apache.hadoop.hive.ql.Executor.launchTasks(Executor.java:330) [hive-exec-3.1.3000.7.1.7.0-551.jar:3.1.3000.7.1.7.0-551]
        at org.apache.hadoop.hive.ql.Executor.runTasks(Executor.java:246) [hive-exec-3.1.3000.7.1.7.0-551.jar:3.1.3000.7.1.7.0-551]
        at org.apache.hadoop.hive.ql.Executor.execute(Executor.java:109) [hive-exec-3.1.3000.7.1.7.0-551.jar:3.1.3000.7.1.7.0-551]
        at org.apache.hadoop.hive.ql.Driver.runInternal(Driver.java:742) [hive-exec-3.1.3000.7.1.7.0-551.jar:3.1.3000.7.1.7.0-551]
        at org.apache.hadoop.hive.ql.Driver.run(Driver.java:497) [hive-exec-3.1.3000.7.1.7.0-551.jar:3.1.3000.7.1.7.0-551]
        at org.apache.hadoop.hive.ql.Driver.run(Driver.java:491) [hive-exec-3.1.3000.7.1.7.0-551.jar:3.1.3000.7.1.7.0-551]
        at org.apache.hadoop.hive.ql.reexec.ReExecDriver.run(ReExecDriver.java:166) [hive-exec-3.1.3000.7.1.7.0-551.jar:3.1.3000.7.1.7.0-551]
        at org.apache.hive.service.cli.operation.SQLOperation.runQuery(SQLOperation.java:225) [hive-service-3.1.3000.7.1.7.0-551.jar:3.1.3000.7.1.7.0-551]
        at org.apache.hive.service.cli.operation.SQLOperation.access$700(SQLOperation.java:87) [hive-service-3.1.3000.7.1.7.0-551.jar:3.1.3000.7.1.7.0-551]
        at org.apache.hive.service.cli.operation.SQLOperation$BackgroundWork$1.run(SQLOperation.java:322) [hive-service-3.1.3000.7.1.7.0-551.jar:3.1.3000.7.1.7.0-551]
        at java.security.AccessController.doPrivileged(Native Method) ~[?:1.8.0_232]
        at javax.security.auth.Subject.doAs(Subject.java:422) [?:1.8.0_232]
        at org.apache.hadoop.security.UserGroupInformation.doAs(UserGroupInformation.java:1898) [hadoop-common-3.1.1.7.1.7.0-551.jar:?]
        at org.apache.hive.service.cli.operation.SQLOperation$BackgroundWork.run(SQLOperation.java:340) [hive-service-3.1.3000.7.1.7.0-551.jar:3.1.3000.7.1.7.0-551]
        at java.util.concurrent.Executors$RunnableAdapter.call(Executors.java:511) [?:1.8.0_232]
        at java.util.concurrent.FutureTask.run(FutureTask.java:266) [?:1.8.0_232]
        at java.util.concurrent.Executors$RunnableAdapter.call(Executors.java:511) [?:1.8.0_232]
        at java.util.concurrent.FutureTask.run(FutureTask.java:266) [?:1.8.0_232]
        at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1149) [?:1.8.0_232]
        at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:624) [?:1.8.0_232]
        at java.lang.Thread.run(Thread.java:748) [?:1.8.0_232]
Caused by: org.apache.hadoop.hive.metastore.api.MetaException: Got exception: org.apache.hadoop.fs.FileAlreadyExistsException Path is not a directory: /tmp/bigdata_nov_2024/hitesh/hive/data.csv
        at org.apache.hadoop.hdfs.server.namenode.FSDirMkdirOp.mkdirs(FSDirMkdirOp.java:55)
        at org.apache.hadoop.hdfs.server.namenode.FSNamesystem.mkdirs(FSNamesystem.java:3290)
        at org.apache.hadoop.hdfs.server.namenode.NameNodeRpcServer.mkdirs(NameNodeRpcServer.java:1125)
        at org.apache.hadoop.hdfs.protocolPB.ClientNamenodeProtocolServerSideTranslatorPB.mkdirs(ClientNamenodeProtocolServerSideTranslatorPB.java:735)
        at org.apache.hadoop.hdfs.protocol.proto.ClientNamenodeProtocolProtos$ClientNamenodeProtocol$2.callBlockingMethod(ClientNamenodeProtocolProtos.java)
        at org.apache.hadoop.ipc.ProtobufRpcEngine$Server$ProtoBufRpcInvoker.call(ProtobufRpcEngine.java:533)
        at org.apache.hadoop.ipc.RPC$Server.call(RPC.java:1070)
        at org.apache.hadoop.ipc.Server$RpcCall.run(Server.java:989)
        at org.apache.hadoop.ipc.Server$RpcCall.run(Server.java:917)
        at java.security.AccessController.doPrivileged(Native Method)
        at javax.security.auth.Subject.doAs(Subject.java:422)
        at org.apache.hadoop.security.UserGroupInformation.doAs(UserGroupInformation.java:1898)
        at org.apache.hadoop.ipc.Server$Handler.run(Server.java:2894)

        at org.apache.hadoop.hive.metastore.api.ThriftHiveMetastore$create_table_req_result$create_table_req_resultStandardScheme.read(ThriftHiveMetastore.java:63743) ~[hive-exec-3.1.3000.7.1.7.0-551.jar:3.1.3000.7.1.7.0-551]
        at org.apache.hadoop.hive.metastore.api.ThriftHiveMetastore$create_table_req_result$create_table_req_resultStandardScheme.read(ThriftHiveMetastore.java:63711) ~[hive-exec-3.1.3000.7.1.7.0-551.jar:3.1.3000.7.1.7.0-551]
        at org.apache.hadoop.hive.metastore.api.ThriftHiveMetastore$create_table_req_result.read(ThriftHiveMetastore.java:63637) ~[hive-exec-3.1.3000.7.1.7.0-551.jar:3.1.3000.7.1.7.0-551]
        at org.apache.thrift.TServiceClient.receiveBase(TServiceClient.java:86) ~[hive-exec-3.1.3000.7.1.7.0-551.jar:3.1.3000.7.1.7.0-551]
        at org.apache.hadoop.hive.metastore.api.ThriftHiveMetastore$Client.recv_create_table_req(ThriftHiveMetastore.java:1792) ~[hive-exec-3.1.3000.7.1.7.0-551.jar:3.1.3000.7.1.7.0-551]
        at org.apache.hadoop.hive.metastore.api.ThriftHiveMetastore$Client.create_table_req(ThriftHiveMetastore.java:1779) ~[hive-exec-3.1.3000.7.1.7.0-551.jar:3.1.3000.7.1.7.0-551]
        at org.apache.hadoop.hive.metastore.HiveMetaStoreClient.create_table_with_environment_context(HiveMetaStoreClient.java:3585) ~[hive-exec-3.1.3000.7.1.7.0-551.jar:3.1.3000.7.1.7.0-551]
        at org.apache.hadoop.hive.ql.metadata.SessionHiveMetaStoreClient.create_table_with_environment_context(SessionHiveMetaStoreClient.java:145) ~[hive-exec-3.1.3000.7.1.7.0-551.jar:3.1.3000.7.1.7.0-551]
        at org.apache.hadoop.hive.metastore.HiveMetaStoreClient.createTable(HiveMetaStoreClient.java:1061) ~[hive-exec-3.1.3000.7.1.7.0-551.jar:3.1.3000.7.1.7.0-551]
        at org.apache.hadoop.hive.metastore.HiveMetaStoreClient.createTable(HiveMetaStoreClient.java:1046) ~[hive-exec-3.1.3000.7.1.7.0-551.jar:3.1.3000.7.1.7.0-551]
        at sun.reflect.GeneratedMethodAccessor93.invoke(Unknown Source) ~[?:?]
        at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43) ~[?:1.8.0_232]
        at java.lang.reflect.Method.invoke(Method.java:498) ~[?:1.8.0_232]
        at org.apache.hadoop.hive.metastore.RetryingMetaStoreClient.invoke(RetryingMetaStoreClient.java:213) ~[hive-exec-3.1.3000.7.1.7.0-551.jar:3.1.3000.7.1.7.0-551]
        at com.sun.proxy.$Proxy35.createTable(Unknown Source) ~[?:?]
        at sun.reflect.GeneratedMethodAccessor93.invoke(Unknown Source) ~[?:?]
        at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43) ~[?:1.8.0_232]
        at java.lang.reflect.Method.invoke(Method.java:498) ~[?:1.8.0_232]
        at org.apache.hadoop.hive.metastore.HiveMetaStoreClient$SynchronizedHandler.invoke(HiveMetaStoreClient.java:3478) ~[hive-exec-3.1.3000.7.1.7.0-551.jar:3.1.3000.7.1.7.0-551]
        at com.sun.proxy.$Proxy35.createTable(Unknown Source) ~[?:?]
        at org.apache.hadoop.hive.ql.metadata.Hive.createTable(Hive.java:1132) ~[hive-exec-3.1.3000.7.1.7.0-551.jar:3.1.3000.7.1.7.0-551]
        ... 28 more
ERROR : DDLTask failed, DDL Operation: class org.apache.hadoop.hive.ql.ddl.table.create.CreateTableOperation
org.apache.hadoop.hive.ql.metadata.HiveException: MetaException(message:Got exception: org.apache.hadoop.fs.FileAlreadyExistsException Path is not a directory: /tmp/bigdata_nov_2024/hitesh/hive/data.csv
        at org.apache.hadoop.hdfs.server.namenode.FSDirMkdirOp.mkdirs(FSDirMkdirOp.java:55)
        at org.apache.hadoop.hdfs.server.namenode.FSNamesystem.mkdirs(FSNamesystem.java:3290)
        at org.apache.hadoop.hdfs.server.namenode.NameNodeRpcServer.mkdirs(NameNodeRpcServer.java:1125)
        at org.apache.hadoop.hdfs.protocolPB.ClientNamenodeProtocolServerSideTranslatorPB.mkdirs(ClientNamenodeProtocolServerSideTranslatorPB.java:735)
        at org.apache.hadoop.hdfs.protocol.proto.ClientNamenodeProtocolProtos$ClientNamenodeProtocol$2.callBlockingMethod(ClientNamenodeProtocolProtos.java)
        at org.apache.hadoop.ipc.ProtobufRpcEngine$Server$ProtoBufRpcInvoker.call(ProtobufRpcEngine.java:533)
        at org.apache.hadoop.ipc.RPC$Server.call(RPC.java:1070)
        at org.apache.hadoop.ipc.Server$RpcCall.run(Server.java:989)
        at org.apache.hadoop.ipc.Server$RpcCall.run(Server.java:917)
        at java.security.AccessController.doPrivileged(Native Method)
        at javax.security.auth.Subject.doAs(Subject.java:422)
        at org.apache.hadoop.security.UserGroupInformation.doAs(UserGroupInformation.java:1898)
        at org.apache.hadoop.ipc.Server$Handler.run(Server.java:2894)
)
        at org.apache.hadoop.hive.ql.metadata.Hive.createTable(Hive.java:1143) ~[hive-exec-3.1.3000.7.1.7.0-551.jar:3.1.3000.7.1.7.0-551]
        at org.apache.hadoop.hive.ql.metadata.Hive.createTable(Hive.java:1148) ~[hive-exec-3.1.3000.7.1.7.0-551.jar:3.1.3000.7.1.7.0-551]
        at org.apache.hadoop.hive.ql.ddl.table.create.CreateTableOperation.createTableNonReplaceMode(CreateTableOperation.java:140) ~[hive-exec-3.1.3000.7.1.7.0-551.jar:3.1.3000.7.1.7.0-551]
        at org.apache.hadoop.hive.ql.ddl.table.create.CreateTableOperation.execute(CreateTableOperation.java:98) ~[hive-exec-3.1.3000.7.1.7.0-551.jar:3.1.3000.7.1.7.0-551]
        at org.apache.hadoop.hive.ql.ddl.DDLTask.execute(DDLTask.java:82) [hive-exec-3.1.3000.7.1.7.0-551.jar:3.1.3000.7.1.7.0-551]
        at org.apache.hadoop.hive.ql.exec.Task.executeTask(Task.java:213) [hive-exec-3.1.3000.7.1.7.0-551.jar:3.1.3000.7.1.7.0-551]
        at org.apache.hadoop.hive.ql.exec.TaskRunner.runSequential(TaskRunner.java:105) [hive-exec-3.1.3000.7.1.7.0-551.jar:3.1.3000.7.1.7.0-551]
        at org.apache.hadoop.hive.ql.Executor.launchTask(Executor.java:357) [hive-exec-3.1.3000.7.1.7.0-551.jar:3.1.3000.7.1.7.0-551]
        at org.apache.hadoop.hive.ql.Executor.launchTasks(Executor.java:330) [hive-exec-3.1.3000.7.1.7.0-551.jar:3.1.3000.7.1.7.0-551]
        at org.apache.hadoop.hive.ql.Executor.runTasks(Executor.java:246) [hive-exec-3.1.3000.7.1.7.0-551.jar:3.1.3000.7.1.7.0-551]
        at org.apache.hadoop.hive.ql.Executor.execute(Executor.java:109) [hive-exec-3.1.3000.7.1.7.0-551.jar:3.1.3000.7.1.7.0-551]
        at org.apache.hadoop.hive.ql.Driver.runInternal(Driver.java:742) [hive-exec-3.1.3000.7.1.7.0-551.jar:3.1.3000.7.1.7.0-551]
        at org.apache.hadoop.hive.ql.Driver.run(Driver.java:497) [hive-exec-3.1.3000.7.1.7.0-551.jar:3.1.3000.7.1.7.0-551]
        at org.apache.hadoop.hive.ql.Driver.run(Driver.java:491) [hive-exec-3.1.3000.7.1.7.0-551.jar:3.1.3000.7.1.7.0-551]
        at org.apache.hadoop.hive.ql.reexec.ReExecDriver.run(ReExecDriver.java:166) [hive-exec-3.1.3000.7.1.7.0-551.jar:3.1.3000.7.1.7.0-551]
        at org.apache.hive.service.cli.operation.SQLOperation.runQuery(SQLOperation.java:225) [hive-service-3.1.3000.7.1.7.0-551.jar:3.1.3000.7.1.7.0-551]
        at org.apache.hive.service.cli.operation.SQLOperation.access$700(SQLOperation.java:87) [hive-service-3.1.3000.7.1.7.0-551.jar:3.1.3000.7.1.7.0-551]
        at org.apache.hive.service.cli.operation.SQLOperation$BackgroundWork$1.run(SQLOperation.java:322) [hive-service-3.1.3000.7.1.7.0-551.jar:3.1.3000.7.1.7.0-551]
        at java.security.AccessController.doPrivileged(Native Method) ~[?:1.8.0_232]
        at javax.security.auth.Subject.doAs(Subject.java:422) [?:1.8.0_232]
        at org.apache.hadoop.security.UserGroupInformation.doAs(UserGroupInformation.java:1898) [hadoop-common-3.1.1.7.1.7.0-551.jar:?]
        at org.apache.hive.service.cli.operation.SQLOperation$BackgroundWork.run(SQLOperation.java:340) [hive-service-3.1.3000.7.1.7.0-551.jar:3.1.3000.7.1.7.0-551]
        at java.util.concurrent.Executors$RunnableAdapter.call(Executors.java:511) [?:1.8.0_232]
        at java.util.concurrent.FutureTask.run(FutureTask.java:266) [?:1.8.0_232]
        at java.util.concurrent.Executors$RunnableAdapter.call(Executors.java:511) [?:1.8.0_232]
        at java.util.concurrent.FutureTask.run(FutureTask.java:266) [?:1.8.0_232]
        at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1149) [?:1.8.0_232]
        at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:624) [?:1.8.0_232]
        at java.lang.Thread.run(Thread.java:748) [?:1.8.0_232]
Caused by: org.apache.hadoop.hive.metastore.api.MetaException: Got exception: org.apache.hadoop.fs.FileAlreadyExistsException Path is not a directory: /tmp/bigdata_nov_2024/hitesh/hive/data.csv
        at org.apache.hadoop.hdfs.server.namenode.FSDirMkdirOp.mkdirs(FSDirMkdirOp.java:55)
        at org.apache.hadoop.hdfs.server.namenode.FSNamesystem.mkdirs(FSNamesystem.java:3290)
        at org.apache.hadoop.hdfs.server.namenode.NameNodeRpcServer.mkdirs(NameNodeRpcServer.java:1125)
        at org.apache.hadoop.hdfs.protocolPB.ClientNamenodeProtocolServerSideTranslatorPB.mkdirs(ClientNamenodeProtocolServerSideTranslatorPB.java:735)
        at org.apache.hadoop.hdfs.protocol.proto.ClientNamenodeProtocolProtos$ClientNamenodeProtocol$2.callBlockingMethod(ClientNamenodeProtocolProtos.java)
        at org.apache.hadoop.ipc.ProtobufRpcEngine$Server$ProtoBufRpcInvoker.call(ProtobufRpcEngine.java:533)
        at org.apache.hadoop.ipc.RPC$Server.call(RPC.java:1070)
        at org.apache.hadoop.ipc.Server$RpcCall.run(Server.java:989)
        at org.apache.hadoop.ipc.Server$RpcCall.run(Server.java:917)
        at java.security.AccessController.doPrivileged(Native Method)
        at javax.security.auth.Subject.doAs(Subject.java:422)
        at org.apache.hadoop.security.UserGroupInformation.doAs(UserGroupInformation.java:1898)
        at org.apache.hadoop.ipc.Server$Handler.run(Server.java:2894)

        at org.apache.hadoop.hive.metastore.api.ThriftHiveMetastore$create_table_req_result$create_table_req_resultStandardScheme.read(ThriftHiveMetastore.java:63743) ~[hive-exec-3.1.3000.7.1.7.0-551.jar:3.1.3000.7.1.7.0-551]
        at org.apache.hadoop.hive.metastore.api.ThriftHiveMetastore$create_table_req_result$create_table_req_resultStandardScheme.read(ThriftHiveMetastore.java:63711) ~[hive-exec-3.1.3000.7.1.7.0-551.jar:3.1.3000.7.1.7.0-551]
        at org.apache.hadoop.hive.metastore.api.ThriftHiveMetastore$create_table_req_result.read(ThriftHiveMetastore.java:63637) ~[hive-exec-3.1.3000.7.1.7.0-551.jar:3.1.3000.7.1.7.0-551]
        at org.apache.thrift.TServiceClient.receiveBase(TServiceClient.java:86) ~[hive-exec-3.1.3000.7.1.7.0-551.jar:3.1.3000.7.1.7.0-551]
        at org.apache.hadoop.hive.metastore.api.ThriftHiveMetastore$Client.recv_create_table_req(ThriftHiveMetastore.java:1792) ~[hive-exec-3.1.3000.7.1.7.0-551.jar:3.1.3000.7.1.7.0-551]
        at org.apache.hadoop.hive.metastore.api.ThriftHiveMetastore$Client.create_table_req(ThriftHiveMetastore.java:1779) ~[hive-exec-3.1.3000.7.1.7.0-551.jar:3.1.3000.7.1.7.0-551]
        at org.apache.hadoop.hive.metastore.HiveMetaStoreClient.create_table_with_environment_context(HiveMetaStoreClient.java:3585) ~[hive-exec-3.1.3000.7.1.7.0-551.jar:3.1.3000.7.1.7.0-551]
        at org.apache.hadoop.hive.ql.metadata.SessionHiveMetaStoreClient.create_table_with_environment_context(SessionHiveMetaStoreClient.java:145) ~[hive-exec-3.1.3000.7.1.7.0-551.jar:3.1.3000.7.1.7.0-551]
        at org.apache.hadoop.hive.metastore.HiveMetaStoreClient.createTable(HiveMetaStoreClient.java:1061) ~[hive-exec-3.1.3000.7.1.7.0-551.jar:3.1.3000.7.1.7.0-551]
        at org.apache.hadoop.hive.metastore.HiveMetaStoreClient.createTable(HiveMetaStoreClient.java:1046) ~[hive-exec-3.1.3000.7.1.7.0-551.jar:3.1.3000.7.1.7.0-551]
        at sun.reflect.GeneratedMethodAccessor93.invoke(Unknown Source) ~[?:?]
        at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43) ~[?:1.8.0_232]
        at java.lang.reflect.Method.invoke(Method.java:498) ~[?:1.8.0_232]
        at org.apache.hadoop.hive.metastore.RetryingMetaStoreClient.invoke(RetryingMetaStoreClient.java:213) ~[hive-exec-3.1.3000.7.1.7.0-551.jar:3.1.3000.7.1.7.0-551]
        at com.sun.proxy.$Proxy35.createTable(Unknown Source) ~[?:?]
        at sun.reflect.GeneratedMethodAccessor93.invoke(Unknown Source) ~[?:?]
        at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43) ~[?:1.8.0_232]
        at java.lang.reflect.Method.invoke(Method.java:498) ~[?:1.8.0_232]
        at org.apache.hadoop.hive.metastore.HiveMetaStoreClient$SynchronizedHandler.invoke(HiveMetaStoreClient.java:3478) ~[hive-exec-3.1.3000.7.1.7.0-551.jar:3.1.3000.7.1.7.0-551]
        at com.sun.proxy.$Proxy35.createTable(Unknown Source) ~[?:?]
        at org.apache.hadoop.hive.ql.metadata.Hive.createTable(Hive.java:1132) ~[hive-exec-3.1.3000.7.1.7.0-551.jar:3.1.3000.7.1.7.0-551]
        ... 28 more
ERROR : FAILED: Execution Error, return code 40000 from org.apache.hadoop.hive.ql.ddl.DDLTask. MetaException(message:Got exception: org.apache.hadoop.fs.FileAlreadyExistsException Path is not a directory: /tmp/bigdata_nov_2024/hitesh/hive/data.csv
        at org.apache.hadoop.hdfs.server.namenode.FSDirMkdirOp.mkdirs(FSDirMkdirOp.java:55)
        at org.apache.hadoop.hdfs.server.namenode.FSNamesystem.mkdirs(FSNamesystem.java:3290)
        at org.apache.hadoop.hdfs.server.namenode.NameNodeRpcServer.mkdirs(NameNodeRpcServer.java:1125)
        at org.apache.hadoop.hdfs.protocolPB.ClientNamenodeProtocolServerSideTranslatorPB.mkdirs(ClientNamenodeProtocolServerSideTranslatorPB.java:735)
        at org.apache.hadoop.hdfs.protocol.proto.ClientNamenodeProtocolProtos$ClientNamenodeProtocol$2.callBlockingMethod(ClientNamenodeProtocolProtos.java)
        at org.apache.hadoop.ipc.ProtobufRpcEngine$Server$ProtoBufRpcInvoker.call(ProtobufRpcEngine.java:533)
        at org.apache.hadoop.ipc.RPC$Server.call(RPC.java:1070)
        at org.apache.hadoop.ipc.Server$RpcCall.run(Server.java:989)
        at org.apache.hadoop.ipc.Server$RpcCall.run(Server.java:917)
        at java.security.AccessController.doPrivileged(Native Method)
        at javax.security.auth.Subject.doAs(Subject.java:422)
        at org.apache.hadoop.security.UserGroupInformation.doAs(UserGroupInformation.java:1898)
        at org.apache.hadoop.ipc.Server$Handler.run(Server.java:2894)
)
INFO  : Completed executing command(queryId=hive_20241210123445_25b6cebb-9b4a-496b-8865-44b54ee90d24); Time taken: 0.091 seconds
INFO  : OK
Error: Error while compiling statement: FAILED: Execution Error, return code 40000 from org.apache.hadoop.hive.ql.ddl.DDLTask. MetaException(message:Got exception: org.apache.hadoop.fs.FileAlreadyExistsException Path is not a directory: /tmp/bigdata_nov_2024/hitesh/hive/data.csv
        at org.apache.hadoop.hdfs.server.namenode.FSDirMkdirOp.mkdirs(FSDirMkdirOp.java:55)
        at org.apache.hadoop.hdfs.server.namenode.FSNamesystem.mkdirs(FSNamesystem.java:3290)
        at org.apache.hadoop.hdfs.server.namenode.NameNodeRpcServer.mkdirs(NameNodeRpcServer.java:1125)
        at org.apache.hadoop.hdfs.protocolPB.ClientNamenodeProtocolServerSideTranslatorPB.mkdirs(ClientNamenodeProtocolServerSideTranslatorPB.java:735)
        at org.apache.hadoop.hdfs.protocol.proto.ClientNamenodeProtocolProtos$ClientNamenodeProtocol$2.callBlockingMethod(ClientNamenodeProtocolProtos.java)
        at org.apache.hadoop.ipc.ProtobufRpcEngine$Server$ProtoBufRpcInvoker.call(ProtobufRpcEngine.java:533)
        at org.apache.hadoop.ipc.RPC$Server.call(RPC.java:1070)
        at org.apache.hadoop.ipc.Server$RpcCall.run(Server.java:989)
        at org.apache.hadoop.ipc.Server$RpcCall.run(Server.java:917)
        at java.security.AccessController.doPrivileged(Native Method)
        at javax.security.auth.Subject.doAs(Subject.java:422)
        at org.apache.hadoop.security.UserGroupInformation.doAs(UserGroupInformation.java:1898)
        at org.apache.hadoop.ipc.Server$Handler.run(Server.java:2894)
) (state=08S01,code=40000)
0: jdbc:hive2://ip-172-31-1-36.eu-west-2.comp> CREATE EXTERNAL TABLE  hitesh_itc.employees (
. . . . . . . . . . . . . . . . . . . . . . .>   id INT,
. . . . . . . . . . . . . . . . . . . . . . .>   name STRING,
. . . . . . . . . . . . . . . . . . . . . . .>   category STRING,
. . . . . . . . . . . . . . . . . . . . . . .>   amout DOUBLE
. . . . . . . . . . . . . . . . . . . . . . .> )
. . . . . . . . . . . . . . . . . . . . . . .> ROW FORMAT DELIMITED
. . . . . . . . . . . . . . . . . . . . . . .> FIELDS TERMINATED BY ','
. . . . . . . . . . . . . . . . . . . . . . .> LINES TERMINATED BY '\n'
. . . . . . . . . . . . . . . . . . . . . . .> STORED AS TEXTFILE
. . . . . . . . . . . . . . . . . . . . . . .> LOCATION '/tmp/bigdata_nov_2024/hitesh/hive/';
INFO  : Compiling command(queryId=hive_20241210123717_228a6dd5-8da5-4e8e-bf5d-7253f1ef9150): CREATE EXTERNAL TABLE  hitesh_itc.employees (
id INT,
name STRING,
category STRING,
amout DOUBLE
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE
LOCATION '/tmp/bigdata_nov_2024/hitesh/hive/'
INFO  : Semantic Analysis Completed (retrial = false)
INFO  : Created Hive schema: Schema(fieldSchemas:null, properties:null)
INFO  : Completed compiling command(queryId=hive_20241210123717_228a6dd5-8da5-4e8e-bf5d-7253f1ef9150); Time taken: 0.037 seconds
INFO  : Executing command(queryId=hive_20241210123717_228a6dd5-8da5-4e8e-bf5d-7253f1ef9150): CREATE EXTERNAL TABLE  hitesh_itc.employees (
id INT,
name STRING,
category STRING,
amout DOUBLE
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE
LOCATION '/tmp/bigdata_nov_2024/hitesh/hive/'
INFO  : Starting task [Stage-0:DDL] in serial mode
INFO  : Completed executing command(queryId=hive_20241210123717_228a6dd5-8da5-4e8e-bf5d-7253f1ef9150); Time taken: 0.1 seconds
INFO  : OK
No rows affected (0.203 seconds)
0: jdbc:hive2://ip-172-31-1-36.eu-west-2.comp> select * from hitesh_itc.employees;
INFO  : Compiling command(queryId=hive_20241210123734_932ab8db-ab90-4a18-8a59-064316b78212): select * from hitesh_itc.employees
INFO  : No Stats for hitesh_itc@employees, Columns: name, amout, id, category
INFO  : Semantic Analysis Completed (retrial = false)
INFO  : Created Hive schema: Schema(fieldSchemas:[FieldSchema(name:employees.id, type:int, comment:null), FieldSchema(name:employees.name, type:string, comment:null), FieldSchema(name:employees.category, type:string, comment:null), FieldSchema(name:employees.amout, type:double, comment:null)], properties:null)
INFO  : Completed compiling command(queryId=hive_20241210123734_932ab8db-ab90-4a18-8a59-064316b78212); Time taken: 0.13 seconds
INFO  : Executing command(queryId=hive_20241210123734_932ab8db-ab90-4a18-8a59-064316b78212): select * from hitesh_itc.employees
INFO  : Completed executing command(queryId=hive_20241210123734_932ab8db-ab90-4a18-8a59-064316b78212); Time taken: 0.007 seconds
INFO  : OK
+---------------+-----------------+---------------------+------------------+
| employees.id  | employees.name  | employees.category  | employees.amout  |
+---------------+-----------------+---------------------+------------------+
| 1             | Hitesh          | 33                  | 5000.0           |
| 2             | Rahul           | 32                  | 4000.0           |
| 3             | Sangita         | 32                  | 4000.0           |
| 4             | Muctuba         | 28                  | 3000.0           |
| 5             | Obina           | 22                  | 2000.0           |
+---------------+-----------------+---------------------+------------------+
5 rows selected (0.221 seconds)
0: jdbc:hive2://ip-172-31-1-36.eu-west-2.comp>