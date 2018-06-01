require_relative("customer.rb")

class Room

   attr_reader :guests, :till_ammount, :room_cost

  def initialize(guests, till_ammount, room_cost, track_list, max_occupancy)

   @guests = guests
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
   return @guests.length()
 end

 def add_customer_to_room(customer)
  return if @guests.length >= @max_occupancy
  return @guests.push(customer)
 end

 def remove_customers_from_room(customer)
   return @guests.delete(customer)
 end

 def customer_pays_for_room(customer)
   customer.remove_money_from_wallet(@room_cost)
   @till_ammount += @room_cost
 end

end
