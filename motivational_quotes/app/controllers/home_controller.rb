class HomeController < ApplicationController

  def mood
    quotation = Quotation.get_quotation(params[:mood])
    @message= quotation.message
    @image= quotation.image
  end
end
