require './models/account.rb'

RSpec.describe Account do
    it "should have a 0 value by default" do
      account = Account.new
      expect(account.value).to eq(0)
    end

    it "should reflect incremented value when user adds funds" do
        account = Account.new
        new_ammt=10
        account.add_value(new_ammt)
        expect(account.value).to eq(new_ammt)
    end
end