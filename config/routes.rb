Rails.application.routes.draw do
  
  get 'rating/index', to: "rating#index"
  post 'rating/create', to: "rating#create"
  
  get 'filter/index', to: "filter#index"
  post 'filter/update', to: "filter#update"
  
  post 'products/search', to: 'products#search', as: "product_search"
  get 'products/searched', to: 'products#searched', as: "product_searched"
  # get 'carts/show'
  root 'home#index'
  post 'home/newsletter', to: "home#newsletter", as: "home_newsletter"
  put 'home/newsletterupdate', to: "home#newsletterupdate", as: "home_newsletter_update"
  
  # link clicked
  get 'users/forgetpassword', to: "users#forget_password", as: "users_forget_password"
  # users email
  post 'users/forgetpasswordupdate', to: "users#forgetpasswordupdate", as: "users_forget_password_update"
  get 'users/forgetpasswordupdate/:id/edit', to: "users#forgetpassword_edit", as: "users_forget_password_update_edit"
  
  post '/session', to: "sessions#create", as: "sessions"
  
  get '/auth/:provider/callback', to: 'sessions#twittercreate', as: "session_twitter"
  # get 'categories/:id', to: "categories#show", as: "category"
  # get 'products/index', to: 'products#index'
  
  
  # get 'savedlists/show', to: "savedlists#show", as: "savedlist"
  # put 'savedlists/:id', to: "savedlists#update", as: "savedlist_update"
  # get 'savedlists/:id', to: "savedlists#show", as: "savedlist"
  # get 'products/create', to: "products#create"
  # get 'products/:id', to: "products#show", as: "product"
  
  # delete 'savedlists/:id/', to: "savedlists#destroy" as 
  resources :savedlists, only: [:show, :update]
  resources :products, only: [:index, :create, :show, :edit]
  resources :categories, only: [:show]
  resources :users, only: %i[new show edit update create]
  resources :carts, only: %i[show update]
  resources :cart_items, only: %i[create]
  resource :session, only: %i[new destroy]
  # get 'savedlists/show'
  # get 'products/index'
  # get 'products/new'
  # get 'products/edit'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
