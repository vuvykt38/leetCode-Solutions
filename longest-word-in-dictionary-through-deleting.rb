# 524. Longest Word in Dictionary through Deleting

# Given a string and a string dictionary, find the longest string in the dictionary that can be formed by deleting some characters of the given string. If there are more than one possible results, return the longest word with the smallest lexicographical order. If there is no possible result, return the empty string.

# Example 1:
# Input:
# s = "abpcpleaasd", d = ["ale","apple","monkey","plea"]

# Output:
# "apple"
# Example 2:
# Input:
# s = "abpcplea", d = ["a","b","c"]

# Output:
# "a"
# Note:
# All the strings in the input will only contain lower-case letters.
# The size of the dictionary won't exceed 1,000.
# The length of all the strings in the input won't exceed 1,000.

def find_longest_word(s, d)
  ans = []
  d.each do |e|
    ans << e if contain_str(s, e)
  end
  return "" if ans.size == 0
  ans.sort.max_by(&:length)
end

def contain_str(string1, string2)
  return false if string1 == ""

  i = 0
  j = 0
  while i < string2.size
    while j < string1.size
      # p "i= #{i}, j= #{j}, string2[i]:#{string2[i]}, string1[j]: #{string1[j]}, #{string2[i] == string1[j]}"
      if string2[i] == string1[j]
        # p "i= #{i}, j= #{j}, string2[i]:#{string2[i]}, string1[j]: #{string1[j]}, #{string2[i] == string1[j]}"
        j = j + 1
        break
      end

      if string2[i] != string1[j] && j == string1.size - 1
        return false
      end
      j += 1

    end

    return false if j == string1.size && i != string2.size - 1
    i += 1
  end

  true
end

# def ok?(s2, s1)
#   i1, i2 = 0, 0
#   while i1 < s1.size && i2 < s2.size
#       while s1[i1] != s2[i2] and i2 < s2.size do
#           i2 += 1
#       end
#       return false if i2 == s2.size

#       i1 += 1
#   end

#   i1 == s1.size
# end


# p contain_str("okbmfyugqqongobwofraotanviqjraaktmmwyxzdnnwwaqsnvfxwngglybtiqwblprgvbgmolotnppzbovnstxmcmocixresdpojmntcdkyjzgbhhigkiyatrgzayivjyqiopvvdftkbsgwgnidsecvydvltaxxywydawrsseyolixznuyhjolngdsmjhepregixtklanjjggzssrbtmhhpamcfeghgssmrjrpelabojfhkdfvscjwhqxubwrhryqmtkiksljezeembngdjyhgmdzahxvvpkqwvhkqlensuxbrcdctqojqnlogjbpovdsbvurwcoehtmtkwxswrwhszuyesdqspnwqxlmjxrbdqbnbbyxhhlabxrdjxtjgpugojsexmrhrfzryapdzglalqzuzfpxeaemjkyfhpbnmdxjtxnxyjecfsapcjyglmtivnsfalpxzdkylgcixjljaqjwminyaodeekpzzpchhceguzayeul","xcjigjydkponyjablqgulfhcyzbtbdocvsxzwzdabvbnzxzxcawydbbsuexdxpvmtjcxdgdcdxgccjfciphjmubucghqfqoqqugnvbblziedkifhyrkzugorbalkggrhingdsnfnvbofjunyuzjfmnpqloxtshyxyaavbskikosutlqeljnycostvxqviixgspazzitxhiujcqnatfwechwzuoxxwibszywniscleusciwjvcfcocneuaizzgluudughrvgozsgvrpcwsjzivzpbzfjqshrdckfcxjsgwcrhcmntpkezibuegxduskenhrhuayysefshuwokduoaibwpcrssypqflhqeipzsyiycrbtblfnwozngtcddepfxyhvfjcoxytxqkfgzduzzjjqdauxxgjhxqaewlihotqibnskdluickwaakwvopgatumfndzcjieoncdwmhfgpvtegeawueivtnyumvwxuzfcaxeuremvv")


# p contain_str("aaa", "aaa") == true

# p contain_s["aaa","aa","a"]) == "aaa"tr("awefawfwaf", "awefawfwaf") == true
# p contain_str("aewfafwafjlwajflwajflwafj", "ewaf") == true
# p contain_str("aewfafwafjlwajflwajflwafj", "apple") == false
# p contain_str("aewfafwafjlwajflwajflwafj", "awef") == false
# p contain_str("aewfafwafjlwajflwajflwafj", "awefe") == false
# p contain_str("aewfafwafjlwajflwajflwafj", "ewafeffewafewf") == false


p find_longest_word("abpcplea", ["ale","apple","monkey","plea"]) == "apple"
p find_longest_word("abpcplea", ["a","b","c"]) == "a"
p find_longest_word("cd", ["b", "a"]) == ""
p find_longest_word("aewfafwafjlwajflwajflwafj", ["apple","ewaf","awefawfwaf","awef","awefe","ewafeffewafewf"]) == "ewaf"
p find_longest_word("", ["b", "a"]) == ""
p find_longest_word("aaa", ["aaa","aa","a"]) == "aaa"

