class HomeController < ApplicationController
  def yourmood
    @mood = params[:mood]


    if @mood == "Chipper"
      @motivation = [ "Hello sunshine!",
                      "Whee!",
                      "Well, hello!"]
      @goat_src = "/assets/chipper_goat.jpg"

    elsif @mood == "Grouchy"
      @motivation = ["Helloooooo sunshine!"]
      @goat_src = "/assets/grouchy_goat.jpg"

    elsif @mood == "Punchy"
      @motivation = ["Hey, You should try taking this test 500 times for a special surprise!"]
      @goat_src = "/assets/punchy_goat.jpg"

    elsif @mood == "Fell"
      @motivation = ["DOOM! DOOOOOOOOOM!"]
      @goat_src = "/assets/doom_goat.jpg"

    elsif @mood == "Exultant"
      @motivation = ["Success!"]
      @goat_src = "/assets/exult_goat.jpg"

    elsif @mood == "Vengeful"
      @motivation = ["You are swift and merciless!"]
      @goat_src = "/assets/vengeful_goat.jpg"

    elsif @mood == "Bourgeois"
      @motivation = ["They tell me greed is good!"]
      @goat_src = "/assets/rich_goat.jpg"

    end
    if( @motivation != nil )
      @returned_val = @motivation.sample
    end

  end

end
