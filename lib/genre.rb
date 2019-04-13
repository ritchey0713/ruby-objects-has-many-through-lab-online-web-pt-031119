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
    x = Song.all.select do |song|
      if song.genre == self
        song.artist
      end 
    end 
     binding.pry 
  end 
  
end 