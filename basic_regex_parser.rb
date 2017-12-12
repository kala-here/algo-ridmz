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

# else push into stacks: text_stack & patter_stack

def recursive_compare(tex, patt)
# if we have reached the end of both at the same time, they are a match
  if tex.peak == nil && patt.peak == nil
    return true
  end
# if we have reached the end of the text and pattern is not completed, they do not match
  if text.peak == nil && patt.peak != nil
    return false
  end
# If they are equal or a dot, pop both off and continue on to next
  if tex.peak == patt.peak || patt.peak == '.'
    tex.pop
    patt.pop
  end

  if patt.peak == '*'
    patt.pop
    if tex.peak != patt.peak # if *'s left neighbor does not match text, pop off pattern and compare again
      patt.pop
      if tex.peak != patt.peak # now they must match in order to be a whole match
        return false
      end
    end
    if tex.peak == patt.peak # here we check to see if *'s left neighbor does match text, then pop off text items until they don't match, then pop off pattern & compare next two items
      until tex.peak != patt.peak
        tex.pop
      end
      if text.peak != patt.peak
        patt.pop
      end
    end
  end

  if tex.peak != patt.peak
    return false
  end
end
