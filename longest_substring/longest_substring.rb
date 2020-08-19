# 最長の部分文字列を求める。同じ文字は含まれない。
# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
  chars = s.chars
  n = s.length
  hash = Set.new
  i, j = 0, 0
  max_length = 0
  while i < n && j < n do
    if !hash.include?(chars[j])
        hash.add(chars[j])
        j += 1
        l = j - i
        max_length = l if max_length < l
    else
        hash.delete(chars[i])
        i += 1
    end
  end
  max_length
end
