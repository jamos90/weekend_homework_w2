class Room

   attr_reader :capacity, :till_ammount, :room_cost

  def initialize(capacity, till_ammount, room_cost, track_list, max_occupancy)

   @capacity = capacity
   @till_ammount = till_ammount
   @room_cost = room_cost
   @track_list = track_list
   @max_occupancy = max_occupancy
 end

 def track_list_length
   return @track_list.length()
 end

 def add_song(song)
   return @track_list.push(song)
 end

 def customer_count
   return @capacity.length()
 end

 def add_customer_to_room(customer)
   return if @capacity.count >= @max_occupancy
  return @cpacity.push(customer)
 end





end
