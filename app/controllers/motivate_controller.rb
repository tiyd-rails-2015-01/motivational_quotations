class MotivateController < ApplicationController
  def quotes
    @feeling = params[:feeling]
    if @feeling == '..'
      @mood = nil
    elsif @feeling == 'Angry'
      @mood = 'Good, Goooood, let the hate flow through you!
      It gives you FOCUS!'
    elsif @feeling == 'Happy'
      @mood = 'Clap along if you feel like a room without a roof!
      (wtf does that even mean??)'
    end
  end
end
