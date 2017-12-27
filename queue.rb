class Queue

  attr_accessor :list

  def initialize(items)
    if items.class == String
      @list = items.split(//)
    end
    if items.class == Array
      @list = items
    end
  end

  def pop
    @list.delete_at(0)
  end

  def push(element)
    @list.push(element)
    self
  end

  def size
    @list.length
  end

  def peek
    @list[0]
  end

end
