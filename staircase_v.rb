def staircase(n)
  spaces = n-1
  columns = 2*n-1
  rows = n

  (1..rows).each do |x|
    (1..columns).each do |y|
    print " " if y <= spaces || y > (2*n-1)- spaces
    print "#" if  y > spaces && y <= columns - spaces && (y + x) % 2 == 0
    print " " if  y > spaces && y <= columns - spaces && (y + x) % 2 == 1
    #print "#{y} "
    end
    spaces-=1
    print "\n"
  end
end

staircase(5)