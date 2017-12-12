# Basic Regex Parser -- as sourced from www.Pramp.com

# Implement a regular expression function isMatch that supports the '.' and '*' symbols. The function receives two strings - text and pattern - and should return true if the text matches the pattern as a regular expression. For simplicity, assume that the actual symbols '.' and '*' do not appear in the text string and are used as special symbols only in the pattern string.

# In case you aren’t familiar with regular expressions, the function determines if the text and pattern are the equal, where the '.' is treated as a single a character wildcard (see third example), and '*' is matched for a zero or more sequence of the previous letter (see fourth and fifth examples). For more information on regular expression matching, see the Regular Expression Wikipedia page.

# Explain your algorithm, and analyze its time and space complexities.
# __________________________________________________________________

# text = "abbbbbcd" OR "acg"
# pattern = "ab*c."
# output = true
# temp pattern =

# Pseudocode----------
# I am thinking that after base cases there will be a case statement

# base cases =
  # if (text == pattern) RETURN true
  # if (pattern does not include * or .) & (does not match text) RETURN false

# if pattern includes both . & *
  #

# if pattern includes .
  #

# if pattern includes *
  # make variables for item before star, item before that item, and item after star
    # left_left_neighbor = pattern[star_index - 2]; left_neighbor = pattern[star_index - 1]; right_neighbor = pattern[star_index + 1]
  # if any of these variable are a dot
    #
  # if item 2 before star is null, then text can start with item before star or start with item after star

  # if text starts with item before star, there can be any number of those items in text before item.next has to be equal to item after start in order to RETURN true

  # push text into array
  # push pattern into array
    # when item == *
      # compare index to item at index of text array
        # 
