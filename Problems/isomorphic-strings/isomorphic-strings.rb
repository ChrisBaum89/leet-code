# @param {String} s
# @param {String} t
# @return {Boolean}
require 'set'

def is_isomorphic(s, t)

    t_str = ""
    s_str = ""

    if s.length != t.length
        return false
    end

    for i in 0..s.length-1 do
        s_out = s.index(s[i])
       t_out = t.index(t[i])
    
        s_str << s_out.to_s + "-"
        t_str << t_out.to_s + "-"
    end

    if s_str == t_str
        return true
    end

    return false  
end

#My Psuedocode
# need to check length, if length of each is not same, false
# index through each character position of the strings
# create indicator to either:
# 1. save the index as a unique number
# 2. find the index of a previous number and save it.
# need a way to tell difference between 2,10 (c, k) and 21,0 (v, a)
# this requires some seperator
# ex. foo = 0-1-1
# ex. paper = 0-1-0-3-4