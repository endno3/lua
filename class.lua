--class ,prototype
employee = {name="NULL",Id=0}
function employee:new(o)
	o=o or {}
	setmetatable(o,self) --make employee the prototype of object o
	self.__index=self
	return o
end

function employee:getname()
	print(self.name)
end

function employee:getid()
	print(self.Id)
end

manager = employee:new({title="manager"})
function manager:new(o)
	o=o or employee:new()
	setmetatable(o,self)
	self.__index=self
	return o
end

a = employee:new({name="zhou",Id=1})
b = manager:new(o)
print(b.title)

--multisucess
local function search(k,plist)
	for i=1,#plist do
		local v = plist[i][k]
		if v then return v
	end
end

function createClass(...)
	local c ={}
	local parents = {...}

	setmetatable(c,{__index=function(t,k) return search(k,parents)end})
	c.__index = c

	function c:new(o)
		o=o or {}
		setmetatable(o,c)
		return o
	end

	return c
end

