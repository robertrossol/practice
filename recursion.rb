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

even(100)

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
