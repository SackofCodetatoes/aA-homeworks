class Stack
  def initialize
    # create ivar to store stack here!
    @stack = []
  end

  def push(el)
    # adds an element to the stack
    @stack.push(el)
  end

  def pop
    # removes one element from the stack
    @stack.pop
  end

  def peek
    # returns, but doesn't remove, the top element in the stack
    @stack.last
  end
end

# our_stack = Stack.new
# p our_stack.push('dinner plate')
# p our_stack.push([0,0,0])
# p our_stack.peek
# our_stack.pop
# p our_stack.peek

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

  def peek
    @queue.last
  end
end

# our_queue = Queue.new
# p our_queue.enqueue(1)
# p our_queue.enqueue(2)
# p our_queue.enqueue(3)
# p our_queue.enqueue("4")
# p our_queue.dequeue
# p our_queue.peek
# p our_queue.dequeue
# p our_queue.dequeue
# p our_queue.peek

class Map
  def initialize
    @map = []
  end

  def set(key, value)
    value_set = false
    @map.each_with_index do |el, indx|
      if el.first == key
        @map[indx][-1] = value
        value_set = true
        break
      end
    end

    @map << [key,value] if !value_set
  end

  def get(key)
    result = nil
    @map.each do |el|
      result = el.last if el.first == key
    end
    result
  end

  def delete(key)
    to_remove = [key, self.get(key)]
     @map.delete(to_remove)
     @map
  end

  def show
     @map
  end

end

# my_map = Map.new
# p my_map.set("1", "one")
# p my_map.set("2", "two")
# p my_map.set("3", "three")
#  my_map.set("1", "up")
# p my_map.show
# my_map.get("2")
# p my_map.delete("2")
#
# my_map.delete("3")
#
# p my_map.show
