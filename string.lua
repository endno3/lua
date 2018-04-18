a="\0"
b="\077"
c="\xAB"

a='lo\n123"'
b='alo\n123\"'
c='\97lo\10\04923"'
d=[[alo
123"]]
e=[==[alo
123"]==]

tb1={[1]=0,[2]='t'}

--string methods
--find
string="nice to meet you"
string_e_replaced = string.gsub(string,"e","o")
string_find_e = string.find(string,"to",1)
string_reversed = string.reverse(string)
--%c input a number(A) and output a char whose acsii is A
--%d,%i input a number(A) and output a signed number A
--%o input a number(A) and output a octonal number whose value is equal to a
--%x input a number(a) and output a hex number whoose value is equal to A
--%X output a hex number with capital letters
--%e example turn 10000 into 1e4
--%E example turn 10000 into 1E4 (capital numbers)
--%f turn a number into a float
--%g(%G) turn a number into a shorter one between %e(%E) and %f
--%q turn a string into a string that can safely inputed
--%s fomat a string with given parameters
--[[parameters:
	%+02d + means make a positive number show sign +
	      0 placeholder:when given length fill the blanks with 0
	      assign sign :default assign ro right - assign to left
              length number
--]]
string_format = string.format("Data %4d - %02d - %02d",1996,8,25)
string_char = string.char(102)
string_byte = string.byte("f")
length = string.len("abc")
string_repeat = string.rep(string,100)
--pattern
--pattern functions string.gmatch(str,pattern) iterable function
--		    string.match(str,pattern,init)
--what is pattern:.(dot) any char
--[[ .(点): 与任何字符配对
    %a: 与任何字母配对
    %c: 与任何控制符配对(例如\n)
    %d: 与任何数字配对
    %l: 与任何小写字母配对
    %p: 与任何标点(punctuation)配对
    %s: 与空白字符配对
    %u: 与任何大写字母配对
    %w: 与任何字母/数字配对
    %x: 与任何十六进制数配对
    %z: 与任何代表0的字符配对
    %x(此处x是非字母非数字字符): 与字符x配对. 主要用来处理表达式中有功能的字符(^$()%.[]*+-?)的配对问题, 例如%%与%配对
    [数个字符类]: 与任何[]中包含的字符类配对. 例如[%w_]与任何字母/数字, 或下划线符号(_)配对
    [^数个字符类]: 与任何不包含在[]中的字符类配对. 例如[^%s]与任何非空白字符配对

当上述的字符类用大写书写时, 表示与非此字符类的任何字符配对. 例如, %S表示与任何非空白字符配对.例如，'%A'非字母的字符:
--]]
a_plus = string.gmatch(string,"%a+")
a_Multiply = string.gmatch(string,"%a*")
a_substract = string.gmatch(string,"%a-")
a_question = string.gmatch(string,"%a?")

