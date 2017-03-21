class Package
  attr_reader :total_markup
  attr_accessor :price, :people, :categories

  def initialize(params={})
    @price = params[:price] * 1.05
    @categories = params[:categories]
    @labour = params[:labour]
    @total_markup = 0
  end

  def final_price()
     (@price * (1 + add_category_markup + add_labour_markup)).round(2)
  end

  def add_labour_markup()
    @labour * 0.012
  end


  def add_category_markup()

    category_markup = 0
    @categories.each { |category|
      category_markup += case category
          when 'pharmacuticals' then 0.075
          when 'electronics' then 0.02
          when 'food' then 0.13
          else 0
        end
    }
    category_markup
  end

end
