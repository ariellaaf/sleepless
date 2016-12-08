class WelcomeController < ApplicationController
  layout 'application'
  def index
    render('/home')
  end
 
  def home
  end
  
  
end