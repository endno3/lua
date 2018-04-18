function square(maxCount,i)
	if i<maxCount then
		i=i+1
		return i
	end
end



for i in square,3,0
do
	print(i)
end

function faboracci(n)
	local count = 1
	local init1 = 0
	local init2 = 1
	
	return function()
		count = count+1
		local tmp=init2
		init2 = init1+init2
		init1 = tmp
		if count<=n
		then
			return init2
		end
	end
end

for i in faboracci(6)
do print(i) end
		
