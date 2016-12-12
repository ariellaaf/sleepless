class MentorsController < ApplicationController
 
 def index
  render('mentors/index') 
 end
 
  def show
  render('mentors/index') 
 end
 
 private 
  def mentor_params 
   params.require(:mentor).permit(:name, :bio)
  end
  end 
