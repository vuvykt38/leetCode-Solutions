# 744. Find Smallest Letter Greater Than Target
# Given a list of sorted characters letters containing only lowercase letters, and given a target letter target, find the smallest element in the list that is larger than the given target.

# Letters also wrap around. For example, if the target is target = 'z' and letters = ['a', 'b'], the answer is 'a'.

# Examples:
# Input:
# letters = ["c", "f", "j"]
# target = "a"
# Output: "c"

# Input:
# letters = ["c", "f", "j"]
# target = "c"
# Output: "f"

# Input:
# letters = ["c", "f", "j"]
# target = "d"
# Output: "f"

# Input:
# letters = ["c", "f", "j"]
# target = "g"
# Output: "j"

# Input:
# letters = ["c", "f", "j"]
# target = "j"
# Output: "c"

# Input:
# letters = ["c", "f", "j"]
# target = "k"
# Output: "c"
# Note:
# letters has a length in range [2, 10000].
# letters consists of lowercase letters, and contains at least 2 unique letters.
# target is a lowercase letter.

def next_greatest_letter(letters, target)
  return letters[0] if letters[0] > target
  i = 1
  while i < letters.size
    # p "letters[i+1]: #{letters[i+1]}, letters[i]: #{letters[i]}"
    letters[i] > target ? result = letters[i] : result = letters[0]
  i += 1
  end
  result
end

p next_greatest_letter(["c", "f", "j"], "a")
p next_greatest_letter(["c", "f", "j"], "g")
p next_greatest_letter(["c", "f", "j"], "c")

