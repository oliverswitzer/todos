require 'debugger'

class Array
  def version_sort
    firsts = []
    seconds = []
    thirds = []
    final = []
    regex = /\w*-(?<first>\w*)\.?(?<second>\w*)\.?(?<third>\w*)\.ext/
    self.each do |file|
      debugger
      m = regex.match(file)
      first_num = m[:first]
      second_num = m[:second]
      third_num = m[:third]      
      firsts << first_num
      seconds << second_num
      thirds << third_num      
    end
    sorted_firsts = firsts.sort
    sorted_seconds = seconds.sort
    sorted_thirds = thirds.sort

    self.length.times do |i|
      first = sorted_firsts[i]
      second = sorted_seconds[i]
      third = sorted_thirds[i]

      first_period = "."
      second_period = "."
      if second.empty?
        first_period = ""
      end
      if third.empty?
        second_period = ""
      end
      final << "#{first}#{first_period}#{second}#{second_period}#{third}"
    end
    final
  end
end


filenames = [
  "foo-1.10.2.ext",
  "foo-1.11.ext",
  "foo-1.3.ext",
  "foo-1.50.ext",
  "foo-1.8.7.ext",
  "foo-1.9.3.ext",
  "foo-1.ext",
  "foo-10.1.ext",
  "foo-10.ext",
  "foo-100.ext",
  "foo-13.ext",
  "foo-2.0.0.ext",
  "foo-2.0.1.ext",
  "foo-2.0.ext",
  "foo-2.007.ext",
  "foo-2.01.ext",
  "foo-2.012b.ext",
  "foo-2.01a.ext",
  "foo-2.0a.ext",
  "foo-2.0b.ext",
  "foo-2.1.ext",
  "foo-25.ext",
  "foo-6.ext",
]
version_sorted_filenames = [
  "foo-1.ext",
  "foo-1.3.ext",
  "foo-1.8.7.ext",
  "foo-1.9.3.ext",
  "foo-1.10.2.ext",
  "foo-1.11.ext",
  "foo-1.50.ext",
  "foo-2.0.ext",
  "foo-2.0a.ext",
  "foo-2.0b.ext",
  "foo-2.0.0.ext",
  "foo-2.0.1.ext",
  "foo-2.01.ext",
  "foo-2.1.ext",
  "foo-2.01a.ext",
  "foo-2.007.ext",
  "foo-2.012b.ext",
  "foo-6.ext",
  "foo-10.ext",
  "foo-10.1.ext",
  "foo-13.ext",
  "foo-25.ext",
  "foo-100.ext",
]

puts filenames.version_sort
# assert_equal filenames.version_sort, version_sorted_filenames