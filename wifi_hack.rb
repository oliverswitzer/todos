

def encode(password)
  pass_as_string = password.to_s
  password_array = pass_as_string.split("_")
  new_password_array = []
  new_password_array[0] = password_array.last
  new_password_array[3] = password_array.first
  new_password_array[1] = password_array[1]
  new_password_array.compact!
  joined_password = new_password_array.join(" ")
  joined_password.gsub!("e", "blake")
  joined_password.gsub!(" ", "ashley")
  joined_password
end

def decode(encoded_password)
  encoded_password.gsub!("ashley", " ")
  encoded_password.gsub!("blake", "e")
  decoded_array = encoded_password.split(" ")
  decoded_array.compact!
  password_array = []
  password_array[1] = decoded_array[1]
  password_array[0] = decoded_array.last
  password_array[3] = decoded_array.first
  password_array.compact!
  joined_password = password_array.join("_")
  joined_password
end

puts decode("intblakernblaketsashleythblakeashleyall")


