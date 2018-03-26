denominations = [20, 10, 5]
bills = []
amount = 65
denominations.each do |bill|
  # puts bill
  while amount - bill >= 0
    puts amount
    amount -= bill
    # bills << bill
  end
  # bills
end
# bills
