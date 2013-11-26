#my_spec.rb

require_relative 'key_for_min_value'

describe '#key_for_min_value' do
	it "should return the key for the minimum value in a hash" do
		expect(key_for_min_value({:bob => 10, :joe => 4, :steve => 20})).to eq(:joe)
	end

	it "should return the key for the minimum value in a hash" do
		expect(key_for_min_value({12 => 5, 3 => 10, 45 => 40})).to eq(12)
	end

	it "should return nil when an empty hash is given" do
		expect(key_for_min_value({})).to eq(nil)
	end

end
