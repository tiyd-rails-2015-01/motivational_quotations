class HomeController < ApplicationController
  # From the user's point of view:
  #
  # The user should be able to go to the root URL of the application and be asked for their current mood. The mood should be selected from a dropdown with a pre-defined set of moods (determined by you).
  # The user should be able to submit their mood via an HTML form, and he/she will then be presented with a motivational quotation.
  # An image related to the quotation should be shown underneath the quotation as well.
  # In terms of code:
  #
  # The application should have one view, one controller, and no models.
  def mood
    @quotes= {
    "Mad"=> [ ["“When you're mad, try to sit alone and think back. Remember,
              sometimes we need to fix ourselves first before we fix others”- Author Unknown","mad-kitten.jpg"],
              ["“The only real conflict you will ever have in your life won’t be with others,
              but with yourself.” ― Shannon L. Alder","mad2.jpg"],
              ["“Anybody can become angry - that is easy, but to be angry with the
              right person and to the right degree and at the right time and for the right purpose,
              and in the right way - that is not within everybody's power and is not easy.” -Aristotle","mad3.jpg"]],

    "Sad"=> [ ["“You cannot protect yourself from sadness without protecting yourself from happiness.” ― Jonathan Safran Foer", "sad_dog.jpg"],
              ["“When I despair, I remember that all through history the way of truth and love have always won. There have been tyrants and murderers, and for a time, they can seem invincible, but in the end, they always fall. Think of it--always.” ― Mahatma Gandhi", "sad2.jpg"],
              ["“Every man has his secret sorrows which the world knows not; and often times we call a man cold when he is only sad.” ― Henry Wadsworth Longfellow", "sad3.jpg"]],

    "Happy"=> [["“It is not how much we have, but how much we enjoy that makes happiness” - Charles Spurgeon", "happy_goat.jpeg" ],
              [ "“Folks are usually about as happy as they make their minds up to be.” ― Abraham Lincoln", "happy2.jpg"],
              [  "“It's so hard to forget pain, but it's even harder to remember sweetness. We have no scar to show for happiness. We learn so little from peace.” ― Chuck Palahniuk,", "happy3.jpg"],
              [  "“Happiness is when what you think, what you say, and what you do are in harmony.” ― Mahatma Gandhi", "happy4.jpg"]],


    "Hungry"=>[["“There are people in the world so hungry, that God cannot appear to them except in the form of bread.” ― Mahatma Gandhi", "hungry_cat.jpg"],
              [  "“The belly is an ungrateful wretch, it never remembers past favors, it always wants more tomorrow.”  ― Aleksandr Solzhenitsyn,", "hungry2.jpg"],
              ["“When I give food to the poor, they call me a saint. When I ask why the poor have no food, they call me a communist.” ― Hélder Câmara", "hungry3.jpg"]],

    "Tired"=> [["“When you come to the end of your rope, tie a knot and hang on.” -Franklin D. Roosevelt", "tired_dog.jpg"],
                ["“Sleep did not honor me with it’s presence.” ― Alysha Speer", "tired2.jpg"],
                ["“I'm so tired I never want to wake up again. But I've figured out now that it was never them that made me feel that way. It was just me, all along.” ― Maggie Stiefvater", "tired3.jpeg"]],

    "Stressed"=> [["“In times of stress, the best thing we can do for each other is to listen with our ears and our hearts and to be assured that our questions are just as important as our answers.” -Fred \"Mister\" Rogers", "stressed.jpg"],
                  ["“The people in my circle? Those who make me feel blessed; not stressed.”― Steve Maraboli", "stressed2.jpg"],
                  ["“You must learn to let go. Release the stress. You were never in control anyway.” ― Steve Maraboli", "stressed3.jpg"]]
                  }



  if params[:mood]
      mood = @quotes[params[:mood]].sample
      @message= mood[0]
      @image= mood[1]
    end

  end
end
