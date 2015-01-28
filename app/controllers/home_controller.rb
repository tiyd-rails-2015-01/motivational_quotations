class HomeController < ApplicationController
  def login
  end

  def dashboard
    quotation = Quotation.get_quotation(params[:mood])

    @mood_quote = quotation.text
    @mood_image = quotation.image_url
  end
end
