require("minitest/autorun")
require_relative("../room.rb")
require_relative("../song.rb")
require_relative("../customer.rb")
require_relative("../bar.rb")
require_relative("../drink.rb")

class TestRoom < MiniTest::Test

  def setup
   @song1 = Song.new("Coast Line")
   @song2 = Song.new("Total Ecplipse of the Heat")
   @song3 = Song.new("Sweet Child of Mine")
   @track_list = [@song1, @song2]
   @customer1 = Customer.new("James", 50, "Coast Line")
   @customer2 = Customer.new("Jess", 100, "Total Eclipse of the Heart")
   @customer3 = Customer.new("Kate", 200, "Sweet Child Of Mine")
   @guests = [@customer1, @customer2]

    @room1 = Room.new(@guests,150, 50, @track_list, 5,@bar)
    @room2 = Room.new(@guests, 200, 40, @track_list,2,@bar)
    @drink1 = Drink.new("beer",5)
    @drink2 = Drink.new("wine", 6)
    @drink3 = Drink.new("cider", 4)
    @drink4 = Drink.new("juice", 3)
    @drinks_list = [@drink1, @drink2, @drink3]
    @bar = Bar.new(@drinks_list, 200)
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

  def test_room_has_song
    assert_equal(true, @room1.room_has_song(@song1))
    assert_equal(false, @room1.room_has_song(@song3))
  end

  def test_room_plays_song
    assert_equal("The next song is Coast Line", @room1.room_plays_song(@song1))
    assert_equal("We don't have that song",@room1.room_plays_song(@song3))
  end

  def test_customer_favourite_song_play_in_room__favourite
   assert_equal("Whooo!", @room1.customers_favourite_song_plays(@customer1,"Coast Line"))
  end

  def test_customer_favourite_song_play_in_room__non_favourite
   assert_equal("This song is ok...", @room1.customers_favourite_song_plays(@customer2,"Coast Line"))
  end

  def test_room_has_bar_with_ballance
    assert_equal(200,@bar.bar_ballance)
  end

  def test_customer_buys_drink
    @room1.customer_buys_drink(@customer1,@drink1,@bar)
    assert_equal(45, @customer1.wallet_ammount)
    assert_equal(205, @bar.bar_ballance)
    assert_equal(2, @bar.drinks_list.length())
  end

end
