# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
    hash = (nums).zip(0...nums.size).to_h
    nums.each_with_index do |n, i|
        answer = target - n
        next unless hash.has_key?(answer)
        j = hash[answer]
        return [i, j] if i != j
    end
    [0, 0]
end
