# Implement your object-oriented solution here!
# objective: find the lowest common multiple of a range of numbers
# how do you know its a multiple? because dividing by a number will % == 0
# where can you cancel out? do not do ranges to numbers that aren't knowingly a multiple of the numbers you have
class SmallestMultiple

  def initialize(num)
    @num = num
  end

  def lcm
    counter = @num
      loop do
        if (1..@num).all? { |i| counter % i == 0 }
          break
        else
          counter += @num
        end
      end
    counter
  end
end
