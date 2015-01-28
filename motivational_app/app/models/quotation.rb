class Quotation
  attr_reader :text, :image_url

  def self.get_quotation(mood)
    #insert the hash from J.P.'s code
    Quotation.new(mood_quote, mood_image)
    ...
  end


  def initialize(text, image_url)
    @text = text
    @image_url = image_url
  end
end
