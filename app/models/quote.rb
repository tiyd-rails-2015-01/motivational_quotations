class Quote
  def self.get_quote(mood)
    if mood == "Awesome"
      awesome_thoughts = [["“A good head and a good heart are always a formidable combination.”","Nelson Mandela"],
                          "alligator",
                           "antelope"]
      return awesome_thoughts.sample
    elsif mood == "Bored"
      return "baloney"
    elsif mood == "Content"
      return "custard"
    elsif mood == "Disgruntled"
      return "dark chocolate"
    elsif mood == "Excited"
      return "eggplant"
    else
      return "figs"
    end
  end
end
