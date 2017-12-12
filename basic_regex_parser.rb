# Basic Regex Parser -- as sourced from www.Pramp.com

# Implement a regular expression function isMatch that supports the '.' and '*' symbols. The function receives two strings - text and pattern - and should return true if the text matches the pattern as a regular expression. For simplicity, assume that the actual symbols '.' and '*' do not appear in the text string and are used as special symbols only in the pattern string.

# In case you aren’t familiar with regular expressions, the function determines if the text and pattern are the equal, where the '.' is treated as a single a character wildcard (see third example), and '*' is matched for a zero or more sequence of the previous letter (see fourth and fifth examples). For more information on regular expression matching, see the Regular Expression Wikipedia page.

# Explain your algorithm, and analyze its time and space complexities.
# __________________________________________________________________

# text = "abbbbbcd" OR "acg"
# pattern = "ab*c."
# output = true

# Pseudocode----------
# I am thinking that after base cases there will be stacks to compare

# base cases =
  # if (text == pattern) RETURN true
  # if (pattern does not include * or .) & (does not match text) RETURN false
