do
	function foo(...)
		for i=1,select('#',...)/2 do
			local arg=select(i,arg);
			print("arg",arg)
		end
	end

	foo(1,2,3,4)
end

