require './keith_blackjack'


describe "#play" do
  it "should take an array as input and return a number that is between 1 and 11" do
    expect(play([])).to be > 0
    expect(play([])).to be < 12
  end
end