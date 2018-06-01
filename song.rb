class Song

  attr_reader :title

  def initialize(title)
    @title = title

  end

 def play_song(title)
   return "I'm playing #{title}"
 end


end
