class Song

  attr_accessor :name, :artist, :genre

# Constant set to collect genres into an array
  @@genres = []
# class variable set to 0
  @@count = 0
  @@artists = []


# what happens when we call (initalize) the class Song.new
# each new song will have these attributes
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << self.artist
    @@genres << self.genre
  end

  # define the class method to call the class variable
  def self.count
    @@count
  end

  def self.artists
    @@artists
  end

  def self.genres
    @@genres
  end


#class method with class scope (CS)
 def self.all
   @@all
 end


 #class method w/CS
 def self.artists
   @artist
 end

# class methodw/CS

def self.count
  @@count
end


#print all existing artists
  def self.artists
    @@artists.uniq
  end


# print all existing songs.names
  def self.titles
    @title.uniq
  end

# print all existing genres
  def self.genres
      @@genres.uniq
  end
  def self.genre_count
hash_genre=Hash.new(0)
hash_genre.tap do |hash|
  @@genres.each do |genre| hash[genre]+=1
  end
end
    # @genres.each_by do |genres|
    #   if hash[genre]==nil
    #     hash[genres]=1
    #   else
    #     hash[genre] +=1
    #   end
    # end
    # hash
  end

def self.artist_count
  hash_artist = Hash.new(0)
  hash_artist.tap do |hash|
    @@artists.each do |artist| hash[artist] +=1
    end
  end
end
end
