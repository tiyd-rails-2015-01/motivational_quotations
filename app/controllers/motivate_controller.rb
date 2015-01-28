class MotivateController < ApplicationController
  def quotes
    @feeling = params[:feeling]
    if @feeling == '..'
      @quote = nil
    elsif @feeling == 'Angry'
      @quote = 'Good, Goooood, let the hate flow through you!
      It gives you FOCUS!'
      @image = 'http://goo.gl/HLnfya'
    elsif @feeling == 'Happy'
      @quote = 'Believe in yourself! Have faith in your abilities!
      Without a humble but reasonable confidence in your own powers
      you cannot be successful or happy. Also, Nyan cat!'
      @image = 'http://goo.gl/D0gTje'
    elsif @feeling == 'Meh'
      @quote = 'The trouble with having an open mind, of course,
      is that people will insist on coming along and trying to
      put things in it.'
      @image = 'http://goo.gl/eCQb9a'
    elsif @feeling == 'Motivated'
      @quote = 'In order to succeed, your desire for success should
      be greater than your fear of failure.'
      @image = 'http://goo.gl/nFiepe'
    end
  end
end
