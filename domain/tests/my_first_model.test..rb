require './config/env.rb'

RSpec.describe MyFirstModel do
    it "should have a 0 price by default" do
      m = MyFirstModel.new
      expect(m.price).to eq(0)
    end
end