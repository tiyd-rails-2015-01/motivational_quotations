class HomeController < ApplicationController
  def login
  end

  def dashboard
    @mood = params[:mood]
    if @mood == "-----"
      quote_array = ["You picked nothing!", "Try again smart guy!" ,"Try another button!", "BAAAAAAD Choice"]
      @mood_quote = quote_array.sample
      if @mood_quote == "You picked nothing!"
        @mood_image = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShBE9dLMWVBuSgxCvDtue40ZCB8DjtUgNRx3C8akBlRLmsHsOp"
      elsif @mood_quote == "Try again smart guy!"
        @mood_image = "http://4.bp.blogspot.com/-DRVMfO9HmCw/UAr_l4Nt2lI/AAAAAAAAAKY/0XyPb8CSd-g/s1600/imagesCA7SWM01.jpg"
      elsif @mood_quote == "Try another button!"
        @mood_image = "http://venture.mcmaster.ca/Camper_Websites/Week_5/Robots/happy_face_scratching_chin_question_hg_wht.gif"
      else @mood_quote == "BAAAAAAd Choice"
        @mood_image = "http://th04.deviantart.net/images3/PRE/i/2005/153/5/f/Smiling_Goat_by_serpentesse.jpg"
      end
    elsif @mood == "Happy"
      quote_array = ["You're having a great day!", "Wohoooo!", "Hope it continues!" ]
      @mood_quote = quote_array.sample
      if @mood_quote == "You're having a great day!"
        @mood_image = "http://vignette1.wikia.nocookie.net/suburgatory/images/5/52/Happy_face.jpg/revision/latest?cb=20120412051836"
      elsif @mood_quote == "Wohoooo!"
        @mood_image = "https://s-media-cache-ak0.pinimg.com/236x/65/8c/d6/658cd6f0bb520e170e0643d7e0e86c77.jpg"
      else @mood_quote == "Hope it continues!"
        @mood_image = "http://blogs.centre.edu/healthpsychology2014/files/2014/10/great-keep-it-up-smiley-face.png"
      end
    elsif @mood == "Sad"
      quote_array = ["Sorry you're feeling down!", "The sun will come out tomorrow!", "Don't worry Be Happy!" ]
      @mood_quote = quote_array.sample
      if @mood_quote == "Sorry you're feeling down!"
        @mood_image = "http://previews.123rf.com/images/arcady31/arcady311106/arcady31110600020/9718593-sorry-emoticon-smiley.jpg"
      elsif @mood_quote == "The sun will come out tomorrow!"
        @mood_image = "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRUnMmnPC7RyrA0-VmAWnjLOQuZhmNhnJyK1wqIUd9VBN3fexa8hw"
      else @mood_quote == "Don't worry Be Happy!"
        @mood_image = "http://www.2tees.com/1dontworrybehappyteeshirt.jpg"
      end
    else @mood == "Meh"
      quote_array = ["Show some emotion will you!", "You're a zombie!", "Are you even awake!"]
      @mood_quote = quote_array.sample
      if @mood_quote == "Show some emotion will you!"
        @mood_image = "http://www.meh.ro/wp-content/uploads/2012/04/meh.ro9696-455x455.jpg"
      elsif @mood_quote == "You're a zombie!"
        @mood_image = "data:image/jpeg;base64,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"
      else @mood_quote == "Are you even awake!"
        @mood_image = "http://www.i2clipart.com/cliparts/2/0/d/a/clipart-yawn-sleep-smiley-emoticon-512x512-20da.png"
      end
    end
  end

end
