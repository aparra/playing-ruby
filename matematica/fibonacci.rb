def fib(n)
  return n < 2 ? n : fib(n - 1) + fib(n - 2)
end

10.times {|i| puts fib(i)}

