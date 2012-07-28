def fatorial(n)
  return n <= 1 ? n : n * fatorial(n - 1)
end

10.times {|n| puts fatorial(n)}