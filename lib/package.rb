class Package
  attr_accessor :base_price, :base_markup

  def initialize(options={})
    self.base_price = options[:base_price]
  end

  def add_base_markup
    (self.base_price * 1.05).round(2)
  end

  def add_category(*args)
    args.each { |c|
    if c == "Food"
      return (self.base_markup * 1.13).round(2)
    end
    if c == "Pharmacuticals"
      return (self.base_markup * 1.075).round(2)
    end
    if c == "Electronics"
      return (self.base_markup * 1.02).round(2)
    end
    if c == "Others"
      return (self.base_markup).round(2)
    end
    }
  end

end
