class HomeController < ApplicationController
  def mood
    @quote = Quotation.get_quote(params[:mood_selector])
  end
end
