class HomeController < ApplicationController

  def homepage
    @mood = params[:mood]

    if @mood == "Nothing"
      @mood_image = "http://i.imgur.com/9GTPnhA.gif"

    elsif @mood == "Pharrell- Happy"
      @mood_image = "http://media.giphy.com/media/CaOc1VWJGBa00/giphy.gif"

    elsif @mood == "Michael Scott- Lost"
      @mood_image = "https://s-media-cache-ak0.pinimg.com/736x/e2/88/80/e288808e78af104256acff252ee17ef3.jpg"

    elsif @mood == "Michael Byrd- Genius"
      @mood_image = "https://i.imgflip.com/gw9co.jpg"

    else @mood == "Mason- LOVES Kitties"
        @mood_image = "https://s-media-cache-ak0.pinimg.com/736x/93/37/68/9337685a3e9b481b21988b4751c8911f.jpg"
    end
  end


end
