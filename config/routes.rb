Rails.application.routes.draw do

  devise_for :users
  
  resources :wikis
  
  resources :wikis do
      resources :collaborations, only: [:new, :create, :destroy]
  end

  resources :charges, only: [:new, :create]
  
  resources :users, only: [:index, :show] do
    member do
      post :downgrade
    end
  end 

  get 'about' => 'welcome#about' 

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
