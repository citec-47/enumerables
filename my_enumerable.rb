module MyEnumerable
  def my_all?
    if block_given?
      my_each { |i| return false unless yield(i) }
    else
      my_each { |i| return false unless i }
    end
    true
  end

  def my_any?
    if block_given?
      my_each { |i| return true if yield(i) }
    else
      my_each { |i| return true if i }
    end
    false
  end

  def my_filter
    result = []
    if block_given?
      my_each { |i| result << i if yield(i) }
    else
      result = self.to_a
    end
    result
  end
end