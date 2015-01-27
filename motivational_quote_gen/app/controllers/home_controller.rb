class HomeController < ApplicationController
  def basemood
    @mood = params[:input_mood]
    if @mood == "Happy"
      @quote = happy_quotes
    elsif @mood == "Blah"
      @quote = blah_quotes
    elsif @mood == "Sad"
      @quote = sad_quotes
    elsif @mood == "Morose"
      @quote = morose_quotes
    end
  end

  def happy_quotes
    happy_quotes = {1=>"Pay It Forward!",
                    2=>"That's great",
                    3=> "Let's hope current trends continue",
                    4=> "Happy Quote number 102 not found"}
    return happy_quotes[rand(1..4)]
  end

  def sad_quotes
    sad_quotes = {1=>"Feel Better",
                  2=>"Its not that bad",
                  3=>"Every cloud has a silver lining",
                  4=>"Its always better than you're imagining!"}
    return sad_quotes[rand(1..4)]
  end

  def blah_quotes
    blah_quotes = {1=>"Get pumped!",
                   2=>"Go outside its wonderful!",
                   3=>"Turn that frown upside down!",
                   4=>"Look at this!",}
    return blah_quotes[rand(1..4)]
  end

  def morose_quotes
    morose_quotes = {1=>"Stop feeling sorry for yourself!",
                     2=>"Life getting you down?",
                     3=>"YOLO, tale control of it",
                     4=>"Not sure what morose means exactly lol",}
    return morose_quotes[rand(1..4)]
  end

end
