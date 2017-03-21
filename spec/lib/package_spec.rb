require "spec_helper"
require "package"


describe Package do
  before (:each) do
    @package = Package.new
    @package.base_price = 1299.99
    @package.base_markup = 1364.99
  end
  # it "has base markup" do
  #   @package = Package.new
  #   @package.base_price = 1299.99
  #   expect(@package.base_markup).to eq(1364.99)
  # end
  it "calculates a final price " do
       expect(@package.add_category(2, "Food")).to eq(1870.04)
    end
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
