# @param {Integer} x
# @return {Boolean}
def is_palindrome(x)
    x_str = x.to_s
    x_str == x_str.reverse ? true : false
end