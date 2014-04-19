NkuProject::Application.routes.draw do
   resources :users
   resources :sessions
   resources :items
   resources :bids
   get '/signup' => 'users#new'
   get '/signin' => 'sessions#new'
   match '/signout', to: 'sessions#destroy', via: 'delete'
   root 'users#index'
end
