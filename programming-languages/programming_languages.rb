# Organizing Nested Data

# I have a collection of Programming Languages.  
require 'awesome_print'

languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }
  }
}

language_attributes = {}

languages.each do |oo_or_functional, language_hash|
  #:oo, {:ruby => {...}}
  language_hash.each do |language, attribute_hash|
    #:ruby, {:type => "interpreted"}
    attribute_hash.each do |attribute, str_value|
      #:type, "interpreted"
      if language_attributes[language].nil?
        #if language :ruby doesn't exist in new hash
        language_attributes[language] = {}  #initiate a new hash for the value of :ruby
      end               
      language_attributes[language][:style] = []  # create a :style key within that hash and set it equal to an empty array
      language_attributes[language][:style] << oo_or_functional  #added oo key from first level of languages hash to this key                                
      if language_attributes[language][attribute].nil?
        #if :ruby language key doesn't have a :type key nested within it
        language_attributes[language][attribute] = str_value  #set this :type key to equal the str "interpreted"
      end
    end
  end
end


ap language_attributes

# I would like you to reformat the nested structure to be of the following form

# {
#   :ruby => {
#     :style => [:oo],
#     :type => "dynamic"
#   },
#   :python => {
#     :style => [:oo],
#     :type => "dynamic"
#   }
#   etc etc
# }