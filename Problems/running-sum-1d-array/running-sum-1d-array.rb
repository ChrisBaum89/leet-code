# @param {Integer[]} nums
# @return {Integer[]}
def running_sum(nums)
    for i in 1..nums.size - 1 do
        nums[i] = nums[i] + nums[i-1]
    end

    nums
end

## My Psuedocode
# starting with nums[1] we are adding previous number to it nums[i - 1]
# iterate through each starting with nums[1] and add the values