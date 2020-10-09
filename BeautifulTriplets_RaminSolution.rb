#!/bin/ruby

require 'json'
require 'stringio'

# Complete the beautifulTriplets function below.
def beautifulTriplets(d, arr)
  new_arr = []
  arr.each_with_index do |num1, index1|
    arr.each_with_index do |num2, index2|
      if index2 > index1
        if ( num1 + d == num2 )
          arr.each_with_index do |num3, index3|
            if index3 > index2
              if ( num2 + d == num3)
                new_arr.push([num1, num2, num3])
              end
            end
          end
        end
      end
    end
  end
  new_arr.count
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

nd = gets.rstrip.split

n = nd[0].to_i

d = nd[1].to_i

arr = gets.rstrip.split(' ').map(&:to_i)

result = beautifulTriplets d, arr

fptr.write result
fptr.write "\n"

fptr.close()
