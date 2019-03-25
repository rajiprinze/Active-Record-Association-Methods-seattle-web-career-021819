class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  def get_genre_of_first_song
    #return the genre of the artist's first saved song
    # binding.pry
    self.songs.first.genre
    # Genre.where(:id => self.songs.find(self).genre_id).to_a[0][:name]
  end

  def song_count
    #return the number of songs associated with the artist
    self.songs.count
  end

  def genre_count
    #return the number of genres associated with the artist
    # binding.pry
    self.genres.count
  end

  def get_first_song
    self.songs.first
  end
end
