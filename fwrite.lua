function fwrite(fmt,...)
	return io.write(string.format(fmt,...))
end
fwrite("runoob\n")
fwrite("%d%d\n",1,2)
