#write your code here
def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

def sum(nums)
  total = 0
  nums.each do |n| #learn about the each method and what |n| means.
    total += n
  end
  total
end

def multiply(nums)
  total = 1
  nums.each do |n| #learn about the each method and what |n| means.
    total *= n
  end
  total
end

def power(a, b)
  a ** b
end

# Factorial calculation using a for loop
# def factorial(n)
#   total = 1
#   n.times do
#     total *= n
#     n -= 1
#   end
#   return total
# end

# Factorial calculation using recurive loop
def factorial(n)
  if n <= 1
    return 1
  else
    n * factorial(n-1)
  end
end