--[[
	闭包概念
	http://zh.wikipedia.org/zh/%E9%97%AD%E5%8C%85_(%E8%AE%A1%E7%AE%97%E6%9C%BA%E7%A7%91%E5%AD%A6)
	闭包是词法闭包的简称
	1 闭包是在其词法上下文中引用了自由变量(非局部变量)的函数
	2 闭包是由函数和与其相关的引用环境组合成的实体，闭包在运行时可以有多个实例，不同的引用环境和相同的函数组合可以产生不同的实例。

	扩展解释  https://www.ibm.com/developerworks/cn/linux/l-cn-closure/#toggle
	所谓引用环境是指在程序执行中的某个点所有处于活跃状态的约束所组成的集合。其中的约束是指一个变量的名字和其所代表的对象之间的联系。那么为什么要把引用环境与函数组合起来呢？这主要是因为在支持嵌套作用域的语言中，有时不能简单直接地确定函数的引用环境。
	这样的语言一般具有这样的特性：
	函数是一阶值（First-class value），即函数可以作为另一个函数的返回值或参数，还可以作为一个变量的值。
	函数可以嵌套定义，即在一个函数内部可以定义另一个函数。
--]]


-- example 1: return value is a function
function make_counter()
	local count = 0

	function inc_count()
		count = count + 1
		return count
	end
	return inc_count
end

print (make_counter())
c1 = make_counter()
c2 = make_counter()
print (c1())
print (c2())

-- example 2: paramater is function
function do10times(fn)
	for i = 0, 9 do
		fn (i)
	end
end

sum = 0
function addSum(i)
	sum = sum + i
end

do10times(addSum)
do10times(addSum)
print(sum)

-- example 3： anonymous function
function make_counter()
	local count = 0

	return	function()
		count = count + 1
		return count
	end
end

-- 对象是附有行为的数据，而闭包是附有数据的行为。

