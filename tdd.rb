require 'rspec'

class Fizzbuzz
  def output(number)
    return "Fizzbuzz" if number % 15 == 0
    return "Buzz" if number % 5 == 0
    return "Fizz" if number % 3 == 0
    return number
  end

  def go
    (1..100).to_a.each do |number|
      puts output(number)
    end
  end
end

RSpec.describe Fizzbuzz do
  fizzbuzz = Fizzbuzz.new
  describe '#output' do
    it "should return 1 if the number is 1" do
      expect(fizzbuzz.output(1)).to eq(1)
    end

    it "should return 2 if the number is 2" do
      expect(fizzbuzz.output(2)).to eq(2)
    end

    it "should return Fizz if the number is 3" do
      expect(fizzbuzz.output(3)).to eq('Fizz')
    end

    it "should return 4 if the number is 4" do
      expect(fizzbuzz.output(4)).to eq(4)
    end

    it "should return Buzz if the number is 5" do
      expect(fizzbuzz.output(5)).to eq('Buzz')
    end

    it "should return Fizz if the number if 6" do
      expect(fizzbuzz.output(6)).to eq('Fizz')
    end

    it "should return Buzz if the number is 10" do
      expect(fizzbuzz.output(10)).to eq('Buzz')
    end

    it "should return Fizzbuzz if the number is 15" do
      expect(fizzbuzz.output(15)).to eq('Fizzbuzz')
    end

    it "should return Fizzbuzz if the number is 30" do
      expect(fizzbuzz.output(30)).to eq('Fizzbuzz')
    end
  end
end