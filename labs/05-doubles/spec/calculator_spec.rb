RSpec.describe 'A pending test:' do
  pending 'example 1'

  it 'example 2'

  xit 'example 3 using xit' do
    expect(true).to eq(false)
  end
end

# RSpec.describe Calculator do
#   describe '#add' do
#     it 'returns the sum of its arguments' do
#       expect(Calculator.new.add(1, 2)).to eq(3)
#     end
#   end
# end
