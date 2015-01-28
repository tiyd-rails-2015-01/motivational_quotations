class HomeController < ApplicationController

  def login
  end

  def dashboard
    quotation = Quotation.get_quotation(params[:mood])
    @mood_quote = quotation.text
    @mood_image = quotation.image_url
  end
end

#
#   def homepage
#     @mood = params[:mood]
#
#     if @mood == "Nothing"
#       @mood_image = ["http://i.imgur.com/9GTPnhA.gif",
#                      "http://cdn.meme.am/instances/53199831.jpg"].sample
#       @mot_quote = ["Don't stare at me like I'm a blank screen.", "Click again."].sample
#
#     elsif @mood == "Pharrell- Happy"
#       @mood_image = ["http://media.giphy.com/media/CaOc1VWJGBa00/giphy.gif",
#                      "http://siliconangle.com/files/2011/08/matz.jpg"].sample
#       @mot_quote = ["I HAS ALL THE HAPPINESS", "Momma said life is like a box of chocolates. You never know which one you're gunna get."].sample
#
#     elsif @mood == "Michael Scott- Lost"
#       @mood_image = ["https://s-media-cache-ak0.pinimg.com/736x/e2/88/80/e288808e78af104256acff252ee17ef3.jpg",
#                      "http://cdn1.theodysseyonline.com/files/2015/01/08/635562831871425712-2126643709_6634.jpg"].sample
#       @mot_quote = ["If at first you don't succeed, try try again.", "Never give up. Don't ever give up. -Jimmy V"].sample
#
#     elsif @mood == "Michael Byrd- Genius"
#       @mood_image = ["https://i.imgflip.com/gw9co.jpg", "https://i.imgflip.com/gwc0w.jpg"].sample
#       @mot_quote = ["90% mental and 10% physical? Yeah, right.", "Stop. Collaborate and listen. Ice is back with a brand new edition."].sample
#
#     else @mood == "Mason- LOVES Kitties"
#         @mood_image = ["https://s-media-cache-ak0.pinimg.com/736x/93/37/68/9337685a3e9b481b21988b4751c8911f.jpg", "https://i.imgflip.com/gwccp.jpg"].sample
#         @mot_quote = ["I will stop sending you kitties....maybe.", "Ke$ha is pronounced Key-dollar-sign-HA."].sample
#     end
