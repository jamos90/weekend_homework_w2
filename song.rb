class Song

  attr_reader :title, :artist, :genre

  def initialize(title, artist, genre)
    @title = title
    @artist = artist
    @genre = genre
  end

 def play_song(title, artist)
   return "I'm playing #{title} by #{artist}"
 end


end
