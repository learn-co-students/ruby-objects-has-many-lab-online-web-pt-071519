class Song 
  attr_accessor :artist, :name, :genre
  
  @@all = []
  
  def initialize(name)
    @@all << self
    @name = name
  end
  
  def self.all 
    @@all 
  end
  
  def artist_name
   if  @artist 
     @artist.name
   else 
     nil 
   end
  end
end