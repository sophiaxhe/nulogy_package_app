require "spec_helper"
require "package"


describe Package do

 it('should return total markup') do
      @price = Package.new(
        {
          price: 1299.99,
          labour: 3,
          categories: ['food']
        }
      )

      expect(@price.final_price).to eq(1591.58)
    end


  # it "has base markup" do
  #   @package = Package.new
  #   @package.base_price = 1299.99
  #   expect(@package.base_markup).to eq(1364.99)
  # end

  # context "category" do
  #   it "adds 13% markup to food" do
  #     expect(@package.category("Food")).to eq(1542.44)
  #   end
  #
  #   it "adds 7.5% markup for pharmacuticals" do
  #     # @package.base_markup = 1364.99
  #     expect(@package.category("Pharmacuticals")).to eq(1467.36)
  #   end
  #
  #   it "adds 2% markup for electronics" do
  #     # @package.base_markup = 1364.99
  #     expect(@package.category("Electronics")).to eq(1392.29)
  #   end
  #
  #   it "doesn't add markup for Others category" do
  #     # @package.base_markup = 1364.99
  #     expect(@package.category("Others")).to eq(1364.99)
  #   end
  # end

end
