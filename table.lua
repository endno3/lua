--table funtions
a = {"hello","world"}

string = table.concat(table,"-",)
--table.remove(table,[pos)
table.remove(a)
--table.insert
table.insert(a,"world")
table.insert(a,3,"!")
table.sort(a)


function table_maxN(table)
	local maxN=nil
	for k,v in pairs(table)
	do
		if maxN==nil then
			maxN=v
		end
		if maxN<v then
			maxN=v
		end
	end
	return maxN
end

