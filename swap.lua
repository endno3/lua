function swap(a,b)
	tmp = a
	a = b
	b = tmp
	return a,b
end

function foo0()
	return
end

function foo1()
	return "a"
end

function foo3()
	return "a","b"
end

function foo4()
	return foo3(),"c"
end

