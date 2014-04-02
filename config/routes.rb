NkuProject::Application.routes.draw do
   resources :users
   resources :sessions

   get '/signup' => 'users#new'
   get '/signin' => 'sessions#new'
   root 'users#index'
end
