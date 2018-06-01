require("minitest/autorun")
require_relative("../room.rb")
require_relative("../song.rb")
require_relative("../customer.rb")

class TestRoom < MiniTest::Test

  def setup
   @song1 = Song.new("Cost Line")
   @song2 = Song.new("Total Ecplipse of the Heat")
   track_list = [@song1, @song2]

    @room1 = Room.new(12, 150, 50, track_list)
  end

end
