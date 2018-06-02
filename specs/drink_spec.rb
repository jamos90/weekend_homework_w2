require("minitest/autorun")
require_relative("../drink.rb")

class TestDrink < MiniTest::Test
  def setup
    @drink1 = Drink.new("beer",5, 7)
    @drink2 = Drink.new("wine", 6, 20)
    @drink3 = Drink.new("cider", 4, 4)
    @drink4 = Drink.new("juice", 3, 0)
  end

  def test_attributes_drink
    assert_equal("beer", @drink1.name)
    assert_equal(6, @drink2.price)
    assert_equal(20, @drink2.alcohol_level)
  end


end
