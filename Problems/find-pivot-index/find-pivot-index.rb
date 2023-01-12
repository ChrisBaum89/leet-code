# @param {Integer[]} nums
# @return {Integer}
def pivot_index(nums)

    max_idx = nums.size - 1
    for i in 0..max_idx do
        #handles left sum
        left_sum = 0
        if i > 0
            left_sum = nums[0..i-1].sum
        end

        #handle right sum
        if i < max_idx
            right_sum = nums[i+1..max_idx].sum
        else
            right_sum = 0
        end

        #compare left and right
        if left_sum == right_sum
            return i
        end
    end

    return -1
end

##My Psuedocode
#Iterate through array
# sum all to left[0..i-1]
# sum all to right
# compare sums
# return index
# a for loop may be good because it lets us easily return index