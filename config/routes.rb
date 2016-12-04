Rails.application.routes.draw do
  root 'welcome#index'
  
  get '/sessions/:id' => 'sessions#show'

  resources :sessions
  
  
  
  resources :welcome do 
   resources :mentors do
       
      resources :topics
   end 
   
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  end 
  

