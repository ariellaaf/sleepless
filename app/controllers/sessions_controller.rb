class SessionsController < ApplicationController


 def index
  @sessions = session.all
 end
 
 def show
  @session = Session.find(params[:id])
 end 
 
 def new
  @session= session.new
 end

 def edit 
  @session= session.find(params[:id])
 end

 def create
  @session = session.new(session_params)
    if @session.save
     redirect_to @session
    else
     render 'new'
  end
end

 def update 
  @session = session.find(params[:id])
  if @session.update(session_params)
   redirect_to @session
  else 
   render 'edit'
  end
 end
 
 def destroy
  @session = session.find(params[:id])
  @session.destroy

  redirect_to sessions_path
 end

 private 
  def session_params 
   params.require(:session).permit(:title, :text)
 end


#A controller is simply a class that is defined 
#to inherit from ApplicationController. 
#It's inside this class that you'll define methods 
#that will become the actions for this controller. 
#These actions will perform CRUD operations 
#on the articles within our system.
end