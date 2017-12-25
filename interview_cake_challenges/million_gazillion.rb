# I'm making a search engine called MillionGazillion™.

# I wrote a crawler that visits web pages, stores a few keywords in a database, and follows links to other web pages. I noticed that my crawler was wasting a lot of time visiting the same pages over and over, so I made a set, visited, where I'm storing URLs I've already visited. Now the crawler only visits a URL if it hasn't already been visited.

# Thing is, the crawler is running on my old desktop computer in my parents' basement (where I totally don't live anymore), and it keeps running out of memory because visited is getting so huge.

# How can I trim down the amount of space taken up by visited?

# ______________________________________________________

# PSEUDOCODE
# 1. First off, I would outsource the storage so that it lives in the cloud where I can monitor and scale the space to what I need without going to my parents house.
# 2. Then, I would create a trie as a hash that follows each letter of a url as it creates a new path or follows an existing one meaning it is visited. This would ensure that we don't use up any duplicate space except for all of the top level domains like '.com' that will get used over and over.

# Example:

                          #    w
                          #    w
                          #    w
                          #    .
                          #  g   t
                          #  o   e
                          #  o  x n
                          #  g  t t
                          #  l  i s
                          #  e  o .
                          #  .  . c
                          #  c  c o
                          #  o  o m
                          #  m  m
class Trie

  def initialize
    @root_node = {}
  end

  def check_if_present_or_add(word)
    curr_node = @root_node
    new_word = false
    
  end

end
