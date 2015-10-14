# Implement your procedural solution here!
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
  # Multiply each factor the greatest number of times it occurs in any of the numbers. 9 has
  # two 3s, and 21 has one 7, so we multiply 3 two times, and 7 once. This gives us 63, the smallest
  # number that can be divided evenly by 3, 9, and 21.
  def smallest_multiple(num)
    counter = num
      loop do
        if (1..num).all? { |i| counter % i == 0 }
          break
        else
          counter += num
        end
      end
    counter
  end
