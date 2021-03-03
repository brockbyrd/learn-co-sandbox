class Album
  
  @@album_count = 0 # --- class variable(has a class scope)
  
  def initialize # --- ups the count of the albums by one every time a new album is initialized
    @@album_count += 1
  end
  
  def self.album_count # --- class method --- allows for the class variable to be accessible outside                                             the class --- self here refers to the entire class                                                 itsself
    @@album_count
  end
  
  def release_date=(date) # --- setter/writer method
    @release_date = date
  end
  
  def release_date # --- getter/reader method
    @release_date # --- instance variable
  end
end

# you can access class variables anywhere inside of the class --- that includes class and instance methods