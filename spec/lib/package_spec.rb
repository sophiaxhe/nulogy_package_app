require "spec_helper"
require "package"


describe Package do
  it "has base markup" do
    @package = Package.new
    @package.base_price = 1299.99
    expect(@package.base_markup).to eq(1364.99)
  end
end
