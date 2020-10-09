def beautifulTriplets(d, arr)
  origin=arr
  arr = arr.uniq

  tester = 0
  counter = 0
  repetitions=0
  arr.each_with_index do |x, i|

    (1..2*d).each do |y|
      tester+=1 if arr[i + y] == x + d && tester == 0
      tester+=1 if arr[i + y] == x + 2*d && tester == 1
      break if tester == 2
    end
    counter = counter +  origin.count(arr[i]) if tester == 2
    tester = 0
  end

  arr.find_all {|e| arr.rindex(e) != arr.index(e) }.uniq

return counter

end


  arr= [1, 2, 4, 5, 7, 8, 10]
  d= 3
  print beautifulTriplets(d, arr)
