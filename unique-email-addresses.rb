# 929. Unique Email Addresses
# Every email consists of a local name and a domain name, separated by the @ sign.

# For example, in alice@leetcode.com, alice is the local name, and leetcode.com is the domain name.

# Besides lowercase letters, these emails may contain '.'s or '+'s.

# If you add periods ('.') between some characters in the local name part of an email address, mail sent there will be forwarded to the same address without dots in the local name.  For example, "alice.z@leetcode.com" and "alicez@leetcode.com" forward to the same email address.  (Note that this rule does not apply for domain names.)

# If you add a plus ('+') in the local name, everything after the first plus sign will be ignored. This allows certain emails to be filtered, for example m.y+name@email.com will be forwarded to my@email.com.  (Again, this rule does not apply for domain names.)

# It is possible to use both of these rules at the same time.

# Given a list of emails, we send one email to each address in the list.  How many different addresses actually receive mails?



# Example 1:

# Input: ["test.email+alex@leetcode.com","test.e.mail+bob.cathy@leetcode.com","testemail+david@lee.tcode.com"]
# Output: 2
# Explanation: "testemail@leetcode.com" and "testemail@lee.tcode.com" actually receive mails


# Note:

# 1 <= emails[i].length <= 100
# 1 <= emails.length <= 100
# Each emails[i] contains exactly one '@' character.
# All local and domain names are non-empty.
# Local names do not start with a '+' character.

# def num_unique_emails(emails)
#   # convert each email to a valid form (remove dot + the part after +)
#   new_arr = []
#   emails.each do |e|
#     new_arr << return_valid_local_name(e)
#   end
#   # store valid email to an arr << get only uniq one
#   p new_arr.uniq
#   # count the uniq email
#   p new_arr.uniq.count
# end

# def return_valid_local_name(string)
#   domain_name = string.split("@")[1]
#   string.split("@")[0].delete(".").split("+")[0] + "@" + domain_name
# end

# num_unique_emails(["test.email+alex@leetcode.com","test.e.mail+bob.cathy@leetcode.com","testemail+david@lee.tcode.com"])
# num_unique_emails(["test.email+alex@leetcode.com","test.e.mail+bob.cathy@leetcode.com","testemail+david@lee.tcode.com", "test.email.124.+email+david@lee.tcode.com"])
# num_unique_emails(["test.email+alex@leetcode.com"])

def unique_element(arr)
  h = {}
  h.default = 0
  arr.each do |e|
    h[e] += 1
  end
 new_arr = []
 h.each {|key, value|  new_arr << key}
 new_arr
end

p unique_element([1,2,3,4,5,2,3])
p unique_element([1,2,3,4,5,2,3,4,7,8,942,1,1,1])
p unique_element(["ascd", "abc", "abc", "def"])
