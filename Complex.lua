complex = {r=nil,i=nil}
--constructor function
function complex:new(o,r,i)
	o=o or {}
	setmetatable(o,self)
	self.__index=self
	o.r = r
	o.i = i
	return o
end

--define a constant
i=complex:new(nil,0,1)

add = function(a,b)
	return complex:new(nil,a.r+b.r,a.i+b.i)
end

sub = function(a,b)
	return complex:new(nil,a.r-b.r,a.i-b.i)
end
complex.__add = add
complex.__sub = sub
