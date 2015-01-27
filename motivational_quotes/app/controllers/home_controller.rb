class HomeController < ApplicationController
  def mood
    @mood = params[:mood]

    moods = {"Happy" => ["The most important thing is to enjoy your life - to be happy - it's all that matters.", "La de da, flowers and shit."],
             "Sad" => ["Every human walks around with a certain kind of sadness. They may not wear it on their sleeves, but it's there if you look deep. --Taraji P. Henson", "Boo hoo hoo I am so sad I'm going to listen to the Cure and weep."],
             "Angry" => ["Never go to bed angry, stay awake and plot revenge.", "Fuck you, you fucking fuck."],
             "Frightened" => ["Did you hear that?", "Even the bravest men are frightened by sudden terrors."],
             "Frustrated" => ["I don't have enough middle fingers to let you know how I feel.", "I don't even like you.", "What the fuck, ruby."],
             "Sarcastic" => ["Boy howdy.", "</sarcasm>"]}


    if moods[@mood] != nil
      @quote = moods[@mood].sample
    end

    # if @mood
    #   @quote = moods[@mood].sample
    #
    # end


    @images = params[:mood]

    images = {"Happy" => "http://www.tehcute.com/pics/201107/Red-panda.jpg",
              "Sad" => "http://cutearoo.com/wp-content/uploads/2012/11/Red-Panda.jpg",
              "Angry" => "http://media.her.ie/wp-content/uploads/2014/03/put-out-panda.jpg",
              "Frightened" => "http://media.tumblr.com/24e259a32544b06f4fa2c0347ea69214/tumblr_inline_nchu6ikJMg1shz6fd.gif",
              "Frustrated" => "http://4.bp.blogspot.com/-JqFyFIAsdHM/TpOec0QtYxI/AAAAAAAAAAY/vwbwP2wnlvM/s1600/redpandaapple.jpg",
              "Sarcastic" => "https://secure.static.tumblr.com/6eac73d14dc0c75362df0512ded26273/vxp4aez/bZCncmwgw/tumblr_static_tumblr_static_bdxi00qnym808w0k8okwgo8k_1280.gif"

}

    @picture = images[@images]

  @picture= images[@mood]
  end



end
