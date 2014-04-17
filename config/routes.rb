NkuProject::Application.routes.draw do
   resources :users
   resources :sessions
   resources :items
   get '/signup' => 'users#new'
   get '/signin' => 'sessions#new'
   get '/bid/:id' => 'items#bid', as: '/bid'
   match '/signout', to: 'sessions#destroy', via: 'delete'
   root 'users#index'
end
