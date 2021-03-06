Rails.application.routes.draw do
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "pages#home"
   get 'about', to: "pages#about"
   resources :articles
   get 'signup', to: 'users#new'
   get 'login', to: "sessions#new"
   post 'login', to: "sessions#create"
   delete 'logout', to: "sessions#destroy"
   put '/articles/:id', to: "articles#update"
   put '/users/:id', to: "users#update"
end
