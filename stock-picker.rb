#this method takes an array of stock prices, 1 for each day,
#returns an array with a pair of the best day to buy and best day to sell

def stock_picker (prices)
  days = prices.length
  max_profit = 0
  max_profit_days = []
  for buy in 0..(days - 2)
    for sell in (buy + 1)..(days - 1)
			profit = prices[sell] - prices[buy]
			if profit > max_profit
				max_profit = profit
				max_profit_days = [buy, sell]
			end
		end
	end
	max_profit_days
end

puts stock_picker([17,3,6,9,15,8,6,1,10])






