class HomeController < ApplicationController
  def motivation
    quotes = {
      "Happy" => [["Life is better when you’re laughing. - unknown", "happy_laugh.jpg"],
                          ["Use your smile to change the world. Don’t let the world change your smile. - unknown", "happy_smile.jpg"],
                          ["The purpose of our lives is to be happy. –Dalai Lama", "happy_lama.jpg"],
                          ["Death is the greatest form of love. -Charles Manson", "happy-manson.jpg"]
                         ],
              "Sad" => [["Every human walks around with a certain kind of sadness. They may not wear it on their sleeves, but it's there if you look deep. - unknown", "wear_sad.jpg"],
                        ["Your pain is the breaking of the shell that encloses your understanding. - unknown","sad_shell.jpg"],
                        ["They ask me what I do and who I do it for. When I die, bury me inside the booty club –2Chainz","sad_chainz.jpeg"],
                        ["You people would convict a grilled cheese sandwich of murder and the people wouldn’t question it. -Charles Manson", "sad_manson.jpg"]
                       ],
              "I just don't know how to feel anymore" =>[["Look up at the stars and not down at your feet. Try to make sense of what you see, and wonder about what makes the universe exist. Be curious. - unknown","idk_stars.jpg"],
                                                         ["Would you believe in what you believe in if you were the only one who believed it? -Kanye West","idk_kanye.png"],
                                                         ["Our first date was the Waffle House. Different day, different escapades. If they don’t like it they opinions like Escalade’s Everybody got one –2Chainz","idk_chainz.jpg"],
                                                         ["Remorse for what? You people have done everything in the world to me. Doesn't that give me equal right? -Charles Manson","idk_manson.jpg"]
                                                        ],
              "ok" => [["Are we the baddies? - unknown Nazi","ok_bad.jpg"],
                       ["I don't even listen to rap. My apartment is too nice to listen to rap in. -Kanye West","ok_kanye.jpg"],
                       ["I came up on Luke Campbell, I’m so sick I need Campbells –2Chainz","ok_chainz.jpg"],
                       ["Now I am too beautiful to be set free. -Charles Manson","ok_manson.jpg"]
                      ]
              }
    if params[:your_mood]
      mood = quotes[params[:your_mood]].sample
      @quote = mood[0]
      @image = mood[1]
    end
  end
end
