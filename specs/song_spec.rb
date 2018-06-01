require("minitest/autorun")
require_relative("../song.rb")

class SongTest < MiniTest::Test

  def setup
    @song1 = Song.new("Coast Line")
    @song2 = Song.new("The Girl")
    @song3 = Song.new("Total Eclipse of the Heart")
  end

  def test_song_attributes
    assert_equal("Coast Line", @song1.title)

  end

  def test_play_song
    assert_equal("I'm playing Coast Line", @song1.play_song("Coast Line"))
  end





end
