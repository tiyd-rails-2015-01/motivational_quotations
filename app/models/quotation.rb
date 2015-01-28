class Quotation
  attr_reader :text, :image_url

  def self.get_quotation(mood)
    Quotation.new("", "")
  end

  def initialize(text, image_url)
    @text = text
    @image_url = image_url
  end
end
