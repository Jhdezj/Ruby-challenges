def palindromeIndex(s)
  (0..s.length-1).each do |i|
    if s[i]!=s[s.length-1-i]
      (i+1..(s.length-i-1)).each do |j|
        if s[j]!= s[s.length-j]
            (i..(s.length-i-2)).each do |k|
              if s[k]!= s[s.length-k-2]
                return -1
              end
            end
            return s.length-i-1
        end
      end
      return i
    end
  end
  return -1
end


def palindromeIndex2(s)
  return -1 if s.reverse == s
  (0..s.length).each do |i|
    char = s.slice!(i)
    return i if s.reverse==s
    s.insert(i, char)
  end
  return -1
end

s = 'asnitalavalatina'

puts palindromeIndex(s)
