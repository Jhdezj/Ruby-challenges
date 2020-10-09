def equalizeArray(arr)
  instances = []
  unique_array = arr.uniq

  unique_array.each do |x|
    instances << arr.count(x)
  end
  print arr
  print "\n"
  
  print " unique array #{unique_array}"
  print "\n"
  print "instances : #{instances}\n"
  print "max_instances:  #{instances.max}\n"
  print  "number: #{unique_array[instances.index(instances.max)]}\n"
 print "equilize: #{arr.length - instances.max}"




end

arr = [3,3,2,1,3]

equalizeArray(arr)
