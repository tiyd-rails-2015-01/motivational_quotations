class HomeController < ApplicationController
  def goativation
    @mood = params[:current_mood]
    @temp = Quote.get_quote(@mood)
    @wisdom = @temp[0]
    @name = @temp[1]
    @image = @temp[2]
  end
end
