fib1=1
fib2=2
total=0
counter=0

while counter<4e16 do
    print fib1 if fib1%2==0
    print " "
 counter = fib2
 if counter % 2 == 0 then
 total += counter
 end
 counter = fib1 + fib2
 fib1 = fib2
 fib2 = counter
end

puts "Answer: #{total}"