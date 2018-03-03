# SQL02——SQL语法




## 数据库表

一个数据库通常包含一个或多个表。每个表由一个名字标识（例如“客户”或者“订单”）。表包含带有数据的记录（行）。

下面的例子是一个名为 "Persons" 的表：
| Id        | Lastname | FristName | Address       | City   |
| :-------- | :--------| :-------- | :-------------|:-------|
| 1         | Adams    |  John     | Oxford Street |London  |
| 2         |  Bush    | George    | Fifth Avenue  |New York|
| 3         |  Carter  | Thomas    | Changan Street|Beijing |

上面的表包含三条记录（每一条对应一个人）和五个列（Id、姓、名、地址和城市）。


## SQL 语句
需要在数据库上执行的大部分工作都由 SQL 语句完成。

下面的语句从表中选取 LastName 列的数据：
```sql
SELECT LastName FROM Person
```
结果集类似这样:
 | Lastname |
 | :--------| 
 | Adams    |  
 |  Bush    |
 |  Carter  | 


## 重要事项
**SQL对大小写不敏感。**
 
## SQL 语句后面的分号？

某些数据库系统要求在每条 SQL 命令的末端使用分号。在我们的教程中不使用分号。

分号是在数据库系统中分隔每条 SQL 语句的标准方法，这样就可以在对服务器的相同请求中执行一条以上的语句。

如果您使用的是 MS Access 和 SQL Server 2000，则不必在每条 SQL 语句之后使用分号，不过某些数据库软件要求必须使用分号。

##  SQL DML 和 DDL
可以把 SQL 分为两个部分：`数据操作语言（DML）`和 `数据定义语言（DDL）`。
SQL (结构化查询语言)是用于执行查询的语法。但是 SQL 语言也包含用于更新、插入和删除记录的语法。

**查询**和**更新**指令构成了 SQL 的 DML 部分：
- SELECT - 从数据库表中获取数据
- UPDATE -  更新数据库表中的数据
- DELETE - 从数据库表中删除数据
- INSERT INFO - 向数据库表中插入数据

SQL 的数据定义语言 (DDL) 部分使我们有能力**创建或删除表格**。我们也可以定义**索引（键）**，规定**表之间的链接**，以及施加**表间的约束**。
SQL中最重要的 DDL 语句：
- CREATE DATABASE - 创建新数据库
-  ALTER DATABASE - 修改数据库
-  CREATE TABLE - 创建新表
-  ALTER TABLE - 变更（改变）数据库表
-  DROP TABLE - 删除表
-  CREATE INDEX - 创建索引（搜索键）
-  DROP INDEX - 删除索引

