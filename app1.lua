function fwrite(fmt,...)
	return io.write(string.format(fmt,...))
end

function writeheader()
	io.write([[
<html>
<head><title>projects using lua</title></head>
<body bgcolor="#FFFFFF#">
Here are brief descriptions of some projects around the world that use <a)
