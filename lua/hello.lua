--[[
Lua¼òÃ÷½Ì³Ì, ³Âð©, http://coolshell.cn/articles/10739.html
--]]

print ("Hello world, a short intro to lua")

-- this is a single line lua comment
--[[
	this is multi line
	lua comment
--]]

--[[
	all numbers in lua are double type, 64 bit
--]]


-- undefined variable is nil
v = undefinedVariable
print (v, undefinedVariable)

-- global and local variable
theGlobalVar = 50
local theLocalVar = "local"

-- string can be inclosed by '' or """, \ is a escape operator

--[[
	statements & expressions
	not i++ & i+=1
	using and or not as conditional logic operators
]]--

-- loop statement

sum = 0
num = 1
while num <= 100 do
	sum = sum + num
	num = num + 1
end
print ("sum = "..sum)

sum = 0
for i = 1, 100 do
	sum = sum + i
end
print ("sum = "..sum)

sum = 0
for i = 1, 100, 2 do
	sum = sum + i
end
print ("sum = "..sum)

sum = 0
for i = 1, 100, -2 do
	sum = sum + i
end
print ("sum = "..sum)

sum = 2
repeat
	sum = sum ^ 2
	print(sum)
until sum > 1000


-- control statement
age = 40
sex = "Male"
if age == 40 and sex == "Male" then
	print ("Man is a flower at 40")
elseif age > 60 and sex ~= "Female" then
	print ("Old man without country!")
elseif age < 20 then
	io.write("too young, too naive!")
else
	local age = io.read()
	print ("Your age is "..age)
end

--[[
	function
--]]

-- recursive
function fib(n)
	if n < 2 then return 1 end
	return fib(n - 2) + fib(n - 1)
end

-- closure
function newConunter()
	local i = 0
	return function()    -- anonymous function
		i = i + 1
		return i
	end
end

function myPower(x)
	return function(y) return y ^ x end
end

-- lua can assign and return multi value in one return statement
name, age, bGay = "haoel", 37, false, "haoel@hotmail.com"

function getUserInfo(id)
    print(id)
    return "haoel", 37, "haoel@hotmail.com", "http://coolshell.cn"
end

name, age, email, website, bGay = getUserInfo()

-- local function

--[[
	Table,
	List(list is a special form of table, start from 1, not 0 !!!!!)
--]]
haoel = {name="ChenHao", age=37, handsome=True}
t = {[20]=100, ['name']="ChenHao", [3.14]="PI"}
-- CRUD
haoel.website="http://coolshell.cn/"
local age = haoel.age
haoel.handsome = false
haoel.name=nil
t[20] = 0

arr = {10, 20, 30}
-- is equal to arr = {[1] = 20, {2} = 20, {3} = 30}
arr = {"string", 100, "haoel", function() print("coolshell.cn") end}

for i = 1, #arr do
	print (arr[i])
end

-- lua put all global variables in a table call "_G"
print (_G.globalVar)

for k, v in pairs(t) do
    print(k, v)
end


