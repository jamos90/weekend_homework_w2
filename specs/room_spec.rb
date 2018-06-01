require("minitest/autorun")
require_relative("../room.rb")
require_relative("../song.rb")
require_relative("../customer.rb")

class TestRoom < MiniTest::Test

  def setup
   @song1 = Song.new("Cost Line")
   @song2 = Song.new("Total Ecplipse of the Heat")
   @song3 = Song.new("Sweet Child of Mine")
   @track_list = [@song1, @song2]
   @customer1 = Customer.new("James", 50, "Coast Line")
   @customer2 = Customer.new("Jess", 100, "Total Eclipse of the Heart")
   @customer3 = Customer.new("Kate", 200, "Sweet Child Of Mine")
   @guests = [@customer1, @customer2]

    @room1 = Room.new(@guests,150, 50, @track_list, 5)
    @room2 = Room.new(@guests, 200, 40, @track_list,2)
  end

  def test_room_attribures
    assert_equal(150, @room1.till_ammount)
    assert_equal(50, @room1.room_cost)
  end

  def test_track_list_length
    assert_equal(2, @room1.track_list_length)
  end

  def test_add_songs_to_rooms
    @room1.add_song(@song3)
    assert_equal(3, @room1.track_list_length)
  end

  def test_occupancy_of_room
    assert_equal(2, @room1.customer_count)
  end

  def test_add_customers_to_room
    @room1.add_customer_to_room(@customer3)
    assert_equal(3, @room1.customer_count)
  end

  def test_remove_customers_from_room
    @room1.remove_customers_from_room(@customer3)
    assert_equal(2,@room1.customer_count)
  end

  def test_cannot_add_to_room_if_full
    @room2.add_customer_to_room(@customer3)
    assert_equal(2, @room2.customer_count)

  end

  def test_customer_pays_for_room
    @room1.customer_pays_for_room(@customer1)
    assert_equal(200, @room1.till_ammount)
  end


end
