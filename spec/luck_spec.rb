require ('rspec')
require ('luck')

describe ('lucky_number') do 
  it ('sums the first half and second half of a integer to 
  determine whether it is lucky') do
    expect(lucky_number(454454)).to eq "Lucky Ticket"
  end
end
