# 1491. Average Salary Excluding the Minimum and Maximum Salary
# Given an array of unique integers salary where salary[i] is the salary of the employee i.

# Return the average salary of employees excluding the minimum and maximum salary.



# Example 1:

# Input: salary = [4000,3000,1000,2000]
# Output: 2500.00000
# Explanation: Minimum salary and maximum salary are 1000 and 4000 respectively.
# Average salary excluding minimum and maximum salary is (2000+3000)/2= 2500
# Example 2:

# Input: salary = [1000,2000,3000]
# Output: 2000.00000
# Explanation: Minimum salary and maximum salary are 1000 and 3000 respectively.
# Average salary excluding minimum and maximum salary is (2000)/1= 2000
# Example 3:

# Input: salary = [6000,5000,4000,3000,2000,1000]
# Output: 3500.00000
# Example 4:

# Input: salary = [8000,9000,2000,3000,6000,1000]
# Output: 4750.00000


# Constraints:

# 3 <= salary.length <= 100
# 10^3 <= salary[i] <= 10^6
# salary[i] is unique.
# Answers within 10^-5 of the actual value will be accepted as correct.

def average(salary)
  n = salary.size
  salary.sort!
  (salary[1..n-2].sum/(n-2).to_f).round(5)
end

p average([4000,3000,1000,2000]) == 2500.00000
p average([1000,2000,3000]) == 2000.00000
p average([6000,5000,4000,3000,2000,1000]) == 3500.00000
p average([8000,9000,2000,3000,6000,1000]) == 4750.00000
p average([48000,59000,99000,13000,78000,45000,31000,17000,39000,37000,93000,77000,33000,28000,4000,54000,67000,6000,1000,11000]) == 41111.11111
