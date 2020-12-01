def timeInWords(h, m)
  hours = {
      1 => 'one',
      2 => 'two',
      3 => 'three',
      4 => 'four',
      5 => 'five',
      6 => 'six',
      7 => 'seven',
      8 => 'eight',
      9 => 'nine',
      10 => 'ten',
      11 => 'eleven',
      12 => 'twelve'
    }
      
  minutes = {
      1 => 'one',
      2 => 'two',
      3 => 'three',
      4 => 'four',
      5 => 'five',
      6 => 'six',
      7 => 'seven',
      8 => 'eight',
      9 => 'nine',
      10 => 'ten',
      11 => 'eleven',
      12 => 'twelve',
      13 => 'thirteen',
      14 => 'fourteen',
      15 => 'quarter',
      16 => 'sixteen',
      17 => 'seventeen',
      18 => 'eighteen',
      19 => 'nineteen',
      20 => 'twenty',
      21 => 'twenty one',
      22 => 'twenty two',
      23 => 'twenty three',
      24 => 'twenty four',
      25 => 'twenty five',
      26 => 'twenty six',
      27 => 'twenty seven',
      28 => 'twenty eight',
      29 => 'twenty nine',
      30 => 'half'
    }
  
    if m.zero?
      return "#{hours[h]} o' clock"
    
    elsif m == 1
        return "#{minutes[m]} minute past #{hours[h]}"
    elsif m == 59
        return "#{minutes[60-m]} minute to #{hours[h+1]}"
      
    elsif m == 15 or m == 30
      return "#{minutes[m]} past #{hours[h]}"
  
    elsif m == 45
      return "#{minutes[60-m]} to #{hours[h+1]}"
  
    elsif m < 30
      return "#{minutes[m]} minutes past #{hours[h]}"
  
    elsif m > 30
      return "#{minutes[(60 - m)]} minutes to #{hours[h+1]}"
    end
  
  end

  print timeInWords(5, 1)