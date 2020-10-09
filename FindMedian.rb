def findMedian(arr)
  arr = arr.sort
return arr[(arr.length-1)/2]
end

arr = [0, 1, 2, 4, 6, 5, 3,6,7,0,3]

print findMedian(arr)
