# Cryptocurrency is all the rage. You have decided to create your own,
# KelloggCoin, that will massively disrupt financial markets at the Global
# Hub.

# Don't change the following code, which represents a series of transactions, each
# of which represents a transfer of KelloggCoin from one user to another – transactions 
# with no from_user are from the "ICO" (Initial Coin Offering)

blockchain = [
  { from_user: nil, to_user: "ben", amount: 20000 },
  { from_user: nil, to_user: "brian", amount: 20000 },
  { from_user: "ben", to_user: "evan", amount: 9000 },
  { from_user: "brian", to_user: "anthony", amount: 7000 },
  { from_user: "evan", to_user: "anthony", amount: 400 },
  { from_user: "ben", to_user: "anthony", amount: 1500 },
  { from_user: "anthony", to_user: "ben", amount: 4500 },
  { from_user: "anthony", to_user: "evan", amount: 1750 }
]

# Write code below that returns the number of KelloggCoin that each user has in their 
# KelloggCoin "wallet".

# It should print out:
# Ben's KelloggCoin balance is 14000
# Brian's KelloggCoin balance is 13000
# Evan's KelloggCoin balance is 10350
# Anthony's KelloggCoin balance is 2650

# 👇👇👇 Your code HERE 👇👇👇


ben_total = 0
brian_total = 0
evan_total = 0
anthony_total = 0

## How can I loop through the different names?
## ideas: use a loop to create a variable for each name. then use those variables and incorporate in the loop
#ben withdrawals
for row in blockchain
    if row [:from_user] == 'ben'
    amount= row [:amount]
    ben_total = ben_total - amount
 end
end
#ben income
for row in blockchain
  if row [:to_user] == 'ben'
    amount= row [:amount]
    ben_total = ben_total + amount
 end
end

#brian withdrawals
for row in blockchain
    if row [:from_user] == 'brian'
    amount= row [:amount]
    brian_total = brian_total - amount
 end
end
#brian income
for row in blockchain
  if row [:to_user] == 'brian'
    amount= row [:amount]
    brian_total = brian_total + amount
 end
end

#evan withdrawals
for row in blockchain
    if row [:from_user] == 'evan'
    amount= row [:amount]
    evan_total = evan_total - amount
 end
end
#evan income
for row in blockchain
  if row [:to_user] == 'evan'
    amount= row [:amount]
    evan_total = evan_total + amount
 end
end

#anthony withdrawals
for row in blockchain
    if row [:from_user] == 'anthony'
    amount= row [:amount]
    anthony_total = anthony_total - amount
 end
end

#anthony income
for row in blockchain
  if row [:to_user] == 'anthony'
    amount= row [:amount]
    anthony_total = anthony_total + amount
 end
end

puts "Ben's KelloggCoin balance is #{ben_total}" 
puts "Brian's KelloggCoin balance is #{brian_total}"
puts "Evan's KelloggCoin balance is #{evan_total}"
puts "Anthony's KelloggCoin balance is #{anthony_total}"