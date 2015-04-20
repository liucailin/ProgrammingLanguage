--[[
	�հ�����
	http://zh.wikipedia.org/zh/%E9%97%AD%E5%8C%85_(%E8%AE%A1%E7%AE%97%E6%9C%BA%E7%A7%91%E5%AD%A6)
	�հ��Ǵʷ��հ��ļ��
	1 �հ�������ʷ������������������ɱ���(�Ǿֲ�����)�ĺ���
	2 �հ����ɺ�����������ص����û�����ϳɵ�ʵ�壬�հ�������ʱ�����ж��ʵ������ͬ�����û�������ͬ�ĺ�����Ͽ��Բ�����ͬ��ʵ����

	��չ����  https://www.ibm.com/developerworks/cn/linux/l-cn-closure/#toggle
	��ν���û�����ָ�ڳ���ִ���е�ĳ�������д��ڻ�Ծ״̬��Լ������ɵļ��ϡ����е�Լ����ָһ�����������ֺ���������Ķ���֮�����ϵ����ôΪʲôҪ�����û����뺯����������أ�����Ҫ����Ϊ��֧��Ƕ��������������У���ʱ���ܼ�ֱ�ӵ�ȷ�����������û�����
	����������һ��������������ԣ�
	������һ��ֵ��First-class value����������������Ϊ��һ�������ķ���ֵ���������������Ϊһ��������ֵ��
	��������Ƕ�׶��壬����һ�������ڲ����Զ�����һ��������
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

-- example 3�� anonymous function
function make_counter()
	local count = 0

	return	function()
		count = count + 1
		return count
	end
end

-- �����Ǹ�����Ϊ�����ݣ����հ��Ǹ������ݵ���Ϊ��

