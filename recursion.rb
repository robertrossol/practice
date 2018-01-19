# 1. Write a recursive function that prints out the word “INCEPTION” 15 times.
# 2. Write a recursive function that prints out all even numbers from 0 to 100.
# 3. Write a recursive function that adds the sum of all numbers from 1 to 1000.
# 4. Write a recursive function that accepts an array of numbers and returns the sum.
# 5. Write a recursive function that accepts a number and returns its factorial. (The factorial of 5, for example, is 5 * 4 * 3 * 2 * 1 = 120.)

# 1
def inception(x)
  puts 'INCEPTION'
  inception(x - 1) if x > 0
end
inception(15)

# 2
def even(n)
  n -= 1 if n.odd?
  puts n - even(n - 2).to_i if n >= 0
end

even(49)

# 3
def sum(num)
  num + sum(num - 1).to_i if num > 0
end
puts sum(10)

# 4
def array_sum(array)
  if array.length == 1
    array.shift
  else
    array.shift + array_sum(array)
  end
end
puts array_sum([5, 6, 8, 10, 23])

# 5
def factorial(y)
  if y > 1
    y * factorial(y - 1)
  else
    1
  end
end

puts factorial(5)

# Fibonacci numbers are numbers that follow this pattern: 1, 1, 2, 3, 5, 8, 13, 21, 34, ... that is, each number is the sum of the two immediate numbers that precede it. 
# 6 Write a recursive function that prints out the list of fibonacci numbers up to 987.
# 7 Write a recursive function that reverses a string.
# 8 Write a recursive function that accepts two numbers (a numerator and denominator), and returns the remainder if you divide the numerator by the denominator. The catch: Do not use the modulo operator!
# 9 Write a recursive function that accepts two numbers and calculates one by the power of the other. For example, if the numbers were 2 and 5, it would calculate 25. Do not use any built-in power operations provided by your computer language.

# 6
def fib_nums(final)
  return final if (0..1).include? final
  (fib_nums( final - 1) + fib_nums( final - 2) )
end

puts fib_nums(7)