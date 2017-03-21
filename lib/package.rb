class Package
  attr_accessor :base_price

  def initialize(options=>{})
    self.base_price = options[:base_price]
  end

  def base_markup
    (self.base_price * 1.05).round(2)
  end
end
