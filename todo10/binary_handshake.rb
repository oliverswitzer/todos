
class SecretHandshake

  def initialize(secret_word)
    @secret_word = secret_word
    @command_words = ["wink","double blink","close your eyes","jump"]
  end

  def commands
    converted_array = []
    binary_read = @secret_word.reverse

    if binary_read.length >= 5
      reverse = true
      binary_read = binary_read[0..binary_read.length-2]
    else 
      reverse = false
    end
    
    
    binary_places = {}
    i = 0
    binary_read.each_char do |char|
      if char == "1" 
        binary_places[i] = true
      elsif char == "0"
        binary_places[i] = false
      end
      i+=1
    end
        
    binary_places.each do |place, bool_value|
      if bool_value == true
        converted_array << @command_words[place]
      end
    end

    if reverse == true
      converted_array.reverse!
    end

    converted_array
  end
end

test_handshake = SecretHandshake.new("11001")
puts test_handshake.commands