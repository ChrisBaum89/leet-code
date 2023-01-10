# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
    for i in 0..(nums.size - 1) do
        diff_index = nums[(i + 1)..(nums.size - 1)].index(target - nums[i])
        if diff_index != nil
            return [i, diff_index.to_i + i + 1]
        end
    end
    
end