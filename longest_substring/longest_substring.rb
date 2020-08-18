# 最長の部分文字列を求める。同じ文字は含まれない。
# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
  chars = s.chars
  n = s.length
  hash = {}
  i, j = 0, 0
  max_length = 0
  while i < n && j < n do
    if hash.has_key?(chars[j])
      puts chars[i..j].join
      hash = {}
      i += 1
      j = i
    else
      hash[chars[j]] = 0
      l = j - i + 1
      max_length = l if max_length < l
      puts chars[i..j].join
      j += 1
    end
  end
  max_length
end

puts length_of_longest_substring("pwwkew")
