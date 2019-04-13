class Genre 
  attr_accessor :name 
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self
  end 
  
  def self.all 
    @@all 
  end 
  
  def songs 
    Song.all.select {|song| song.genre == self}
  end 
  
  def artists 
    Song.all.select do |song|
      artist if song.genre == self 
    end 
  end 
  
end 