class Song
  attr_accessor :artist, :name, :genre
  
  @@all = [] # setting a class variable equal to an empty Array
 
  def initialize(name, genre)
    @name = name
    @genre = genre
    save
  end
  
  def save
    @@all << self # when a song is initialized it is pushed into the class variable set to an                   Array
  end
  
  def self.all #using a getter method to call on the class variable all to get all of the songs               that have been initialized
    @@all
  end
  
  def artist_name
    self.artist.name
  end
end



class Artist
  attr_accessor :name
 
  def initialize(name)
    @name = name
    @songs = [] # setting an instance method to an empty array to store multiple songs
  end
 
  def add_song(song)
    @songs << song # shoveling songs into the instance method
    song.artist = self # use the self keyword to refer to artist on which the method is being called
  end
 
  def songs
    Song.all.select {|song| song.artist == self} 
  end
  
  def add_song_by_name(name, genre)
    song = Song.new(name, genre)
    add_song(song)
  end
end


lil_nas_x = Artist.new("Lil Nas X")
rick = Artist.new("Rick Astley")

old_town_road = Song.new("Old Town Road", "hip-hop")
never_gonna_give_you_up = Song.new("Never Gonna Give You Up", "pop")

# Song.all.select {|song| song.artist == lil_nas_x} # how to find all songs by a single artist 
# Song.all.select {|song| song.artist == rick}

# old_town_road.artist.name

lil_nas_x.songs
rick.songs

old_town_road.artist_name
