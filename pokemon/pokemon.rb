class Sudowoodo

  attr_accessor :level, :type, :abilities, :catch_rate, :entry, :exp
  attr_reader :LEARNSET

  LEARNSET = {
    "Wood Hammer" => 0,
    "Copycat" => 0,
    "Flail" => 0,
    "Low Kick" => 0,
    "Rock Throw" => 0,
    "Mimic" => 17,
    "Rock Tomb" => 30,
    "Rock Slide" => 33,
    "Slam" => 38,
    "Double-Edge" => 46
  }

  def initialize
    @level = 1
    @type = "Rock"
    @abilities = []
    LEARNSET.each do |k, v| 
      if v == 0 
        @abilities << k  
      end
    end   
    @catch_rate = "8.5%"
    @entry = "Sudowoodo, the Imitation Pokémon. This rare Pokémon 
              hides in trees to avoid capture." 
    @exp = 0
  end

  def level_up
    if @exp > @level**3
      @level += 1
    end
  end

  def gain_exp new_exp
    @exp += new_exp

    (new_exp/10).times do 
      sleep(0.01)
      i = 10
      print "*"
    end
    puts "\n#{self.class} gained #{new_exp}xp!\nIt now has a total of #{exp}xp"
  end

  def say_name 
    "Sudoooooowoodo!"
  end
end

class Machamp

  attr_accessor :level, :type, :abilities, :catch_rate, :entry, :exp
  attr_reader :LEARNSET

  LEARNSET = {
    "Wide Guard" => 0,
    "Low Kick" => 0,
    "Leer" => 0,
    "Focus Energy" => 0,
    "Karate Chop" => 0,
    "Low Sweep" => 13,
    "Foresight" => 19,
    "Seismic Toss" => 22,
    "Revenge" => 25,
    "Vital Throw" => 32
  }

  def initialize
    @level = 1
    @type = "Fighting"
    @abilities = []
    LEARNSET.each do |k, v| 
      if v == 0 
        @abilities << k  
      end
    end    
    @catch_rate = "5.9%"
    @entry = "It attacks with devastating punches and shock waves." 
    @exp = 0
  end

  def level_up
    if @exp > @level**3
      @level += 1
    end
  end

  def gain_exp new_exp
    @exp += new_exp
  end

  def say_name 
    "Machamp!"
  end
end

class Electrode

  attr_accessor :level, :type, :abilities, :catch_rate, :entry, :exp
  attr_reader :LEARNSET

  LEARNSET = {
    "Charge" => 0,
    "Tackle" => 0,
    "Sonic Boom" => 0,
    "Spark" => 0,
    "Tackle" => 5,
    "Rollout" => 15,
    "Screech" => 19,
    "Charge Beam" => 22,
    "Light Screen" => 26, 
    "Electro Ball" => 29,
    "Self Destruct" => 35
  }

  def initialize
    @level = 1
    @type = "Electric"
    @abilities = []
    LEARNSET.each do |k, v| 
      if v == 0 
        @abilities << k  
      end
    end
    @catch_rate = "7.8%"
    @entry = "Electrode, the evolved form of Voltorb. Highly concentrated electric energy causes this Pokémon 
              to explode unpredictably. Also known as the Bomb-ball." 
    @exp = 0
  end

  def level_up
    if @exp > @level**3
      @level += 1
    end
  end

  def gain_exp new_exp
    @exp += new_exp
    puts "#{self.class} gained #{new_exp}xp!"
  end

  def say_name 
    "Electr--BOOM!"
  end
end

bob = Sudowoodo.new
# puts bob.abilities

i = 0
10.times do 
  i += 50
  bob.gain_exp(i)
end


