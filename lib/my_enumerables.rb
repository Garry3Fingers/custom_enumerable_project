module Enumerable
  # Your code goes here
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
