require 'rspec'

class ChangeMaker
  def change(coins)
    coins_hash = {pennies: 0, nickels: 0, dimes: 0, quarters: 0, dollar: 0}
    # order matters for denomination hash. Make sure largest quantity is first
    denomination_hash = {dollar: 100, quarters: 25, dimes: 10, nickels: 5, pennies: 1}
    denomination_hash.each do |key, value|
      while coins >= value
        coins_hash[key] += 1
        coins -= value
      end
    end
    return coins_hash
  end
end

RSpec.describe ChangeMaker do 
  machine = ChangeMaker.new
  describe '#coins' do
    it "should return {pennies: 1...} if input is 1" do
      expect(machine.change(1)).to eq({pennies: 1, nickels: 0, dimes: 0, quarters: 0})
    end

    it "should return {pennies: 2, nickels: 0, dimes: 0, quarters: 0} if input is 2" do
      expect(machine.change(2)).to eq({pennies: 2, nickels: 0, dimes: 0, quarters: 0})
    end

    it 'should return {pennies: 4, nickels: 1, dimes: 1, quarters: 4} if input is 119' do
      expect(machine.change(119)).to eq({pennies: 4, nickels: 1, dimes: 1, quarters: 4})
    end 
  end
end