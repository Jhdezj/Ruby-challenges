def beautifulTriplets(d, arr)

counter = 0
indicator = false
position = 0

arr.each_with_index do |x, i|
    (1..d).each do |y|
      break if  arr[i + position + y] > x + d
      if x + d == arr[i + position + y]
        indicator = true
        position = position + y
        break
      end
    end
print "---------(#{x})"
    next if indicator == false || x + d > arr.length-1
    print "pos:#{position} "
    (1..d).each do |z|
      print "val: #{arr[i + position + z]} "
      print "x+2d: #{x+2*d} "
      break if arr[i+position + z] > x + 2*d
      if x + 2*d == arr[position + z]
        print "ps:#{arr[position + z]} "
        counter += 1
          print "counter: #{counter}"
        break
      end

      print "algo\n"

    end

    indicator = false
    position = 0
end
return counter
end

arr= [1, 2, 4, 5, 7, 8, 10]
d= 3

print beautifulTriplets(d, arr)
