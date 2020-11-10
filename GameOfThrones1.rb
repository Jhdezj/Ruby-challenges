def gameOfThrones(s)
    counter=0    
    each_char do |x|
        x.count x
        break if counter > 1
    end
    return "NO" if counter >1
    return "YES"
end
puts gameOfThrones("cdefghmnopqrstuvw")

