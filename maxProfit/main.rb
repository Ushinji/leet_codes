def max_profit(prices)
  i = 0
  valley = prices[0]
  peak = prices[0]
  maxprofit = 0

  while i < prices.size - 1
    while (i < prices.size - 1 && prices[i] >= prices[i + 1])
      i += 1
    end
    valley = prices[i]
    while (i < prices.size - 1 && prices[i] <= prices[i + 1])
      i += 1
    end
    peak = prices[i]
    maxprofit += peak - valley
  end
  maxprofit
end

puts max_profit([1,2,3,4,5])
