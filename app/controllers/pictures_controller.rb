class PicturesController < ApplicationController
  def all_pictures
    return [
      { :url => 'http://www.w3.org/html/logo/downloads/HTML5_Logo_512.png', :note => 'HTML5' },
      { :url => 'http://www.ruby-camping.com/img/slides/ruby.png', :note => 'Ruby' },
      { :url => 'http://www.bugtreat.com/blog/wp-content/uploads/2012/06/ruby-on-rails-logo.png', :note => 'Rails' }
      ]
  end
  
  def new
    # @picture = Picture.new
  end
  
  def save
    @picture = Picture.new
    @picture.url = params[:url]
    @picture.note = params[:note]
    @picture.save
    
    redirect_to "/pictures"
    
  end
  
  
  def index
     # @pictures = all_pictures
     #     @url = params[:url]
     @pictures = Picture.all
  end
  
  def show
    @picture = Picture.find(params[:id])
  end
  
  def delete
    
    @picture = Picture.find(params[:id])
    @picture.destroy
    
    redirect_to "/pictures"
  end
end











