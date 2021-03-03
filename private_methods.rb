class Bartender
  attr_accessor :name
  
  BARTENDERS = []
  
  def initialize(name) # --- private method
    @name = name
    BARTENDERS << self
  end
  
  def self.all # --- public method
    BARTENDERS
  end
  
  def intro # --- public method
    "Hello, my name is #{name}!"
  end
  
  def make_drink
    @cocktail_ingredients = []
    choose_liquor
    choose_mixer
    choose_garnish
    return "Here is your drink. It contains #{@cocktail_ingredients}"
  end
  
  private
  
  def choose_liquor
    @cocktail_ingredients.push("whiskey")
  end
  
  def choose_mixer
    @cocktail_ingredients.push("vermouth")
  end
  
  def choose_garnish
    @cocktail_ingredients.push("olives")
  end
  
end


# Private methods can not be called by an explicit receiver
# The receiver of a private method is ALWAYS self
# private methods are usually written with the word private above them
# Calling phil.choose_liquor will NOT work because it has an explicit receiver
#   BUT phil.make_drink WILL work because choose_liquor, choose_mixer, choose_garnish was called      without any receiver