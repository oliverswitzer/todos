#dog_years.rb test

require './dog_years'

describe "#age_in_years" do
     it "should return the age in human years (e.g. the same as the input)" do
          expect(age_in_years(2)).to eq(2)
     end
end

describe "#age_in_days" do
  it "should return the number of years inputted multiplied by 365 days" do
    expect(age_in_days(2)).to eq(365*2)
  end
end

describe "#age_in_dog_years" do
  it "should return the number of years inputted multiplied by 7 (dog years)" do
    expect(age_in_dog_years(2)).to eq(2*7)
  end
end
