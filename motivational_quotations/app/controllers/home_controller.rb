class HomeController < ApplicationController
  def mood
    if @mood == "Happy"
      @quotation = ['"If you want to be happy, set a goal that commands your thoughts, liberates your energy, and inspires your hopes." ~ Andrew Carnegie', "happy.jpg"]
    elsif @mood == "Sad"
      @quotation = ['"Give sorrow words; the grief that does not speak knits up the o-er wrought heart and bids it break." ~ William Shakespeare, Macbeth', "sad.jpg"]
    elsif @mood == "Angry"
      @quotation =['"Speak when you are angry and you will make the best speech you will ever regret." ~ Ambrose Bierce', "angry.jpg"]
    elsif @mood == "Calm"
      @quotation =['"Be like a duck. Calm on the surface, but always paddling like the dickens underneath." ~ Michael Caine', "calm.jpg"]
    elsif @mood == "Sleepy"
      @quotation =['"There is a time for many words, and there is also a time for sleep." ~ Homer, the Odyssey', "sleepy.jpg"]
    elsif @mood == "Industrious"
      @quotation =['"The harder you work, the luckier you are." ~ Gerald Ford', "industrious.jpg"]
    end
  end
end
