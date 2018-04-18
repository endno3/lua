--array of lua
--the index of array in lua starts from 1
array_example = {"j","k"}
-- narrays
n = {}
for i=1,3 do
	n[i]={}
	for j=1,3 do
		n[i][j]=i*j
	end
end 

