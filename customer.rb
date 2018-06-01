class Customer

  attr_reader :name, :wallet_ammount, :favourite_song

  def initialize(name, wallet_ammount, favourite_song)
    @name = name
    @wallet_ammount = wallet_ammount
    @favourite_song = favourite_song
  end

   def remove_money_from_wallet(amount)
     return if @wallet_ammount < amount
     @wallet_ammount -= amount
   end





end
