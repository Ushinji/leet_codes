# frozen_string_literal: true

# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
  buy = prices[0]
  profit = 0
  prices.each do |price|
    buy = [buy, price].min
    profit = price - buy if profit < price - buy
  end
  profit
end
