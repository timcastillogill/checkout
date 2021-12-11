class Checkout
  attr_reader :prices, :total
  private :prices

  def initialize(prices)
    @prices = prices
    @total = 0
  end

  def scan(item)
    basket << item.to_sym
  end

  def total
    basket_count.each do |item, count|
      if item == :apple || item == :pear
        if (count % 2 == 0)
          @total += prices.fetch(item) * (count / 2)
        else
          @total += prices.fetch(item) * count
        end
      elsif item == :banana || item == :pineapple
        if item == :pineapple
          @total += (prices.fetch(item) / 2)
          @total += (prices.fetch(item)) * (count - 1)
        else
          @total += (prices.fetch(item) / 2) * count
        end
      else
        @total += prices.fetch(item) * count
      end
    end

    @total
  end

  def basket_count
    basket.inject(Hash.new(0)) { |items, item| items[item] += 1; items }
  end

  private


  def basket
    @basket ||= Array.new
  end
end
