class Bar

  attr_reader :drinks_list, :bar_ballance
  attr_writer :bar_ballance

  def initialize(drinks_list, bar_ballance)
    @drinks_list = drinks_list
    @bar_ballance = bar_ballance
  end

end
