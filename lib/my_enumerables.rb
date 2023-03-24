module Enumerable
  # Your code goes here
  def my_count
    items = self
    return items.length unless block_given?

    i = 0
    count = 0

    while i < items.length
      result = yield items[i]
      count += 1 if result == true
      i += 1
    end

    count
  end

  def my_any?
    items = self
    i = 0

    while i < items.length
      result = yield items[i]
      return true if result == true

      i += 1
    end

    false
  end

  def my_all?
    items = self
    i = 0

    while i < items.length
      result = yield items[i]
      return false if result == false

      i += 1
    end

    true
  end

  def my_select(&block)
    items = self
    i = 0
    arr = []

    while i < items.length
      result = block.call(items[i])
      arr << items[i] if result == true
      i += 1
    end

    arr
  end

  def my_none?
    items = self
    i = 0

    while i < items.length
      result = yield items[i]
      return false if result == true

      i += 1
    end

    true
  end

  def my_map(&block)
    items = self
    i = 0
    arr = []

    while i < items.length
      arr << block.call(self[i])
      i += 1
    end

    arr
  end


end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  # Define my_each here
  def my_each
    i = 0
    items = self

    while i < items.length
      result = yield items[i]
      i += 1
    end

    result.nil? == false ? result : items
  end
end
