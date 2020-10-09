def findDigits(n)
  array_digits = n.digits.reverse

  counter = 0
  array_digits.each do |x|
    if x != 0
      counter = counter += 1 if (n % x).zero?
    end
  end
  counter
end

number = 12345608
puts findDigits(number)
