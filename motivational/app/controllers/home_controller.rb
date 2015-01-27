 class HomeController < ApplicationController

   def motivate

     @quotes = {

       "Happy"=> [["Be happy with what you have. Be excited about what you want. - Alan Cohen", "happy1.jpg"],
                        ["Dream as if you'll live forever, live as if you'll die today. - James Dean","happy-bug.jpg"],
                        ["Doing what you like is freedom. Liking what you do is happiness. -Frank Tyger", "happy3.jpg"]],

       "Sad"=> [["The secret of health for both mind and body is not to mourn for the past, not to worry about the future, nor to anticipate troubles, but to live in the present moment wisely and earnestly. –Buddha", "sad1.jpeg"],
                       ["Happiness does not depend upon who you are or what you have. It depends solely upon what you think. –Dale Carnegie", "sad2.jpg"],
                       ["There is no such thing in anyone’s life as an unimportant day. –Alexander Woollcott", "sad3.jpeg"]],

       "Meh"=> [["Be miserable. Or motivate yourself. Whatever has to be done, it’s always your choice. –Wayne Dyer", "meh1.jpg"],
                       ["You wanna go get some taco bell? -unknown", "meh2.jpg"],
                         ["You should take a nap. -millennials", "meh3.jpeg"]]
                       }

      if @motivate = params[:motivate]
       motivate = @quotes[params[:motivate]].sample
        @motivate_quote = motivate[0]
        @image = motivate[1]

      end
    end



  # def motivate_me

  #images = {"Happy" => happy1.jpg}

end
