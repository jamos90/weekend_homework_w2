class Room

   attr_reader :capacity, :till_ammount, :room_cost

  def initialize(capacity, till_ammount, room_cost, track_list)
   @capacity = capacity
   @till_ammount = till_ammount
   @room_cost = room_cost


  end

end
