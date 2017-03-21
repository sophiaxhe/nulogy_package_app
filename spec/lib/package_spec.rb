require "spec_helper"
require "package"


describe Package do
  describe ('total price' ) do

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

      it('should return total markup') do
        @price = Package.new(
          {
            price: 5432,
            labour: 1,
            categories: ['pharmacuticals']
          }
        )
          expect(@price.final_price).to eq(6199.81)
      end

      it('should return total markup') do
          @price = Package.new(
            {
              price: 12456.95,
              labour: 4,
              categories: ['books']
            }
          )
          expect(@price.final_price).to eq(13707.63)
        end
  end
end
