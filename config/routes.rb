Rails.application.routes.draw do

  get '', to: 'posts#Coral'
  root :to => 'application#Coral'
  get 'posts', to: 'posts#Coral'

  get 'posts/new', to: 'posts#new'

  post 'posts', to: 'posts#create'

  get 'posts/:id', to: 'posts#open'

   resources :posts, only: [:Coral, :new, :create, :show, :edit, :update]

end
