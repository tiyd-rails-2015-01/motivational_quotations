class Quote
  def self.get_quote(mood)
    if mood == "Prepare yourself to..."
      setup = ["Mehhhhhhh!", "– Pudgie", "https://scontent-b-atl.xx.fbcdn.net/hphotos-xfp1/v/t1.0-9/1912279_10152205"\
                       "279472272_902943218_n.jpg?oh=a759bc947b2d56659615cb33c84ff51c&oe=5521C104"]
      return setup
    elsif mood == "Awesome"
      awesome_thoughts = [["“A good head and a good heart are always a formidable combination.”", "– Nelson Mandela",
                            "https://fbcdn-sphotos-g-a.akamaihd.net/hphotos-ak-frc3/v/t1.0-9/1002581_10151946879242272"\
                            "_805766228_n.jpg?oh=0234b3f87051781e75c08ffb77882fd1&oe=556D0CD7&__gda__=1428695962_0efeca00b04bf537dc6bcb599721fcd0"],
                          ["“Tomorrow hopes we have learned something from yesterday.”", "– John Wayne",
                            "https://scontent-a-atl.xx.fbcdn.net/hphotos-xfp1/v/t1.0-9/8553_10151638933767272_1924501297"\
                            "_n.jpg?oh=5385719a7591362f930fca33e045d48f&oe=55558041"],
                          ["“When you have confidence, you can have a lot of fun.  And when you have fun, you can do amazing things.”", "– Joe Namath",
                            "https://fbcdn-sphotos-c-a.akamaihd.net/hphotos-ak-xaf1/v/t1.0-9/299202_10151510858507272"\
                            "_561222990_n.jpg?oh=330555ec1f57a46815d08c93051a0e06&oe=5564A006&__gda__=1433124565_36eb0ee1c45c9a178f9936eed8f876b1"]]
      return awesome_thoughts.sample
    elsif mood == "Bored"
      bored_thoughts = [["“We are what are thoughts have made us, so take care what you think.”", "– Swami Vivekananda",
                          "https://scontent-b-atl.xx.fbcdn.net/hphotos-xap1/v/t1.0-9/7391_10151510885422272_654930826"\
                          "_n.jpg?oh=55459e694af36501d3be9dec768d2c71&oe=55600694"],
                        ["“It is easier to find men who are willing to die, than to find those who are willing to endure pain with patience.”", "– Julius Caesar",
                          "https://scontent-a-atl.xx.fbcdn.net/hphotos-xaf1/v/t1.0-9/531053_10151118301452272_639606085"\
                          "_n.jpg?oh=f2935bf05af364090c3e041aceac97ad&oe=55235528"],
                        ["“Patience and perseverance have a magical effect before which difficulties disappear and obstacles vanish.”", "– John Quincy Adams",
                          "https://scontent-b-atl.xx.fbcdn.net/hphotos-xpf1/v/t1.0-9/179807_10150100149817272_875332_n."\
                          "jpg?oh=61d07c016678ea50f2c99a4f44d802c5&oe=55689945"]]
      return bored_thoughts.sample
    elsif mood == "Content"
      content_thoughts = [["“Happiness is the absence of the striving for happiness.”", "– Zhuangzi",
                            "https://scontent-b-atl.xx.fbcdn.net/hphotos-xfp1/v/t1.0-9/10245372_10152351663842272_"\
                            "828666976037382614_n.jpg?oh=01d545f66eaab192760403afb560a99d&oe=5522D8F0"],
                          ["“Be happy for this moment.  This moment is your life.”", "– Omar Khayyam",
                            "https://fbcdn-sphotos-d-a.akamaihd.net/hphotos-ak-ash2/t31.0-8/1147691_10151778746832272_1413120597_o.jpg"],
                          ["“It is not how much we have, but how much we enjoy, that makes happiness.”", "– Charles Spurgeon",
                            "https://fbcdn-sphotos-a-a.akamaihd.net/hphotos-ak-xap1/v/t1.0-9/579220_10150731700642272"\
                            "_789420490_n.jpg?oh=214a2f0e86534d5414c5e737f91a51ed&oe=556D178F&__gda__=1432400294_079fbe013ceef5a169ff1a63ef705915"]]
      return content_thoughts.sample
    elsif mood == "Disgruntled"
      disgruntled_thoughts = [["“Holding on to anger is like grasping a hot coal with the intent of throwing it at someone else; you are the one who gets burned.”","– Buddha",
                                "https://scontent-a-atl.xx.fbcdn.net/hphotos-xaf1/v/t1.0-9/25236_377864247271_6027391_n.jpg?oh=117528d48ee231797c684e38c4117eb4&oe=556D4FE3"],
                              ["“Anger and laughter are mutually exclusive, and you have the power to choose either.”", "– Wayne Dyer",
                                "https://fbcdn-sphotos-c-a.akamaihd.net/hphotos-ak-xaf1/v/t1.0-9/189257_10150115001462272_849452_n."\
                                "jpg?oh=b37c2ad127daba40442cbe5a7826bcb9&oe=55576047&__gda__=1432465440_36697b33a09cec5b0bb49cc8bbe3b956"],
                              ["“For every minute you remain angry, you give up sixty seconds of peace of mind.”", "– Ralph Waldo Emerson",
                                "https://scontent-b-atl.xx.fbcdn.net/hphotos-xfa1/v/t1.0-9/216554_10150157488372272_2666356_n."\
                                "jpg?oh=f152f885a16233efe37d4b6d934a9102&oe=555E92BD"]]
      return disgruntled_thoughts.sample
    elsif mood == "Excited"
      excited_thoughts = [["“Keep your eyes on the stars and your feet on the ground.”", "– Theodore Roosevelt",
                            "https://scontent-b-atl.xx.fbcdn.net/hphotos-prn2/v/t1.0-9/526550_10151510870392272_316218697_n.jpg?oh=3d5"\
                            "a4ee6e4d91bf2bab5be098df7e293&oe=55273C34"],
                          ["“Expect problems and eat them for breakfast.”", "– Alfred A. Montapert",
                            "https://fbcdn-sphotos-f-a.akamaihd.net/hphotos-ak-xfa1/v/t1.0-9/163576_10151510864322272_1048115337_n.jpg?"\
                            "oh=356236609189686d9ac203618edcb6dc&oe=5565D318&__gda__=1432414487_13f310e10a211e06f995ebd6e67ee7f0"],
                          ["“The will to win, the desire to succeed, the urge to reach your full potential...these are the keys that will unlock the door to personal excellence.”", "– Confucius",
                            "https://scontent-b-atl.xx.fbcdn.net/hphotos-xpa1/v/t1.0-9/59708_10151538813057272_1050951109_n.jpg?oh=33ef7fbf0aa75f862e6b07930f917522&oe=555850C8"]]
      return excited_thoughts.sample
    else
      fretful_thoughts = [["“Only when we are no longer afraid do we begin to live.”", "– Dorothy Thompson",
                            "https://fbcdn-sphotos-h-a.akamaihd.net/hphotos-ak-frc3/v/t1.0-9/603899_10151514004947272_1646341645_n.jpg?"\
                            "oh=83480670d90ef7f7ff7cd56f06e92726&oe=556850C5&__gda__=1432284296_a8966cb7b39a817a396e8e4c52331da2"],
                          ["“We can easily forgive a child who is afraid of the dark; the real tragedy of life is when men are afraid of the light.”", "– Plato",
                            "https://scontent-a-atl.xx.fbcdn.net/hphotos-frc3/v/t1.0-9/8338_10151510881977272_709579579_n.jpg?oh=17079d0ad121981c1a7df3aa236e009f&oe=55521527"],
                          ["“Let us not look back in anger, nor forward in fear, but around in awareness.”", "– James Thurber",
                            "https://fbcdn-sphotos-b-a.akamaihd.net/hphotos-ak-xpa1/v/t1.0-9/534084_10151510874757272_1835355479_n.jpg?"\
                            "oh=ecf5d104566b74c6b6d80a68c327af27&oe=556AB549&__gda__=1432197778_1b98a5a4338dc4ce363a5a7a1c33fbac"]]
      return fretful_thoughts.sample
    end
  end
end
