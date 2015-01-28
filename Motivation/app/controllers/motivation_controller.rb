class MotivationController < ApplicationController
  def feel_good
    @background_color = get_color
    @headline_color = headline_color

    @quote = get_quote

      @feelings = params[:feelings]

      if @feelings == "_______"
      @feelings_image = "https://s-media-cache-ak0.pinimg.com/736x/cc/61/8d/cc618d3ccc8187eb0b45bfe0d7bd3633.jpg"

      elsif @feelings == "Awesome"
        @feelings_image = "http://www.kranthi9indian99.files.wordpress.com/2012/05/how_to_create_a_law_of_attraction_vision_board_2.jpg"

      elsif @feelings == "OK"
        @feelings_image = "http://www.clker.com/cliparts/9/e/1/2/11954237341217376590johnny_automatic_chef_says_okay.svg"

      elsif @feelings == "Could be better"
        @feelings_image = "http://i.dailymail.co.uk/i/pix/2013/11/22/article-2511574-1992DBBA00000578-107_634x421.jpg"

      else @feelings == "Whatever"
        @feelings_image = "http://img1.123tagged.com/en/whatever/44.jpg"

      end

  end
  def get_color
      "66CDAA"
  end

  def headline_color
    "000080"
  end



  def get_quote
    if params[:feelings]
      return FEELINGS[params[:feelings]].sample
    end
  end

  FEELINGS = {"Awesome" => ["It doesn't get any better than this!",
    "Love the life you live!",
    "God feels awesome about you!",
    "Man was born free!"],
    "OK" => ["It's OK. Don't worry be happy!",
      "Sometimes Your OK, sometimes your not. Don't give up!",
      "Ok today, better tomorrow!",
      "Being OK is Okay!"],

      "Could be better" => ["At least this isn't you car!",
        "Feel good today. This driver doesn't!",
        "I bet your gald you didn't road rage on the way to work!"],

        "Whatever" => ["Come on it's not that bad!",
          "Don't you hate it when people say that!",
          "Don't say Whatever. Say bestever!",
          "Don't let today ruin tomorrow!"]}


end
