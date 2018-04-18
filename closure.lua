function counter()
	local i=0
	return function()
		i=i+1
		return i
	end
end

function f(x)
	return function()
		return x
	end
end

function foo(step)
	return function(base)
		return step+base
	end
end

