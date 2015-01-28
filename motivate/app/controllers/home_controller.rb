# require 'httparty'

class HomeController < ApplicationController
  def getMeme( mood, string )
    size = "400"
    user = "chaden"
    pw = "goativated"
    #
    # wolf_image_ID = "20"
    # wolf_generator_ID = "45"

    memes = {
      "Vengeful" => {  "generator_id" => "45", #insanity_wolf
                            "image_id" => "20"},
      "Grouchy" => { "generator_id" =>  "2",
                    "image_id" => "166088"}, #yuno
      "Exultant" => { "generator_id" => "121",
                    "image_id" => "1031"}, #"successkid"
      "Fell" => { "generator_id" => "599952",#wonka
                  "image_id" => "2930933"},
      "Chipper" => { "generator_id" => "6013", #all_the_things
                            "image_id" => "1121885"},
      "Punchy" => {  "generator_id" => "305",  #fry
                  "image_id" => "84688"},
      "Bourgeois" => { "generator_id" => "74", #mostinterestingman
                                "image_id" => "2485"}
    }

    converted = URI.encode(string)
    url = "http://version1.api.memegenerator.net/Instance_Create?username=" +
      user + "&password=" + pw + "&languageCode=en&generatorID=" +
      memes[mood]["generator_id"] + "&imageID=" +
      memes[mood]["image_id"] + "&text0=" +
      converted

      # http://version1.api.memegenerator.net
      # /Instance_Create?username=chaden&password=goativated&languageCode=en&generatorID=45&imageID=20&text0=push%20a%20hipster%20down%20the%20stairs&text1=now%20look%20who%27s%20tumbling

      # http://version1.api.memegenerator.net/Instance_Create?username=chaden&password=goativated&languageCode=en&generatorID=45&imageID=20&text0=Hello%20sunshine!

    # url = "http://cdn.meme.am/instances/400x/58536508.jpg"
    goop = HTTParty.get(url)
    return goop["result"]["instanceImageUrl"]
  end

  def yourmood
    @mood = params[:mood]

    @radio = params[:mode]
    is_nightmare_mode = (@radio == "nightmare")

    if @mood == "Chipper"
      @motivation = [ "Hello sunshine!",
                      "Whee!",
                      "Well, hello!"]
      @goat_src = is_nightmare_mode ? getMeme("Chipper", @motivation.sample):"/assets/chipper_goat.jpg"

    elsif @mood == "Grouchy"
      @motivation = ["Helloooooo sunshine!"]
      @goat_src = is_nightmare_mode ? getMeme("Grouchy", @motivation.sample):"/assets/grouchy_goat.jpg"

    elsif @mood == "Punchy"
      @motivation = ["Hey, You should try taking this test 500 times for a special surprise!"]
      @goat_src = is_nightmare_mode ? getMeme("Punchy",@motivation.sample):"/assets/punchy_goat.jpg"

    elsif @mood == "Fell"
      @motivation = ["DOOM! DOOOOOOOOOM!"]
      @goat_src = is_nightmare_mode ? getMeme("Fell",@motivation.sample):"/assets/doom_goat.jpg"

    elsif @mood == "Exultant"
      @motivation = ["Success!"]
      @goat_src = is_nightmare_mode ? getMeme("Exultant",@motivation.sample):"/assets/exult_goat.jpg"

    elsif @mood == "Vengeful"
      @motivation = ["You are swift and merciless!"]
      @goat_src = is_nightmare_mode ? getMeme("Vengeful",@motivation.sample):"/assets/vengeful_goat.jpg"

    elsif @mood == "Bourgeois"
      @motivation = ["They tell me greed is good!"]
      @goat_src = is_nightmare_mode ? getMeme("Bourgeois",@motivation.sample):"/assets/rich_goat.jpg"

    end

    if( @motivation != nil )
      @returned_val = @motivation.sample
    end

  end

end
