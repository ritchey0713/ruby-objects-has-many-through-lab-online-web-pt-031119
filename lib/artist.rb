require 'pry'
class Artist 
  attr_accessor :name 
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def self.all 
    @@all
  end 
  
  def new_song(title, genre)
    Song.new(title, self, genre)
  end 
  
  def songs 
    Song.all.select{ |song| song.artist == self }
  end 
  
  def self.find(artist_name)
    all.find{|artist| artist.name == name}
  end
  
  def genres 
  end 
  
end 