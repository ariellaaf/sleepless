class SessionsController < ApplicationController
 #belongs_to :mentor 
#end
  layout 'application'


 def index
  @sessions = Session.all
  if params[:search]
   @session = Session.search(params[:search]).order("created_at DESC")
  else
   @session = Session.all.order('created_at DESC')
  end
 end
 
 def show
  @session = Session.find_by_id(params[:id])
 end
 
 def start 
  @session = Session
 end 
 
 def title
 end
 
 def self.search
  
 end 

 private 
  def session_params 
   params.require(:session).permit(:title, :description, :minutes)
  end


#A controller is simply a class that is defined 
#to inherit from ApplicationController. 
#It's inside this class that you'll define methods 
#that will become the actions for this controller. 
#These actions will perform CRUD operations 
#on the articles within our system.
end