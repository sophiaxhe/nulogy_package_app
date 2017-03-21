class Package
  attr_accessor :base_price, :base_markup

  def initialize(options={})
    self.base_price = options[:base_price]
  end

  def add_base_markup
    (self.base_price*1.05).round(2)
  end


  def add_category(num, *args)
    args.each { |c|
    if
      c == "Food"
      return (self.base_markup * (1.13 + (num * 0.12))).round(2)
    elsif
      c == "Pharmacuticals"
      return (self.base_markup * (1.075 + (num * 0.12))).round(2)
    elsif
       c == "Electronics"
      return (self.base_markup * (1.02 + (num * 0.12))).round(2)
    else
      c == "Others"
      return (self.base_markup * (1 + (num * 0.12))).round(2)
    end
    }
  end
  
end
