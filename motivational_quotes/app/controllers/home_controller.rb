class HomeController < ApplicationController
  def mood
    @quotation = Quotation.get_quotation(params[:mood])
  end

end
