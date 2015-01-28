class Quotation
  HASH = {
  "Happy" => ['"If you want to be happy, set a goal that commands your thoughts, liberates your energy, and inspires your hopes." ~ Andrew Carnegie', "happy.jpg"],
  "Sad" => ['"Give sorrow words; the grief that does not speak knits up the o-er wrought heart and bids it break." ~ William Shakespeare, Macbeth', "sad.jpg"],
  "Angry" => ['"Speak when you are angry and you will make the best speech you will ever regret." ~ Ambrose Bierce', "angry.jpg"],
  "Calm" => ['"Be like a duck. Calm on the surface, but always paddling like the dickens underneath." ~ Michael Caine', "calm.jpg"],
  "Sleepy" => ['"There is a time for many words, and there is also a time for sleep." ~ Homer, the Odyssey', "sleepy.jpg"],
  "Industrious" => ['"The harder you work, the luckier you are." ~ Gerald Ford', "industrious.jpg"],
  "" => ["Please choose a mood"]
  }

  attr_reader :mood, :quote, :image

  def initialize(mood, quote, image)
    @mood = mood
    @quote = quote
    @image = image
  end

  def self.get_quote(mood)
    array = HASH[mood]
    q = array[0]
    i = array[1]
    return Quotation.new(mood, q, i)
  end
end
