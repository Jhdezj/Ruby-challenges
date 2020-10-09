
 
  

  
#100.times{|i| i%15==0? (puts "FizzBuzz") : (i%5==0? (puts "Fizz") : (puts "Buzz" if i % 3 == 0))}

#while

#15*(i) 3, 5, 15

#101.times {|x|puts "Fizz"*(x%3 < 1?1:0)+"Buzz"*(x%5 < 1?1:0) + "#{x}"*(x%3!=0 && x%5!=0?1:0)}

101.times{|x|puts x%15 <1? "FizzBuzz": x%5 < 1? "Buzz": x%3 < 1? "Fizz": x} 