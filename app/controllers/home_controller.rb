class HomeController < ApplicationController
  def quotes
    @moods = ["Villainous", "Dalai-Lama-Esque", "Melancholy", "Sanctimonious", "Coooool"]

    @image_folder = params[:mood]
    @villainous_quotes = ["You know I've noticed an infestation here. Everywhere I look in fact nothing but undeveloped, unevolved, barely cautious, pond scum totally convinced of their own superiority as they scurry about their short, pointless lives! - Edgar the Bug", "If I tell the Hound to cut you in half, he'll do it without a second thought. - Joffrey Baratheon", "No one, NO ONE, is authorized to kidnap the Princess except ME. It just wouldn't be right! - Bowser", "Life...Dreams...Hope...Where do they come from? And where do they go? None of that junk is enough to fulfill your hearts! Destruction...Destruction is what makes life worth living! Destroy! Destroy! Destroy! Let's destroy everything! - Kefka"]
    @dalai_lama_esque_quotes = ['The Dalai Lama, when asked what surprised him most about humanity, answered "Man.... Because he sacrifices his health in order to make money. Then he sacrifices money to recuperate his health. And then he is so anxious about the future that he does not enjoy the present; the result being that he does not live in the present or the future; he lives as if he is never going to die, and then dies having never really lived."', "We carry inside us the wonders we seek outside us. - Rumi", "When you touch one thing with deep awareness, you touch everything. - Lao Tzu", "Each morning, we are born again. What we do today is what matters most. - Buddha"]
    @melancholy_quotes = ["People seldom do what they believe in. They do what is convenient, then repent. - Bob Dylan", "I am inhabited by a cry. Nightly it flaps out Looking, with its hooks, for something to love. I am terrified by this dark thing That sleeps in me; All day I feel its soft, feathery turnings, its malignity. - Sylvia Plath", "From childhood's hour I have not been As others were; I have not seen As others saw; I could not bring My passions from a common spring. From the same source I have not taken My sorrow; I could not awaken My heart to joy at the same tone; And all I loved, I loved alone. - Edgar Allan Poe", "There is no such thing as happiness, only lesser shades of melancholy. - Robert Burton"]
    @sanctimonious_quotes = ["Is life so dear or peace so sweet as to be purchased at the price of chains and slavery? Forbid it, Almighty God! I know not what course others may take, but as for me, give me liberty, or give me death! - Patrick Henry", "Things at Hogwarts are far worse than I feared - Dolores Umbridge", "Deep down, you know that you deserve to be punished. Don't you, Mr Potter? - Dolores Umbridge", "Only I can live forever - Thomas Riddle"]
    @coooool_quotes = ["The path of the righteous man is beset on all sides by the inequities of the selfish and the tyranny of evil men. Blessed is he, who in the name of charity and good will, shepherds the weak through the valley of darkness, for he is truly his brother's keeper and the finder of lost children. And I will strike down upon thee with great vengeance and furious anger those who would attempt to poison and destroy my brothers. And you will know my name is the Lord when I lay my vengeance upon thee! - Ezekiel 25:17", "If the facts don't fit the theory, change the facts. - Albert Einstein", "Time is a great teacher, but unfortunately it kills all its pupils. - Louis Hector Berlioz", "What you call love was invented by guys like me … to sell nylons. - Don Draper" ]
    @quote = ""
    if params[:mood] == "Villainous"
      @quote = @villainous_quotes[rand(3)]
    elsif params[:mood] == "Dalai-Lama-Esque"
      @quote = @dalai_lama_esque_quotes[rand(3)]
    elsif params[:mood] == "Melancholy"
      @quote = @melancholy_quotes[rand(3)]
    elsif params[:mood] == "Sanctimonious"
      @quote = @sanctimonious_quotes[rand(3)]
    else
      @quote = @coooool_quotes[rand(3)]
    end
  end
end
