
class Exercise
  attr_accessor :array
  def initialize(array = [])
    @array = array
  end

  def remove_dups
    if array.empty?
      []
    else
      array.uniq
    end
  end

  def two_sum
    return [] if array.empty?
    result = []
    i = 0
    while i < @array.length
      j = i + 1
      while j < @array.length
        if @array[i] + @array[j] == 0
          result << [i, j]
        end

        j += 1
      end

      i += 1
    end
    result
  end

  def my_transpose
    new_array = Array.new(3) { Array.new(3) }

    @array.each_with_index do |row, i|
      @array.each_with_index do |cell, j|
        new_array[i][j] = @array[j][i]
      end
    end

    new_array
  end

end
