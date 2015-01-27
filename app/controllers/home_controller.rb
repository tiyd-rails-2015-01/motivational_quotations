class HomeController < ApplicationController
  def quotes
    @moods = ["Villainous", "Dalai-Lama-Esque", "Melancholy", "Sanctimonious", "Coooool"]

    @image_folder = params[:mood]
    @villainous_quotes = ["You know I've noticed an infestation here. Everywhere I look in fact nothing but undeveloped, unevolved, barely cautious, pond scum totally convinced of their own superiority as they scurry about their short, pointless lives! - Edgar the Bug", "If I tell the Hound to cut you in half, he'll do it without a second thought. - Joffrey Baratheon", "No one, NO ONE, is authorized to kidnap the Princess except ME It just wouldn't be right! - Bowser", "Life...Dreams...Hope...Where do they come from? And where do they go? None of that junk is enough to fulfill your hearts! Destruction...Destruction is what makes life worth living! Destroy! Destroy! Destroy! Let's destroy everything! - Kefka"]
    @dalai_lama_esque_quotes = []
    @melancholy_quotes = []
    @sanctimonious_quotes = []
    @coooool_quotes = []
    @quote = ""
    if params[:mood] == "Villainous"
      @quote = @villainous_quotes[rand(3)]
    end
  end
end
