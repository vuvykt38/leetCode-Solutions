# 748. Shortest Completing Word
# Given a string licensePlate and an array of strings words, find the shortest completing word in words.

# A completing word is a word that contains all the letters in licensePlate. Ignore numbers and spaces in licensePlate, and treat letters as case insensitive. If a letter appears more than once in licensePlate, then it must appear in the word the same number of times or more.

# For example, if licensePlate = "aBc 12c", then it contains letters 'a', 'b' (ignoring case), and 'c' twice. Possible completing words are "abccdef", "caaacab", and "cbca".

# Return the shortest completing word in words. It is guaranteed an answer exists. If there are multiple shortest completing words, return the first one that occurs in words.



# Example 1:

# Input: licensePlate = "1s3 PSt", words = ["step","steps","stripe","stepple"]
# Output: "steps"
# Explanation: licensePlate contains letters 's', 'p', 's' (ignoring case), and 't'.
# "step" contains 't' and 'p', but only contains 1 's'.
# "steps" contains 't', 'p', and both 's' characters.
# "stripe" is missing an 's'.
# "stepple" is missing an 's'.
# Since "steps" is the only word containing all the letters, that is the answer.
# Example 2:

# Input: licensePlate = "1s3 456", words = ["looks","pest","stew","show"]
# Output: "pest"
# Explanation: licensePlate only contains the letter 's'. All the words contain 's', but among these "pest", "stew", and "show" are shortest. The answer is "pest" because it is the word that appears earliest of the 3.
# Example 3:

# Input: licensePlate = "Ah71752", words = ["suggest","letter","of","husband","easy","education","drug","prevent","writer","old"]
# Output: "husband"
# Example 4:

# Input: licensePlate = "OgEu755", words = ["enough","these","play","wide","wonder","box","arrive","money","tax","thus"]
# Output: "enough"
# Example 5:

# Input: licensePlate = "iMSlpe4", words = ["claim","consumer","student","camera","public","never","wonder","simple","thought","use"]
# Output: "simple"


# Constraints:

# 1 <= licensePlate.length <= 7
# licensePlate contains digits, letters (uppercase or lowercase), or space ' '.
# 1 <= words.length <= 1000
# 1 <= words[i].length <= 15
# words[i] consists of lower case English letters.

def shortest_completing_word(license_plate, words)
  ans = []

  words.each do |e|
    ans << e if word_same_pattern(e, license_plate)
  end

  ans.min_by(&:length)
end

def word_same_pattern(word, license_plate)
  str_arr = license_plate.tr("0-9", "").delete(" ").split("")
  str_arr.map!(&:downcase)

  h_value_pattern = {}
  h_value_pattern.default = 0
  str_arr.each do |e|
    h_value_pattern[e] += 1
  end

  h_value_word = {}
  h_value_word.default = 0
  word.split("").each do |e|
    h_value_word[e] += 1
  end


  str_arr.uniq.each do|e|
    return false if !(h_value_word[e] >= h_value_pattern[e])
  end
  true
end

# p word_same_pattern("stepple", "1s3 PSt")

p shortest_completing_word("1s3 PSt", ["step","steps","stripe","stepple"]) == "steps"
p shortest_completing_word("1s3 456", ["looks","pest","stew","show"]) == "pest"
p shortest_completing_word("Ah71752", ["suggest","letter","of","husband","easy","education","drug","prevent","writer","old"]) == "husband"
p shortest_completing_word("OgEu755", ["enough","these","play","wide","wonder","box","arrive","money","tax","thus"]) == "enough"
p shortest_completing_word("iMSlpe4", ["claim","consumer","student","camera","public","never","wonder","simple","thought","use"]) == "simple"
