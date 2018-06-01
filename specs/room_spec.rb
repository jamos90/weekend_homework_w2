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

  def test_room_attribures
    assert_equal(12, @room1.capacity)
    assert_equal(150, @room1.till_ammount)
    assert_equal(50, @room1.room_cost)
  end

end
