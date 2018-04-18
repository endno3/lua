metatable = {}
mytable = {}
setmetatable(mytable,metatable)
--reload dot call
f_index=function(mytable,key)
	print("called"..key)
end

--reload the index which is inside the table 
f_newindex=function(mytable,key)
	local string="__newindex funtion called"..key
	mytable[key] = string
end

f_add = function(mytable,newtable)
	print("call __add")
	return nil
end

f_sub = function(mytable,newtable)
	print("call __sub")
	return nil
end

f_mul = function(mytable,newtable)
	print("call __mul")
	return nil
end

f_div = function(mytable,newtable)
	print("call __div")
	return nil
end

f_mod = function(mytable,newtable)
	print("call __mod")
	return nil
end

f_unm = function(mytable,newtable)
	print("call __unm")
	return nil
end

f_concat = function(mytable,newtable)
	print("call __concat")
	return nil
end

f_eq = function(mytable,newtable)
	print("call __eq")
	return nil
end

f_lt = function(mytable,newtable)
	print("call __lt")
	return nil
end

f_le = function(mytable,newtable)
	print("call _le")
	return nil
end

f_call = function(mytable,newtable)
	print ("call __call")
	return nil
end

f_tostring = function(mytable)
	return "call __tostring"
end




metatable["__index"]=f_index
metatable["__add"]=f_add
metatable["__call"]=f_call
metatable["__tostring"]=f_tostring
new = {}
b=mytable+new
print(mytable(new))
print(mytable)
