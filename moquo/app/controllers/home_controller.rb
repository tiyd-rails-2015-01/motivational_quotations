class HomeController < ApplicationController

  def default
    @mood = params[:mood]
    everything = {
      "Angry" => {"Chill Bro!" => "cat_angry.jpg",
                  "Science is hard!" => "neil_angry.jpg",
                  "I'm a loner, Dottie." =>"pee_angry.jpg",
                  },
      "Confused" => {"You'll Figure it out." => "cat_confused.jpg",
                     "You are the universe." => "neil_confused.jpg",
                     "Good for you and your father." => "pee_confused.jpg",
                     },
      "Sad" => {"It'll be okay!" => "cat_sad.jpg",
                       "You're a star!" => "neil_sad.jpg",
                       "I know you are, but what am I?" => "pee_sad.jpg",
                       },
      "" => {"Y U NO CHOOSE?" => "YUNO.PNG"}
      }


    quote_pic = everything[params[:mood]]

    if quote_pic
      @quote = quote_pic.keys.sample
      @pic = quote_pic[@quote]
    end
  end
end
