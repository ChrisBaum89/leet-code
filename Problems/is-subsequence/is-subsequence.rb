# @param {String} s
# @param {String} t
# @return {Boolean}
def is_subsequence(s, t)
    check_str = ""
    for i in 0..s.length - 1 do
        if t.index(s.chars[i]) != nil
            check_str = check_str + s.chars[i]
            t = t[t.index(s.chars[i])+1..t.length-1]
        end
    end

    check_str == s ? true : false
end

# going to index through s
# search t for s(i)
# if s(i) found, add value to a string to save characters found
# remove characters from t that were at the found index and before