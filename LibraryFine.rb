​def libraryFine(d1, m1, y1, d2, m2, y2)
  return (d1-d2)*15 if y1 == y2 && m1 == m2 && d1 > d2
  return (m1-m2)*500 if y1 == y2 && m1 > m2
  return 10000 if y1 > y2
  return 0 if y1 <= y2 || m1 <= m2 || d1 <= d2

end


d1= 9
d2 = 6
m1 = 9
m2 = 6
y1 = 2017
y2 = 2015

puts libraryFine(d1, m1, y1, d2, m2, y2)
