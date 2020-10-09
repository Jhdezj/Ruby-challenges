def bonAppetit(bill, k, b)

  total = 0
  bill.each do |x|
    total += x
  end
      
  annas_bill = (total - bill[k]) / 2

  return 'Bon Appetit' if (b - annas_bill).zero?
    
  b - annas_bill
end


bill= [3, 10, 2, 9]
k= 1
b= 7
print bonAppetit(bill, k, b)
