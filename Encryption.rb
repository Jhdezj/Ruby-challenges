def encryption(s)
  rows = Math.sqrt(s.length).floor()
  columns= Math.sqrt(s.length).ceil()
puts rows
puts columns
rows+=1 if rows*columns < s.length

k=0
matrix =  Array.new(rows) { Array.new(columns){0} }
string = []

(1..rows).each_with_index do |x, i|
  (1..columns).each_with_index do |y, j|
    matrix[i][j] = s[k] if k < s.length
    k += 1
    print "#{matrix[i][j]} "
  end
  print "\n"
end

k=0
(1..columns).each_with_index do |x, i|
  (1..rows).each_with_index do |y, j|
    if matrix[j][i] != 0
      string[k] = matrix[j][i]
      #print "#{string[k]} "
      k += 1
    end
  end
  string[k]=" "
  k += 1
end



print string.join.delete_suffix(" ")
end

string= "chillout"
encryption(string)
#print string
