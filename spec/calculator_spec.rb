require './calculator'
RSpec.describe 'AddNumbers' do
  it 'add 2 numbers separated by comma' do
    input_one = ''
    input_two = '1'
    input_three = '1,2'
    expect(Calculator.new.add(input_one)).to eq(0)
    expect(Calculator.new.add(input_two)).to eq(1)
    expect(Calculator.new.add(input_three)).to eq(3)
  end

  it 'allow to add multiple numbers separated by comma' do
    input_one = '1,2'
    input_two = '1,3,5,7,8'
    input_three = '10,23,11,12,10'
    expect(Calculator.new.add(input_one)).to eq(3)
    expect(Calculator.new.add(input_two)).to eq(24)
    expect(Calculator.new.add(input_three)).to eq(66)
  end

  it 'allow handle new lines between numbers' do
    input_one = "1\n2,3"
    input_two = "3\n4\n1"
    input_three = "1,2\n5"
    expect(Calculator.new.add(input_one)).to eq(6)
    expect(Calculator.new.add(input_two)).to eq(8)
    expect(Calculator.new.add(input_three)).to eq(8)
  end

  it 'allow supporting different delimiters' do
    input_one = "//;\n1;2"
    input_two = "//*\n1*2*3"
    input_three = "//#\n1#2#4"
    expect(Calculator.new.add(input_one)).to eq(3)
    expect(Calculator.new.add(input_two)).to eq(6)
    expect(Calculator.new.add(input_three)).to eq(7)
  end

  it 'raise error when passing a negative number' do
    input_one = '10,23,-11'
    input_two = "3\n4\n-1"
    input_three = "//#\n-1#-2#4"
    expect(Calculator.new.add(input_one)).to eq('negative numbers not allowed -11')
    expect(Calculator.new.add(input_two)).to eq('negative numbers not allowed -1')
    expect(Calculator.new.add(input_three)).to eq('negative numbers not allowed -1,-2')
  end
end
