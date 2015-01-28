class HomeController < ApplicationController
  def mood
    @quotes= {
    "Mad"=> [ ["“When you're mad, try to sit alone and think back. Remember,
              sometimes we need to fix ourselves first before we fix others”- Author Unknown","mad-kitten.jpg"],
              ["“The only real conflict you will ever have in your life won’t be with others,
              but with yourself.” - Shannon L. Alder","mad2.jpg"],
              ["“Anybody can become angry. That is easy, but to be angry with the
              right person and to the right degree and at the right time and for the right purpose,
              and in the right way. That is not within everybody's power and is not easy.” -Aristotle","mad3.jpg"]],

    "Sad"=> [ ["“You cannot protect yourself from sadness without protecting yourself from happiness.” - Jonathan Safran Foer", "sad_dog.jpg"],
              ["“When I despair, I remember that all through history the way of truth and love have always won. There have been tyrants and murderers, and for a time, they can seem invincible, but in the end, they always fall. Think of it--always.” ― Mahatma Gandhi", "sad2.jpg"],
              ["“Every man has his secret sorrows which the world knows not; and often times we call a man cold when he is only sad.” ― Henry Wadsworth Longfellow", "sad3.jpg"]],

    "Happy"=> [["“It is not how much we have, but how much we enjoy that makes happiness” - Charles Spurgeon", "happy_goat.jpeg" ],
              [ "“Folks are usually about as happy as they make their minds up to be.” -  Abraham Lincoln", "happy2.jpg"],
              [  "“It's so hard to forget pain, but it's even harder to remember sweetness. We have no scar to show for happiness. We learn so little from peace.” ― Chuck Palahniuk,", "happy3.jpg"],
              [  "“Happiness is when what you think, what you say, and what you do are in harmony.” - Mahatma Gandhi", "happy4.jpg"]],


    "Hungry"=>[["“There are people in the world so hungry, that God cannot appear to them except in the form of bread.” - Mahatma Gandhi", "hungry_cat.jpg"],
              [  "“The belly is an ungrateful wretch, it never remembers past favors, it always wants more tomorrow.”  - Aleksandr Solzhenitsyn,", "hungry2.jpg"],
              ["“When I give food to the poor, they call me a saint. When I ask why the poor have no food, they call me a communist.” - Hélder Câmara", "hungry3.jpg"]],

    "Tired"=> [["“When you come to the end of your rope, tie a knot and hang on.” - Franklin D. Roosevelt", "tired_dog.jpg"],
                ["“Sleep did not honor me with it’s presence.” - Alysha Speer", "tired2.jpg"],
                ["“I'm so tired I never want to wake up again. But I've figured out now that it was never them that made me feel that way. It was just me, all along.” - Maggie Stiefvater", "tired3.jpeg"]],

    "Stressed"=> [["“In times of stress, the best thing we can do for each other is to listen with our ears and our hearts and to be assured that our questions are just as important as our answers.” - Fred \"Mister\" Rogers", "stressed.jpg"],
                  ["“The people in my circle? Those who make me feel blessed; not stressed.”― Steve Maraboli", "stressed2.jpg"],
                  ["“You must learn to let go. Release the stress. You were never in control anyway.” ― Steve Maraboli", "stressed3.jpg"]]
                  }



  if params[:mood]
      mood = @quotes[params[:mood]].sample
      @image= make_meme_request
    end

  end

  def generate_memes


  end

  def make_meme_request
    @url="http://version1.api.memegenerator.net/Generators_Search?q=#{params[:mood]}&pageIndex=0&pageSize=12"
    page = HTTParty.get(@url).response.body
    response = JSON.parse(page)
    num=rand(10)
    @generator_id= response["result"][num]["generatorID"]
    image_url= response["result"][num]["imageUrl"]
    first_split= image_url.split("x/")
    second_split=first_split[1].split(".")
    @final_image_id= second_split[0]

    mood = @quotes[params[:mood]].sample
    username= ENV['EMAIL']
    password= ENV['PASSWORD']
    text=mood[0].split("-")
    @text0= text[0]
    @text1= text[1]
    url= "http://version1.api.memegenerator.net/Instance_Create?username=#{username}&password=#{password}&languageCode=en&generatorID=#{@generator_id}&imageID=#{@final_image_id}&text0=#{@text0}&text1=-#{@text1}"
    #url="http://version1.api.memegenerator.net/Instance_Create?username=anellis12&password=ssjpbh&languageCode=en&generatorID=562036&imageID=2805249&text0=push%20a%20hipster%20down%20the%20stairs&text1=now%20look%20who%27s%20tumbling"
    get_image_url(url)
  end

  def get_image_url(url)
    url=URI.encode(url)
    page = HTTParty.get(url).response.body
    response = JSON.parse(page)
    return  response["result"]["instanceImageUrl"] #"http://cdn.meme.am/instances/400x/58535636.jpg"
  end

end
