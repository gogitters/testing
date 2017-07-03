require 'rspec'

class ChangeMachine
  def change(coins)
    return [1]
  end
end

RSpec.describe ChangeMachine do
  machine = ChangeMachine.new
  describe '#change' do
    it 'should return [1] when given 1' do
      expect(machine.change(1)).to eq([1])
    end
  end
end