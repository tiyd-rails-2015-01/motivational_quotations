class HomeController < ApplicationController

  def mood
    moods = { "debbie_downer" => ["who ate your bowl of sunshine this morning, thundercloud?",
                                  "thanks for bringing us all down",
                                  "the sun will come out tomorrow, unless it rains again"],
              "sloth" => ["don't bother to change out of sweatpants, they're the uniform of the
                                  depressed",
                          "go ahead, take a nap",
                          "you can put forth effort, next time"],
              "content" => ["remember, the role of batman has already been cast",
                            "some people have ambition"],
              "empowered" => ["behold the power",
                            "if you reach for the stars and miss, you have a long way to fall"],
              "gleeful" => ["congrats",
                             "such a ray of sunshine"],
              "estatic" => ["your favourite character is killed off in the next episode", "if you've
                        won the lottery, you can buy us lunch" ]
            }
    if params[:moods]
      @quote = moods[params[:moods]].sample
    end

    @mood = params[:moods]
    lookupimage = {
      "debbie_downer" =>
          "https://jullianiskool.files.wordpress.com/2014/09/thumb.jpg",
      "sloth" => "http://www.troll.me/images/socially-lazy-sloth/dont-give-up-your-dreams-keep-sleeping.jpg",
      "content" => "http://www.widepixelart.com/img/ocea23.jpg",
      "empowered" =>
        "http://1.bp.blogspot.com/-sJPmLXEmqK8/U7qIGqDB0UI/AAAAAAAAUd4/3-qr9ekDeNA/s1600/Vincenzo+Nibali++loopt+blauwtje+left+red-faced+after+podium+'kiss'+gaffe+-+Tour+de+France+2014.gif",

      "gleeful" =>
          "http://www.eonline.com/eol_images/Entire_Site/20100330/425.despicableme.2.lc.033010.jpg",
      "estatic" => "http://www.fimfiction-static.net/images/story_images/137325.jpg?1387649806"
      }
      @shownimage = lookupimage[@mood]
    end

end
