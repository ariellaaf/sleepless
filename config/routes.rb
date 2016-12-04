Rails.application.routes.draw do
  
  
  get '/sessions/:id' => 'sessions#show'

  resources :sessions
  
  root 'welcome#index'
  
  resources :welcome do 
   resources :mentors do
       
      resources :topics
   end 
   
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  end 
  

