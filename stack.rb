class Stack

  def initialize(str)
    @list = str.split(//)
  end

  def pop
    @list.pop
  end

  def push(element)
    @list.push(element)
    self
  end

  def size
    @list.length
  end

  def peek
    @list[@list.size - 1]
  end

end
