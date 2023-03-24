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
