class Dog
  
  attr_accessor :name, :owner
  
  def initialize(name)
    @name = name
  end
  
  def bark
    "woof!"
  end
  
  def adopted(dog, owner_name)
    self.owner = owner_name # self is being called on dog in this instance
  end
  
  
end



fido.owner = "Sophie"

fido.owner #=> "Sophie"

adopted(fido, "Sophie")

fido.owner #=> "Sophie"