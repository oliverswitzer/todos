# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value
require 'debugger'

def key_for_min_value(hash)
	if hash.empty?
		return nil
	else
		sorted_hash = hash.sort_by {|k, v| v}
	end
	sorted_hash[0][0]
end

