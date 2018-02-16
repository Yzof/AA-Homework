class Stack
  def initialize
    @stack = []
  end

  def add(el)
    @stack.push(el)
  end

  def remove
    @stack.shift
  end

  def show
    @stack
  end
end

class Queue
  def initialize
    @queue = []
  end

  def enqueue(el)
    @queue.unshift(el)
  end

  def dequeue
    @queue.pop
  end

  def show
    @queue
  end
end

class Map
  def initialize
    @map = []
  end

  def assign(key, value)
    included = false

    included = true if lookup(key)

    unless included
      @map << [key, value]
    end
  end

  def lookup(key)
    @map.each do |pair|
      return pair[1] if pair[0] == key
    end
    nil
  end

  def show
    @map
  end

  def remove(key)
    @map.map! { |pair| return pair unless pair[0] == key }
  end
end
