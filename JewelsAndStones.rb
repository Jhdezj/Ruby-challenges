# @param {String} j
# @param {String} s
# @return {Integer}
def num_jewels_in_stones(j, s)
   number = 0
   (0..(j.length-1)).each do |i|
      number+=s.count j[i]
    end
    return number
  
end


j="aA"
s="aAAbbbbabbbbccccsbaaaAAAAb"

print num_jewels_in_stones(j,s)