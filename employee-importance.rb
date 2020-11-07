# 690. Employee Importance
# You are given a data structure of employee information, which includes the employee's unique id, their importance value and their direct subordinates' id.

# For example, employee 1 is the leader of employee 2, and employee 2 is the leader of employee 3. They have importance value 15, 10 and 5, respectively. Then employee 1 has a data structure like [1, 15, [2]], and employee 2 has [2, 10, [3]], and employee 3 has [3, 5, []]. Note that although employee 3 is also a subordinate of employee 1, the relationship is not direct.

# Now given the employee information of a company, and an employee id, you need to return the total importance value of this employee and all their subordinates.

# Example 1:

# Input: [[1, 5, [2, 3]], [2, 3, []], [3, 3, []]], 1
# Output: 11
# Explanation:
# Employee 1 has importance value 5, and he has two direct subordinates: employee 2 and employee 3. They both have importance value 3. So the total importance value of employee 1 is 5 + 3 + 3 = 11.


# Note:

# One employee has at most one direct leader and may have several subordinates.
# The maximum number of employees won't exceed 2000.

# def get_importance(employees, id)
#   h_importance_value = {}
#   h_importance_value.default = 0
#   employees.each do |e|
#     h_importance_value[e[0]] = e[1]
#   end

#   h_subordinates = {}
#   h_subordinates.default = 0
#   employees.each do |e|
#     h_subordinates[e[0]] = e[2]
#   end


#   importance_value = h_importance_value[id]

#   t = nil
#   employees.map { |e| t = e if e[0] == id}

#   subordinates = t[2].map { |e| h_subordinates[e]}
#   t[2] << subordinates
#   p subordinates_arr = t[2].flatten


#   subordinates_arr.each do |e|
#     importance_value += h_importance_value[e]
#   end

#   importance_value
# end

# # p get_importance([[1,5,[2,3]],[2,3,[4]],[3,4,[4]],[4,1,[]]], 1) == 14
# p get_importance([[1,50,[2]],[2,89,[3]],[3,69,[4]],[4,52,[5,26]],[5,78,[6,7]],[6,63,[]],[7,55,[8]],[8,88,[9,25]],[9,64,[10]],[10,54,[11,19]],[11,81,[12]],[12,83,[13,18]],[13,58,[14,15]],[14,64,[]],[15,97,[16]],[16,67,[17]],[17,56,[]],[18,64,[]],[19,95,[20,23]],[20,70,[21,22]],[21,74,[]],[22,95,[]],[23,56,[24]],[24,100,[]],[25,69,[]],[26,98,[]]], 9) == 1178
# # p get_importance([[1, 5, [2, 3]], [2, 3, []], [3, 3, []]], 1) == 11
# # p get_importance([[1, 5, [2, 3]], [2, 3, []], [3, 3, []]], 2) == 3
# # p get_importance([[1, 5, [2, 3]], [2, 3, []], [3, 3, []]], 3) == 3

def get_importance(employees, id)
  n = employees.size
  h_subordinates = {}
  h_subordinates.default = 0
  employees.each do |e|
    h_subordinates[e[0]] = e[2]
  end

  arr_sub = h_subordinates[id]

  i = 0
  while i < n
    # p "i: #{i}, #{arr_sub[i]}"
    arr_sub.push(*h_subordinates[arr_sub[i]]) if h_subordinates[arr_sub[i]] != 0
    i += 1
  end

  arr_sub << id
  arr_sub

  h_importance_value = {}
  h_importance_value.default = 0
  employees.each do |e|
    h_importance_value[e[0]] = e[1]
  end

  sum = 0
  arr_sub.each do |e|
    sum += h_importance_value[e]
  end
  sum
end

p get_importance([[1,5,[2,3]],[2,3,[4]],[3,4,[4]],[4,1,[]]], 1) == 14
p get_importance([[1,50,[2]],[2,89,[3]],[3,69,[4]],[4,52,[5,26]],[5,78,[6,7]],[6,63,[]],[7,55,[8]],[8,88,[9,25]],[9,64,[10]],[10,54,[11,19]],[11,81,[12]],[12,83,[13,18]],[13,58,[14,15]],[14,64,[]],[15,97,[16]],[16,67,[17]],[17,56,[]],[18,64,[]],[19,95,[20,23]],[20,70,[21,22]],[21,74,[]],[22,95,[]],[23,56,[24]],[24,100,[]],[25,69,[]],[26,98,[]]], 9) == 1178
p get_importance([[1, 5, [2, 3]], [2, 3, []], [3, 3, []]], 1) == 11
p get_importance([[1, 5, [2, 3]], [2, 3, []], [3, 3, []]], 2) == 3
p get_importance([[1, 5, [2, 3]], [2, 3, []], [3, 3, []]], 3) == 3
