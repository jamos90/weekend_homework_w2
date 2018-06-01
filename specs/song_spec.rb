require("minitest/autorun")
require_relative("../song.rb")

class SongTest < MiniTest::Test

  def setup
    @song1 = Song.new("Coast Line", "Hollow Coves", "Folk")
    @song2 = Song.new("The Girl", "City and Color", "Indie")
    @song3 = Song.new("Total Eclipse of the Heart", "Bonnie Tyler", "Ballad")
  end

  def test_song_attributes
    assert_equal("Coast Line", @song1.title)
    assert_equal("Hollow Coves",@song1.artist)
    assert_equal("Folk", @song1.genre)
  end

  def test_play_song
    assert_equal("I'm playing Coast Line by Hollow Coves", @song1.play_song("Coast Line","Hollow Coves"))
  end





end
