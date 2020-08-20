# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Float}

# 中央値
# 奇数の場合はちょうど真ん中にくるもの、偶数の場合は真ん中の２つの平均。
def find_median_sorted_arrays(nums1, nums2)
  nums = nums1 + nums2
  sorted_nums = nums.sort_by{|x| x.to_i }
  n = sorted_nums.length
  if n % 2 == 0
      (sorted_nums[n/2 - 1] + sorted_nums[n/2]) / 2.to_f
  else
      sorted_nums[(n-1)/2]
  end
end
