# instructions: implement Array.uniq

class Array

  def uniq
    uniq_array = []
    self.each do |elem|
      unless uniq_array.include? elem
        uniq_array << elem
      end
    end
    return uniq_array
  end

end

print [1, 1, 2, 3, 5, 5, 5].uniq