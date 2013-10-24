Blabber::Application.routes.draw do
  resources :posts, only: [:index, :create, :show, :new]
  
  resources :friendships, only: [:index, :show]

  resources :users

  resource :session, only: [:new, :create, :destroy]

  root :to => "welcome#index"
end



