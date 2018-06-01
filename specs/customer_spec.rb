require("minitest/autorun")
require_relative("../customer.rb")
require_relative("../room.rb")

class TestCustomer < MiniTest::Test

  def setup
    @customer1 = Customer.new("James", 50, "Coast Line")
    @customer2 = Customer.new("Jess", 100, "Total Eclipse of the Heart")
    @room1 = Room.new(@capacity,150, 50, @track_list, 5)
  end

  def test_customer_attributes
    assert_equal("Jess", @customer2.name)
    assert_equal(100, @customer2.wallet_ammount)
    assert_equal("Total Eclipse of the Heart", @customer2.favourite_song)
  end

  def test_remove_money_from_wallet
    @customer2.remove_money_from_wallet(@room1)
    assert_equal(50, @customer2.wallet_ammount)
  end

end
