require("minitest/autorun")
require_relative("../bar.rb")
require_relative("../drink.rb")

class TestBar < MiniTest::Test
  def setup
    @drink1 = Drink.new("beer",5)
    @drink2 = Drink.new("wine", 6)
    @drink3 = Drink.new("cider", 4)
    @drink4 = Drink.new("juice", 3)

    @drinks_list = [@drink1, @drink2, @drink3]
    @bar = Bar.new(@drinks_list,200)
  end

  def test_attributes_bar
    assert_equal(200, @bar.bar_ballance)
    assert_equal(3, @bar.drinks_list.length())

  end


end
