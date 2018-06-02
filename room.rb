require_relative("customer.rb")

class Room

   attr_reader :guests, :till_ammount, :room_cost, :drinks_list, :bar

  def initialize(guests, till_ammount, room_cost, track_list, max_occupancy, bar)

   @guests = guests
   @till_ammount = till_ammount
   @room_cost = room_cost
   @track_list = track_list
   @max_occupancy = max_occupancy
   @bar = bar

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

 def play_songs(song)
   @track_list.each {|song| p song.title}
 end

 def room_has_song(song)
    @track_list.include?(song)
  end

  def room_plays_song(song)
    return "The next song is #{song.title}" if room_has_song(song) == true
    return "We don't have that song"

  end

  def customers_favourite_song_plays(customer, song)
   return customer.favourite_song_plays(song) if song == customer.favourite_song

   return "This song is ok..."

  end

  def customer_buys_drink(customer,drink,bar)
    customer.remove_money_from_wallet(drink.price)
    customer.drunkenness += drink.alcohol_level
    bar.bar_ballance += drink.price
    bar.drinks_list.delete(drink)
  end

  def check_out_if_too_drunk(customer)
    if customer.too_drink_to_sing?
      remove_customers_from_room(customer)
    end
  end



end
