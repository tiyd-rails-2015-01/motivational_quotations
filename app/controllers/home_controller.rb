class HomeController < ApplicationController
  def quotes
    @moods = ["Villainous", "Dalai-Lama-Esque", "Melancholy", "Sanctimonious", "Coooool... B)"]
    @image_folder = "#{params[:mood]}"
  end
end
