class HomeController < ApplicationController
  def basemood
    @mood = params[:input_mood]
    if @mood == "Happy"
      @quote = happy_quotes
      @picture = happy_picture
    elsif @mood == "Blah"
      @quote = blah_quotes
      @picture = blah_picture
    elsif @mood == "Sad"
      @quote = sad_quotes
      @picture = sad_picture
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
                     3=>"YOLO, take control of it",
                     4=>"Not sure what morose means exactly lol",}
    return morose_quotes[rand(1..4)]
  end

  def happy_picture
    happy_link = {1=>"https://i1.sndcdn.com/artworks-000074067288-cpc6s6-t500x500.jpg",
                  2=>"http://www.deliveringhappiness.com/wp-content/uploads/2011/10/happyball.jpg",
                  3=>"http://blog.hillsbiblechurch.org/wp-content/uploads/2012/03/Self-satisfied.png",
                  4=>"http://bit.ly/1LfcStD",
                  }
    return happy_link[rand(1..4)]
  end

  def sad_picture
    sad_link = {1=>"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHSlJRYxaIAkHxLosUXfpQbPppOB7wHBA4SRjnWCTrpUryJ4N7nw",
                2=>"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSu6E9M2FcCSkM1qiioWhbKfw4KRjkPvIDvvwCOXwrVGJyLjP3Z",
                3=>"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8aayatwhmdloi1bjiny7kL83Mq7NY9oQairayKdTHdc7dN94_og",
                4=>"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjgp6_goE8T3j4tcSjwbYSrg_LcsBdnIDF3HVEiz8gHVqgfLeObQ",
                }
    return sad_link[rand(1..4)]
  end

  def blah_picture
    blah_link = {1=>"",
                 2=>"",
                 3=>"",
                 4=>"",
                 }
    return blah_link[rand(1..4)]
  end

  def morose_picture
  end


end
