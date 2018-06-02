class Customer

  attr_reader :name, :wallet_ammount, :favourite_song, :drunkenness

  attr_writer :drunkenness

  def initialize(name, wallet_ammount, favourite_song, drunkenness)
    @name = name
    @wallet_ammount = wallet_ammount
    @favourite_song = favourite_song
    @drunkenness = drunkenness
  end

   def remove_money_from_wallet(amount)
     return if @wallet_ammount < amount
     @wallet_ammount -= amount
   end

   def favourite_song_plays(song)
    return "Whooo!" if song == @favourite_song
  else
    return "This song is ok..."
  end

  def too_drink_to_sing?
    true if @drunkenness >= 70
    return "Urggh ahh ahfdf"
      else
      return "They are sining like an angel"
  end

  def customer_buys_drink(drink)
    @wallet_amount -= drink.price
    @drunkenness += drink.alcohol_level
  end




end
