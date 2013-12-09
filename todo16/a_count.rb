#a_count

def count array
  count_hash = {}
  uniq_elem_list = array.uniq

  uniq_elem_list.each do |uniq_elem|
    count = array.select {|elem| elem == uniq_elem}.size
    count_hash[uniq_elem] = count
  end

  return count_hash
end






