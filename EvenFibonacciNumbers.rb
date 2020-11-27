def fibonacci_even(n)
  a_2 = 2
  a_1 = 1
  aux = a_2
  pairs_sum = 0

  while a_2 < n
    pairs_sum += a_2 if a_2.even?
    a_2 += a_1
    a_1 = aux
    aux = a_2
  end
  pairs_sum
end

puts fibonacci_even(100)
