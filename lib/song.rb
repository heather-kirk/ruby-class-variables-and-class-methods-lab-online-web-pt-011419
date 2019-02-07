class Song 
  attr_accessor :name, :artist, :genre
  
  @@count = 0 
  @@genres = []
  @@artists = []
  
  def initialize (name, artist, genre)
    @name = name
    @genre = genre
    @artist = artist
    @@count +=1 
    @@genres << genre
    @@artists << artist 
  end 
  
  def self.count
    @@count
  end 
  
  def self.genres
  @@genres.uniq
  end 
  
  def self.artists
    @@artists.uniq
  end 
  
  def self.genre_count
    arr = {}
    @@genres.each do |genre|
    if arr[genre]
     arr[genre] +=1
    else 
    arr[genre] = 1 
      end 
    end 
    arr
  end 
  
end 