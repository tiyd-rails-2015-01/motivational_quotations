class HomeController < ApplicationController
  def login
  end

  def dashboard
    @mood = params[:mood]
    if @mood == "Sad"
      @quote = "Even a happy life cannot be without a measure of darkness,"+
      " and the word 'happy' would lose its meaning if it were not balanced by sadness. - Carl Jung"
      @mood_image = "http://www.crystalinks.com/jung.jpg"

    elsif @mood == "Anxious"
      @quote = "To have faith is to trust yourself to the water."+
      " When you swim you don’t grab hold of the water, because if you do you will sink and drown."+
      " Instead you relax, and float. - Alan Watts"
      @mood_image = "http://www.alanwatts.org/img/AW_library_close.jpg"

    elsif @mood == "Happy"
      @quote = "Happiness is not something ready made. It comes from your own actions. - Dalai Lama"
      @mood_image = "http://i.ytimg.com/i/iPJ_g02LuOgOG0ZNk5j1jA/mq1.jpg?v=51b046fb"

    elsif @mood == "Depressed"
      @quote = "To remain stable is to refrain from trying to separate yourself from a pain because"+
      " you know that you cannot. Running away from fear is fear, fighting pain is pain, trying to be"+
      " brave is being scared. If the mind is in pain, the mind is pain. The thinker has no other form than his thought. There is no escape. - Alan Watts"
      @mood_image = "http://upload.wikimedia.org/wikipedia/en/b/b1/Alan_Watts.jpg"
    elsif @mood == "Peaceful"
      @quote = "Do not dwell in the past, do not dream of the future, concentrate the mind on the present moment. - Buddha"
      @mood_image = "http://www.johnworldpeace.com/images/buddha017.jpg"
    elsif @mood == "Cheerful"
      @quote = "I love those who can smile in trouble... - Leonardo Da Vinci"
      @mood_image = "http://d.gr-assets.com/authors/1399080979p8/13560.jpg"
    end

  end
end
