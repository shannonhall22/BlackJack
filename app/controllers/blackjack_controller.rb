 class BlackjackController < ApplicationController

  def deal
    @first_card = rand(10)
    @second_card = rand(10)

    @hand_total = @first_card + @second_card

    @dealer_first_card = rand(10)
    @dealer_second_card = rand(10)

    @dealer_total = @dealer_first_card + @dealer_second_card

    @hit = rand(10)

    if @hand_total > @dealer_total
      @dealer_total = @dealer_total + @hit
    end
  end

 end
