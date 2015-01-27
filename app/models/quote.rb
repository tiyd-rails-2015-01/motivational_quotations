class Quote
  def self.get_quote(mood)
    if mood == "Prepare yourself to..."
      setup = ["", "", "https://scontent-b-atl.xx.fbcdn.net/hphotos-xfp1/v/t1.0-9/1912279_10152205"\
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
      content_thoughts = [["“Happiness is the absence of the striving for happiness.”", "– Zhuangzi"],
                          ["“Be happy for this moment.  This moment is your life.”", "– Omar Khayyam"],
                          ["“It is not how much we have, but how much we enjoy, that makes happiness.”", "– Charles Spurgeon"]]
      return content_thoughts.sample
    elsif mood == "Disgruntled"
      disgruntled_thoughts = [["“Holding on to anger is like grasping a hot coal with the intent of throwing it at someone else; you are the one who gets burned.”","– Buddha"],
                              ["“Anger and laughter are mutually exclusive, and you have the power to choose either.”", "– Wayne Dyer"],
                              ["“For every minute you remain angry, you give up sixty seconds of peace of mind.”", "– Ralph Waldo Emerson"]]
      return disgruntled_thoughts.sample
    elsif mood == "Excited"
      excited_thoughts = [["“Keep your eyes on the stars and your feet on the ground.”", "– Theodore Roosevelt"],
                          ["“Expect problems and eat them for breakfast.”", "– Alfred A. Montapert"],
                          ["“The will to win, the desire to succeed, the urge to reach your full potential...these are the keys that will unlock the door to personal excellence.”", "– Confucius"]]
      return excited_thoughts.sample
    else
      fretful_thoughts = [["“Only when we are no longer afraid do we begin to live.”", "– Dorothy Thompson"],
                          ["“We can easily forgive a child who is afraid of the dark; the real tragedy of life is when men are afraid of the light.”", "– Plato"],
                          ["“Let us not look back in anger, nor forward in fear, but around in awareness.”", "– James Thurber"]]
      return fretful_thoughts.sample
    end
  end
end
