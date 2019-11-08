class Song 
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@genres = []
  @@artists = []
  
  def initialize(name, artist, genre)
    @@count += 1
    @name = name
    @artist = artist
    @@artists << artist
    @genre = genre
    @@genres << genre
  end
  
  def count
    @@count
  end

  def genres
    @@genres.uniq
  end    
  
  def artists
    @@artists.uniq
  end   
  
  def genre_count
    g_count_hash = {}
    @@genres.each do |g|
      if g_count_hash.has_key?(g)
        g_count_hash[g] += 1
      else
        g_count_hash[g] = 1
      end
    end
    g_count_hash
  end
  
  def artist_count
    a_count_hash = {}
    @@artists.each do |a|
      if a_count_hash.has_key?(a)
        a_count_hash[a] += 1
      else
        a_count_hash[a] = 1
      end
    end
    a_count_hash
  end
  
end