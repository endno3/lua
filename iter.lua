function Rangeiter(maxNum,i)
	if i<maxNum-1 then
		i=i+1
		return i
	end
end

function range(n)
	return Rangeiter,n,-1
end

for i in range(5) do print(i) end

function pairIter(a,i)
	if a[i+1] then
		local v=a[i+1]
		return i+1,v
	end
end

function pair(a)
	return pairIter,a,0
end

a={"hello",x="world"}
for key,val in pair(a) do print(key,val) end

function PairsIter(table,key)
	key=next(table,key)
	local v = table[key]
	if v then
		return key,v
	end
end

function Pair(table)
	return PairsIter,table,nil
end

b={"hello",number=3}
for k,v in Pair(b) do print(k,v) end
