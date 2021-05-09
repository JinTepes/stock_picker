
def stock_picker(stockPrices)
    buy=0
    sell=0
    profit=0
    for i in 0...(stockPrices.length-1)
        for y in (i+1)...stockPrices.length
            cProfit = stockPrices[y]-stockPrices[i]
            if(cProfit>profit)
                profit = cProfit
                buy = i
                sell = y
            end
        end
    end
    puts "Buy at Day: "+buy.to_s
    puts "Sell at Day: "+sell.to_s
    puts "Profit: "+profit.to_s
end

stock_picker([17,3,6,9,15,8,6,1,10])