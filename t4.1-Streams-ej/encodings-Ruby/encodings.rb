-----  fichero iso-8859-1.rb  ------------------------------
#  -*-  encoding:  iso-8859-1  -*-
STRING_ISO = 'olé'       #  \x6f  \x6c  \xe9

-----  fichero utf.rb --------------------------------------
#  file: utf.rb,  encoding:  utf-8
STRING_U = 'δog'       #  \xe2\x88\x82  \x6f  \x67

-----  fichero sjis.rb -------------------------------------
#     encoding:  sjis
require 'iso-8859-1'
require 'utf'

def show_encoding(str)
   puts "'#{str}' (size #{str.size}) is #{str.encoding.name}" 
end
show_encoding(STRING_ISO)  #  =>  'olé' (size 3) is ISO-8859-1
show_encoding(STRING_U)    #  =>  'δog' (size 3) is UTF-8
show_encoding("cat")       #  =>  'cat' (size 3) is Shift_JIS