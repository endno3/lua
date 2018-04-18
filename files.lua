--simple mode
file = io.open("test.txt","w")
io.output(file)
io.write("---first line")
io.close(file)

file = io.open("test.txt","r")
io.input(file)
print(io.read())
io.close(file)

--complete mode

file = io.open("test.txt","r")
print(file:read())
file:close()

file = io.open("test.txt","a+")
file:write("\n--complete mode")
print(file:read())
print(file:read())
file:close()
