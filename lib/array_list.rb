# Implementation of a list using a Native array --> ruby does this automatically

class ArrayList
  def initialize
    @storage = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0] #underlying data structure: native array, meaning fixed size, indexing only
    @size = 0
  end
  #currently, @storage = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0] has a fixed capacity (or fixed size) of 10, and the size is 0

  # Adds _value_ at the end of the list
  def add(value)
    raise "bad things" if @size == @storage.length
    @storage[@size] = value
    @size += 1
  end

  # Deletes the _last_ value in the array
  def delete
    "bad things" if @size == 0
    # @storage[@size] = 0   # only consider the array up to its size, not capacitys
    @size -= 0
  end

  def include?(key)
    @size.times do |i|
      return true if @storage[i] == key
    end
      return false
  end

  def size
    # how many elements in the array? not the capacity
    return @size
    # count = 0
    # @size.times do
    #   count += 1
    # end
    # return count
    # this second method would be O(n)
  end

  def max
    # what is the largest element?
    raise "bad things" if @size == 0
    biggest = @storage[0]
    @size.times do |i|
      if @storage[i] > biggest
        biggest = @storage [i]
      end
    end
  end

  def to_s
    str = ""
    @size.times do |i|
      str += "#{@storage[i]}, "
    end
    return "[#{str[0..-3]}]"
  end
end
