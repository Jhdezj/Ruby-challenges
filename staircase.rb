def staircase(n)
  spaces = n-1
  columns = n
  rows = n

  (1..rows).each do |x|
    (1..columns).each do |y|
    print " " if y <= spaces 
    print "#" if  y > spaces 
    #print "#{y} "
    end
    spaces-=1
    print "\n"
  end
end

staircase(5)
339

3396900000