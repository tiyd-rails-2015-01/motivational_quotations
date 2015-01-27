class HomeController < ApplicationController
  def quotes
    @moods = ["Villainous", "Dalai-Lama-Esque", "Melancholy", "Sanctimonious", "Coooool"]

    @image_folder = params[:mood]
    @quote =
  end
end
