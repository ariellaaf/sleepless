class TopicsController < ApplicationController


 def index
  @topics = Topic.all
  if params[:search]
   @topic = Topic.search(params[:search]).order("created_at DESC")
  else
   @topic = Topic.all.order('created_at DESC')
  end
 end
 
 def show
  @topic = Topic.find_by_id(params[:id])
 end
 
 def start 
  @topic = Topic
 end 
 
 def title
 end
 
 def self.search
  
 end 

 private 
  def topic_params 
   params.require(:topic).permit(:title, :description, :minutes)
  end


#A controller is simply a class that is defined 
#to inherit from ApplicationController. 
#It's inside this class that you'll define methods 
#that will become the actions for this controller. 
#These actions will perform CRUD operations 
#on the articles within our system.
end