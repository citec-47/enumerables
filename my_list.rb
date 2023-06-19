require_relative 'my_enumerable'

class MyList
  include MyEnumerable

  def initialize(list)
    @list = list
  end

  def my_each
    if block_given?
      i = 0
      until i == @list.length
        yield(@list[i])
        i += 1
      end
    end
    @list
  end

  def print_list
    print @list
  end
end

list = MyList.new([1, 2, 3, 4])

puts(list.my_all? { |e| e < 5 })
puts(list.my_all? { |e| e > 5 })

puts(list.my_any? { |e| e == 2 })
puts(list.my_any? { |e| e == 5 })
