class MyArray
  attr_accessor :array

  def initialize(arr = [])
    @array = arr
  end

  def size
    # TODO
    @array.length
  end

  def reverse
    # TODO
    @array.reverse
  end

  def max
    # TODO
    @array.max
  end

  def min
    # TODO
    @array.min
  end

  def desc
    # TODO
    @array.sort.reverse
  end

  def asc
    # TODO
    @array.sort
  end

  def odd
    # TODO
    @array.select(&:odd?)
  end

  def multiple_to_three
    # TODO
    @array.select { |a| (a % 3).zero? }
  end

  def uniq
    # TODO
    @array.uniq
  end

  def devide_on_ten
    # TODO
    @array.map { |a| a / 10.0 }
  end

  def chars
    # TODO
    @array.select { |y| y.between?(1, 26) }.map do |x|
      ('a'..'z').to_a[x - 1].to_sym
    end
  end

  def switch
    # TODO
    max_i = @array.index(@array.max)
    min_i = @array.index(@array.min)
    @array[min_i], @array[max_i] = @array[max_i], @array[min_i]
    @array
  end

  def before_min
    # TODO
    min = @array.min
    @array.select { |a| a < min }
  end

  def three_smallest
    # TODO
    @array.sort.select { |a| a < 4 }
  end
end
