require("minitest/autorun")
require_relative("../customer.rb")

class TestCustomer < MiniTest::Test

  def setup
    @customer1 = Customer.new("James", 50, "Coast Line")
    @customer2 = Customer.new("Jess", 100, "Total Eclipse of the Heart")
  end

  def test_customer_attributes
    assert_equal("Jess", @customer2.name)
    assert_equal(100, @customer2.wallet_ammount)
    assert_equal("Total Eclipse of the Heart", @customer2.favourite_song)
  end

end
