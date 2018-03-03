--SQL SELECT语句

--SELECT 列名称 FROM 表名称
SELECT LastName,FirstName FROM Persons

--SELECT * FROM 表名称
SELECT * FROM Persons --选取所有列，也就是整个表


/*
SQL SELECT DISTINCT 语句
在表中，可能会包含重复值。这并不成问题，不过，有时您也许希望仅仅列出不同（distinct）的值。
关键词 DISTINCT 用于返回唯一不同的值。
*/

--SELECT DISTINCT 列名称 FROM 表名称
SELECT DISTINCT Company FROM Orders


/*
SQL WHERE 子句
WHERE 子句用于规定选择的标准。
*/

--SELECT 列名称 FROM 表名称 WHERE 列 运算符 值
SELECT * FROM Persons WHERE City='Beijing'  --*号代表所有列

/*
引号的使用：
请注意，我们在例子中的条件值周围使用的是单引号。
SQL 使用单引号来环绕文本值（大部分数据库系统也接受双引号）。如果是数值，请不要使用引号。
*/

/*
SQL AND&OR 运算符
AND 和 OR 运算符用于基于一个以上的条件对记录进行过滤。

AND 和 OR 可在 WHERE 子语句中把两个或多个条件结合起来。
如果第一个条件和第二个条件都成立，则 AND 运算符显示一条记录。
如果第一个条件和第二个条件中只要有一个成立，则 OR 运算符显示一条记录。
*/
SELECT * FROM Persons WHERE FirstName='Thomas' AND LastName='Carter'
SELECT * FROM Persons WHERE FirstName='Thomas' OR LastName='Carter'
SELECT * FROM Persons WHERE (FirstName='Thomas' OR FirstName='William') AND LastName='Carter'


/*
SQL ORDER BY子句
ORDER BY 语句用于对结果集进行排序。

ORDER BY 语句默认按照升序对记录进行排序。
如果您希望按照降序对记录进行排序，可以使用 DESC 关键字。
*/

--以字母顺序显示公司名称：
SELECT Company, OrderNumber FROM Orders ORDER BY Company

--以字母顺序显示公司名称（Company），并以数字顺序显示顺序号（OrderNumber）：
SELECT Company, OrderNumber FROM Orders ORDER BY Company, OrderNumber
/*
这个不是说可以两列分别打乱，同一行一定是对应的
而是说，先按Company的字母顺序排列，然后如果遇到Company的名字一样的，再按OrderNumber的大小比较两行的上下排列
*/

--以逆字母顺序显示公司名称：
SELECT Company, OrderNumber FROM Orders ORDER BY Company DESC

--以逆字母顺序显示公司名称，并以数字顺序显示顺序号：
SELECT Company, OrderNumber FROM Orders ORDER BY Company DESC, OrderNumber ASC --注意ASC
--注意：在以上的结果中有两个相等的公司名称 (W3School)。只有这一次，在第一列中有相同的值时，第二列是以升序排列的。如果第一列中有些值为 nulls 时，情况也是这样的。


/*
INSERT INTO 语句
INSERT INTO 语句用于向表格中插入新的行。
*/

--插入新的行
--INSERT INTO 表名称 VALUES(值1, 值2,...)
INSERT INTO Persons VALUES('Gates', 'Bill', 'Xuanwumen 10', 'Beijing')

--在指定的列中插入数据
--INSERT INTO table_name (列1, 列2,...) VALUES (值1, 值2,....)
INSERT INTO Persons (LastName, Address) VALUES('Wilson', 'Champs-Elysees')


/*
SQL UPDATE 语句
Update 语句用于修改表中的数据。
*/

--更新某一行中的一个列
--UPDATE 表名称 SET 列名称 = 新值 WHERE 列名称 = 某值
UPDATE Persons SET FirstName = 'Fred' WHERE LastName = 'Wilson'

--更新某一行中的若干列
UPDATE Persons SET Address = 'Zhongshan 23', City = 'Nanjing' WHERE LastName = 'Wilson'


/*
SQL DELETE语句
DELETE 语句用于删除表中的行。
DELETE FROM 表名称 WHERE 列名称 = 值
*/

--删除某行
DELETE FROM Persons WHERE LastName = 'Wilson'

/*
删除所有行
可以在不删除表的情况下删除所有的行。这意味着表的结构、属性和索引都是完整的：
DELETE FROM table_name
或者
DELETE * FROM table_name
*/