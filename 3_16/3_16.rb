def check_date(num)
    days_in_month = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    day, month = 0, 0
    if num >= 11 && num <= 99
      return true
    end
    if num >= 101 && num <= 999
      day = num / 10
      month = num % 10
      if days_in_month[month - 1] >= day
        return true
      end
      day = num / 100
      month = num % 100
      if month >= 1 && month <= 12 && days_in_month[month - 1] >= day
        return true
      end
    end
    if num >= 1000 && num < 9999
      day = num / 100
      month = num % 100
      if month >= 1 && month <= 12 && days_in_month[month - 1] >= day
        return true
      end
    end
    false
  end
  
  count = gets.to_i
  numbers = []
  count.times do
    n = gets.to_i
    numbers.push(n)
  end
  
  numbers.each do |n|
    if check_date(n)
      puts "Yes"
    else
      puts "No"
    end
  end
  