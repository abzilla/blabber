Blabber::Application.routes.draw do
  resources :posts, only: [:index, :create, :show, :new]
  
  
  resources :users do
		resources :friendships, only: [:index, :show, :new, :create]
  end

  resource :session, only: [:new, :create, :destroy]

  root :to => "welcome#index"
end



