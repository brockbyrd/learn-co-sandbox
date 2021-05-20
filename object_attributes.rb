class Person
  
  def initialize(name)
    @name = name
  end
  
  def name # #method is referred to as the getter method
    @name
  end
  
  def name=(new_name) # #method= is referred to as the setter method
                        # to call a setter method you would use dot notation to call the method and set it equal to a new value
    @name = new_name
  end
end

kanye = Person.new("Kanye")
kanye.name #=> "Kanye"

kanye.name = "Yeezy" # will not be able to redfine Kanye to Yeezy without a setter method /// once a setter                         method is defined this is the notation that would be used to redfine kanye
                      #=> NoMethodError: undefined method `name=' for #<Person:.....> /// method for when a setter method is not defined
                      
# kanye.name=("Yeezy") --- another way to call a setter method
kanye.name #=> "Yeezy"


#------------------------------------------------------------------------------------------------------

class Person
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end
   
  def name=(full_name)
    first_name, last_name = full_name.split
    @first_name = first_name
    @last_name = last_name
  end
 
  def name
    "#{@first_name} #{@last_name}".strip
  end
 end
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 