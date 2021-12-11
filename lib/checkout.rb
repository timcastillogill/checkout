class Checkout
  attr_reader :prices, :total
  private :prices

  def initialize(prices)
    @prices = prices
    @total_cost = 0
  end

  def scan(item)
    basket << item.to_sym
  end

  def total
    basket_count.each do |item, count|
      case item 
      when :apple, :pear
        count % 2 == 0 ? two_for_one(item, count) : no_deal(item, count)
      when :banana
        half_price_offer(item, count)
      when :pineapple
        half_price_restricted_to_one_per_person(item, count)
      when :mango
        count % 4 == 0 ? three_get_one_free(item, count) : no_deal(item, count)
      else
        no_deal(item, count)
      end
    end

    @total_cost
  end
  

  private

  def basket_count
    basket.inject(Hash.new(0)) { |items, item| items[item] += 1; items }
  end

  def no_deal(item, count)
    @total_cost += prices.fetch(item) * count
  end

  def two_for_one(item, count)
      @total_cost += prices.fetch(item) * (count / 2)
  end

  def three_get_one_free(item, count)
    @total_cost += prices.fetch(item) * (count - 1)
  end

  def half_price_restricted_to_one_per_person(item, count)
    @total_cost += (prices.fetch(item) / 2)
    @total_cost += (prices.fetch(item)) * (count - 1)
  end

  def half_price_offer(item, count)
    @total_cost += (prices.fetch(item) / 2) * count
  end

  def basket
    @basket ||= Array.new
  end
  
end
