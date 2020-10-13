# -*- coding: utf-8 -*-
"""
Creating simple Arabic reshaper
"""

from bidi.algorithm import get_display
#^^ inputs Arabic characters from R to L
import arabic_reshaper
#^^ uses correct form of character within words

def readable_Arabic(string):
 return get_display(arabic_reshaper.reshape(string))   
#^^ function should return Arabic written correctly (connecting characters)
# that can be read R to L
