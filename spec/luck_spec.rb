require ('rspec')
require ('luck')

describe ('lucky_number') do 
  it ('sums the first half and second half of a integer to 
  determine whether it is lucky') do
    expect(lucky_number(454454)).to eq "Lucky Ticket"
  end
    it ('works with an odd length integer') do
  expect(lucky_number(4544454)).to eq "Lucky Ticket"
  end
    it ('works for not lucky tickets') do
  expect(lucky_number(45494454)).to eq "Not a Lucky Ticket"
  end
end
