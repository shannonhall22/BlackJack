class BlackjackController < ApplicationController
  def deal

    #Player hand

    @first_card = rand(1..14)
      if @first_card > 10
        @first_card = 10
      else
        @first_card
      end

    @second_card = rand(1..14)
      if @second_card > 10
        @second_card = 10
      else
        @second_card
      end

    if @hit = "true"
      @first_hit_player = rand(1..10)
    end

    #need to only add if there are hits
    @hand_total = @first_card + @second_card + @first_hit_player

    # Dealer Hand

    @dealer_first_card = rand(1..14)
      if @dealer_first_card > 10
        @dealer_first_card = 10
      else
        @dealer_first_card
      end

    @dealer_second_card = rand(1..14)
      if @dealer_second_card > 10
        @dealer_second_card = 10
      else
        @dealer_second_card
      end

    @dealer_hit = rand(1..14)
      if @dealer_hit > 10
        @dealer_hit = 10
      else
        @dealer_hit
      end

    @dealer_total = @dealer_first_card + @dealer_second_card

    if @hand_total > @dealer_total
      #need to change variable name
      @dealer_total = @dealer_total + @dealer_hit
    end


    #Results of the game

    if @dealer_total > 21
      @result = "Dealer Bust!"
    elsif @dealer_total > @hand_total
      @result = "Dealer Wins!"
    elsif @hand_total > 21
      @result = "You Bust!"
    elsif @dealer_total < @hand_total
      @result = "You Win!"
    end
  end


#Not sure if this is the way to make the buttons appear true/false in order to make cards visable
  def true
    @deal = "true"
    @hit = "true"
    @stay = "true"
  redirect_to "/blackjack"
  end
end
