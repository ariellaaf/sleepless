class PodcastsController < ApplicationController
 
 def index
  @podcasts = Podcast.all
 end
 
 def new
  @podcast= Podcast.new
 end

 def show
  @podcast = Podcast.find(params[:id])
 end 
 
 def create
  @podcast = Podcast.new(podcast_params)
    if @podcast.save
     redirect_to @podcast
    else
     render 'new'
  end
end

 private 
 def podcast_params 
  params.require(:podcast).permit(:title, :text)
 end


#A controller is simply a class that is defined 
#to inherit from ApplicationController. 
#It's inside this class that you'll define methods 
#that will become the actions for this controller. 
#These actions will perform CRUD operations 
#on the articles within our system.

end 