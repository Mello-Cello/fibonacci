# Computes the nth fibonacci number in the series starting with 0.
# fibonacci series: 0 1 1 2 3 5 8 13 21 ...
# e.g. 0th fibonacci number is 0
# e.g. 1st fibonacci number is 1
# ....
# e.g. 6th fibonacci number is 8

# Time complexity: O(n) where n is value passed into the method as n
# Space complexity: O(1) / constant; no new space is required after initial variables are established
def fibonacci(n)
  raise ArgumentError if !n || n < 0
  return n if n < 2

  num_first = 0
  num_second = 1
  sum = 0

  (n - 1).times do
    sum = num_second + num_first
    num_first = num_second
    num_second = sum
  end

  return sum
end
