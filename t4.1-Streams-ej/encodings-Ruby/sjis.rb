#     encoding:  sjis
require_relative 'iso-8859-1'
require_relative 'utf-8'

def show_encoding(str)
   puts "'#{str}' (size #{str.size}) is #{str.encoding.name}" 
end
show_encoding(STRING_ISO)  #  =>  'olé' (size 3) is ISO-8859-1
show_encoding(STRING_U)    #  =>  'δog' (size 3) is UTF-8
show_encoding("cat")       #  =>  'cat' (size 3) is Shift_JIS