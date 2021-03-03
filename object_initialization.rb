class Dog
  def initialize(breed) #called a call back method
    @breed = breed
  end
  
  def breed=(breed)
    @breed = breed
  end
  
  def breed
    @breed
  end
end

lassie = Dog.new("Collie") #when the new method is called with an argument it will pass that argument to the                           initialize method