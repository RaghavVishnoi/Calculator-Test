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
end
