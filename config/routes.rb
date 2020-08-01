Rails.application.routes.draw do
  resources :servtypes
  resources :services
  resources :categories
  resources :products
  resources :shops
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "static_pages#home" 
  match '/timelineactivities' , to: 'static_pages#timelineactivities', via: 'get'
  match '/home' , to: 'static_pages#home', via: 'get'
  get 'categoryproducts' =>'categories#categoryproducts', :as => 'categoryproducts'
  
  namespace :api do
  namespace :v1 do 
  devise_scope :user do
      post 'register' => 'registrations#create', :as => 'register'
      
      post 'sessions' => 'sessions#create', :as => 'login'
      delete 'sessions' => 'sessions#destroy', :as => 'logout'
    end
    
  end
  end

end
