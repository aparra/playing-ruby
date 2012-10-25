class Array
  def percentil(p)
    m = sort()
    k = m.size * p
    
    if (k % 100) > 0
      k /= 100.0
      return m[k.ceil - 1] 
    else
      k /= 100
      return (m[k - 1] + m[k]) / 2.0
    end
  end
end
    
puts [28, 18, 49, 18, 21, 22, 19, 34].percentil(25)
puts [28, 18, 49, 18, 21, 22, 19, 34].percentil(50)
puts [28, 18, 49, 18, 21, 22, 19, 34].percentil(75)
puts [28, 18, 49, 18, 21, 22, 19, 34].percentil(40)
