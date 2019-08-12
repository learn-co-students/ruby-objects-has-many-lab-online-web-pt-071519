class Song 
  
  attr_accessor :name, :artist #:genre 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self
   # @genre = genre 
  end 
  
 # def artist=(artist)
   # @artist = artist 
  #end 
  
  #def artist 
   # @artist 
  #end 
  
  def save
    @@all << self
  end
 
  def self.all
    @@all
  end
  
  def artist_name
   if self.artist
    self.artist.name
  else 
    nil
  end 
  end 
  
end 