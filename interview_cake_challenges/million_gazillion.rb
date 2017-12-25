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

  def visited?(url)
    curr_node = @root_node
    has_url_been_visited = true
    # for each char, check if it exists as a key already in current location of nested hash, if not: make it a new key and mark this as a new url
    url.each_char do |char|
      if !curr_node.key? char
        has_url_been_visited = false
        curr_node[char] = {}
      end
      curr_node = curr_node[char]
    end
    # Make sure that the end of the url is noted so that is 'aws.com/ec2' was visited before, visiting 'aws.com' will still be available as an unvisited url
    if !curr_node.key? "End of input"
      has_url_been_visited = false
      curr_node["End of input"] = {}
    end
    return has_url_been_visited
  end

end
