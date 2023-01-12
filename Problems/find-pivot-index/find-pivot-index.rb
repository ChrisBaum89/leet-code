# @param {Integer[]} nums
# @return {Integer}
def pivot_index(nums)
    left_sum = 0
    right_sum = nums.sum
    
    for i in 0..nums.size - 1 do
        add_sub_val = nums[i]
        right_sum = right_sum - add_sub_val

        if left_sum == right_sum
            return i
        end
        left_sum = left_sum + add_sub_val

    end

    return -1
end

##My Psuedocode
# set left sum to 0
# set right sum to nums.sum
# need a way to iterate through (for loop?)
# subtract index val from right sum
# check if left = right
# add index val to left sum