Rails.application.routes.draw do
  
  root to: 'welcome#index'
  
  
  
  resources :welcome 
  resources :mentors
  resources :topics
  resources :podcasts
  resources :sessions
  
  #get '/sessions/:id' => 'sessions#show' 
  
  resources :welcome do 
   get 'session'
   get 'mentors'
   

       

   end 
    
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  
  

