#!/usr/bin/env ruby

# initialize global variables

stock = [100, 65, 5,10 ,3 ,60 ,5, 100, 0]
result = Array.new

def stock_picker(stock, result)

  highest_rate = 0

  stock.each_with_index do
    |day_buy, index_buy|

    stock[index_buy..-1].each_with_index do
      |day_sell, index_sell|

      rate = day_sell - day_buy

      # Evaluates the values and chooses the best ratio

      if rate >=  highest_rate
        highest_rate = rate

        result[0] = index_buy
        result[1] = index_sell + index_buy

      end

    end

  end

end

stock_picker(stock, result)

p stock
p result
