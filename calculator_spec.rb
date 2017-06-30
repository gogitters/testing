require 'rspec'
require './calculator.rb'

RSpec.describe Calculator do
  let(:calculator) { Calculator.new }
  # calculator = Calculator.new

  describe ".new" do
    it "should return a Calculator object" do
      expect(calculator).to be_an_instance_of(Calculator)
    end
  end

  describe "#add" do
    it "should return the sum of two numbers" do
      expect(calculator.add(1, 3)).to eq(4)
    end
  end

  describe "#subtract" do
    it "should return the difference between two numbers" do
      expect(calculator.subtract(3,1)).to eq(2)
    end

    it "should return a negative number if the second number is larger" do
      expect(calculator.subtract(1,3)).to eq(-2)
      expect(calculator.subtract(1,3)).to_not eq(2)
    end
  end

  describe "#multiply" do
    it "should multiply the two input numbers" do
      expect(calculator.multiply(2,4)).to eq(8)
    end
  end

  describe '#divide' do
    it "should return the quotient of the two input numbers" do
      expect(calculator.divide(4,2)).to eq(2)
      expect(calculator.divide(5,2)).to eq(2.5)
    end
  end

  describe '#square' do
    it "should return the square of the input number" do
      expect(calculator.square(3)).to eq(9)
    end
  end

  describe '#power' do
    it "should return the first number to the 2nd numberth power" do
      expect(calculator.power(2,3)).to eq(8)
    end
  end

  describe ".message" do
    it "should return hello and the input name" do
      expect(Calculator.message('Sami')).to eq("hello Sami")
    end
  end

  describe "#multiply_by_two" do
    it "should multiple the input by 2" do
      expect(calculator.multiply_by_two(3)).to eq(6)
    end
  end
end