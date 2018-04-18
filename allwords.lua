function allwords()
	local line = io.read()
	local pos = 1
	return function()
		while line
		do
			local s,e=string.find(line,"%w+",pos)
			if s then
				pos = e+1
				return string.sub(line,s,e)
			else
 				line = io.read()
				pos =1
			end
		end
		return nil
	end
end


function fact(n)
	local i,j,cnt=0,1,1
	return function()
		local tmp=j
		j=i+j
		i=tmp
		cnt = cnt+1
		if cnt<=n then return j end
	end
end		

function count(rule)
	for i=1,100 do rule(i) end
end

local cnt = 0
count(function(x) if x%2==0 then cnt=cnt+1 end end)
print(cnt)
