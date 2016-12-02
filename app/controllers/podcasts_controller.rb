class PodcastsController < ApplicationController
 def new
 end

 def show
  @podcast = Podcast.find(params[:id])
 end 
 
 def create
  @podcast = Podcast.new(podcast_params)

  @podcast.save
  redirect_to @podcast
 end
 
 private 
 def podcast_params 
  params.require(:podcast).permit(:title, :text)
 end
end

#A controller is simply a class that is defined 
#to inherit from ApplicationController. 
#It's inside this class that you'll define methods 
#that will become the actions for this controller. 
#These actions will perform CRUD operations 
#on the articles within our system.

