class Discounts
  def self.items
    [
      { :apple => {:discount => :two_for_one} },
      { :orange => {:discount => :no_deal} },
      { :pear => {:discount => :two_for_one} },
      { :banana => {:discount => :half_price_offer} },
      { :pineapple => {:discount => :half_price_restricted_to_one_per_person} },
      { :mango => {:discount => :three_get_one_free} }
    ]
  end
end