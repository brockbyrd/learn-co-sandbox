class Dog
  # some code to describe a dog
  
  #Instance Method Definiton - methods defined within an objects class
  def bark
    puts "Woof!"
  end
end

class MyClass
  # some code all about your awesome class
end

fido = Dog.new
fido.object_id # send object a message asking them to perform an operation with dot notation
                # left side of the dot is the object the right side is the method
                # or known as the left side is the receiver and the right is the message
snoopy = Dog.new
snoopy.object_id 

lassie = Dog.new
lassie.object_id

fido.methods # .methods will return an array of methods that the object will respond to

fido.bark #> "Woof!"
snoopy.bar #> "Woof!"

fido.sit #NoMethodError - method is undefined because .sit has not been told what to do or been "defined"

bark #NameError: undefined local variable or method - bark is not a globally evocable method it is only found
                                                     # within the class of Dog