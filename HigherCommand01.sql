--TOP 子句用于规定要返回的记录的数目。
SELECT TOP 2 * FROM Persons
SELECT TOP 50 PERCENT * FROM Persons

--LIKE 操作符用于在 WHERE 子句中搜索列中的指定模式。
SELECT * FROM Persons WHERE City LIKE 'N%'
--"%" 可用于定义通配符（模式中缺少的字母）。以N开头，大小写不敏感。
SELECT * FROM Persons WHERE City LIKE '%g'  --以g结尾
SELECT * FROM Persons WHERE City LIKE '%lon%'
--包含lon，大小写不敏感
SELECT * FROM Persons WHERE City NOT LIKE '%lon%'
--不包含lon

--SQL 通配符可以替代一个或多个字符。
--SQL 通配符必须与 LIKE 运算符一起使用。
--四种: % _ [] [^]/[!]
SELECT * FROM Persons WHERE City LIKE 'Ne%'  --%代表多个字符
SELECT * FROM Persons WHERE FirstName LIKE '_eorge'  --_代表一个字符
SELECT * FROM Persons WHERE LastName LIKE 'C_r_er'
--从 "Persons" 表中选取居住的城市以 "A" 或 "L" 或 "N" 开头的人：
SELECT * FROM Persons WHERE City LIKE '[ALN]%'
--从 "Persons" 表中选取居住的城市不以 "A" 或 "L" 或 "N" 开头的人：
SELECT * FROM Persons WHERE City LIKE '[!ALN]%'

--IN 操作符允许我们在 WHERE 子句中规定多个值。
从Persons表中选取姓氏为 Adams 和 Carter 的人
SELECT * FROM Persons WHERE LastName IN ('Adams','Carter')
--和AND不同，AND要求两个条件都成立

--BETWEEN...AND 操作符在 WHERE 子句中使用，作用是选取介于两个值之间的数据范围。这些值可以是数值、文本或者日期。
--以字母顺序显示介于 "Adams"（包括）和 "Carter"（不包括）之间的人，请使用下面的 SQL：
SELECT * FROM Persons WHERE LastName BETWEEN 'Adams' AND 'Carter'
--如需使用上面的例子显示范围之外的人，请使用 NOT 操作符：
SELECT * FROM Persons WHERE LastName NOT BETWEEN 'Adams' AND 'Carter'


