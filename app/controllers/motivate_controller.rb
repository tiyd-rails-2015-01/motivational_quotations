class MotivateController < ApplicationController
  def quotes
    @feeling = params[:feeling]
    if @feeling == '..'
      @quote = nil
    elsif @feeling == 'Angry'
      @quote = 'Good, Goooood, let the hate flow through you!
      It gives you FOCUS!'
      @image = 'http://cdn.screenrant.com/wp-content/uploads/'\
               'Star-Wars-7-Rumor-Emperor-Returning.jpg'
    elsif @feeling == 'Happy'
      @quote = 'Believe in yourself! Have faith in your abilities!
      Without a humble but reasonable confidence in your own powers
      you cannot be successful or happy. Also, Nyan cat!'
      @image = 'http://fc04.deviantart.net/fs70/f/2011/107/'\
               'c/e/rainbow_nyan_nyan_pop_tart_cat_by_zaithy-d3e8u2k.jpg'
    elsif @feeling == 'Meh'
      @quote = 'The trouble with having an open mind, of course,
      is that people will insist on coming along and trying to
      put things in it.'
      @image = 'http://embodyheart.org/wp-content/uploads/2013/03/meh.jpg'
    elsif @feeling == 'Motivated'
      @quote = 'In order to succeed, your desire for success should
      be greater than your fear of failure.'
      @image = 'http://www.entre-propel.com/files/2009/01/motivation.jpeg'
    end
  end
end
