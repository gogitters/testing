require 'rspec'

class ChangeMachine
  def change(coins)
    denominations = [25,10,5,1]
    money = []
    denominations.each do |denomination|
      while coins >= denomination
        money << denomination
        coins -= denomination
      end
    end
    money
  end
end

RSpec.describe ChangeMachine do
  machine = ChangeMachine.new
  describe '#change' do
    it 'should return [1] when given 1' do
      expect(machine.change(1)).to eq([1])
    end

    it 'should return [1,1] when given 2' do
      expect(machine.change(2)).to eq([1, 1])
    end

    it 'should return [5] when given 5' do
      expect(machine.change(5)).to eq([5])
    end

    it 'should return [5,1] when given 6' do
      expect(machine.change(6)).to eq([5, 1])
    end

    it 'should return [10] when given 10' do
      expect(machine.change(10)).to eq([10])
    end

    it 'should [10, 5, 1] when given 16' do
      expect(machine.change(16)).to eq([10, 5, 1])
    end

    it 'should return [25] when given 25' do
      expect(machine.change(25)).to eq([25])
    end
  end
end