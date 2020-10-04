Rails.application.routes.draw do
  resources :prodorderfeedbacks
  resources :productorders
  resources :serviceorders
  resources :genservices
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
  match '/cargohaulage', to: 'static_pages#cargohaulage', via: 'get'
  match '/haulagecalculator', to: 'static_pages#haulagecalculator', via: 'get'
  get 'categoryproducts' =>'categories#categoryproducts', :as => 'categoryproducts'
  post 'creategserv' => 'genservices#creategserv', :as => 'creategserv'
  
  namespace :api do
  namespace :v1 do 
  devise_scope :user do
      post 'register' => 'registrations#create', :as => 'register'
      
      post 'sessions' => 'sessions#create', :as => 'login'
      delete 'sessions' => 'sessions#destroy', :as => 'logout'
    end
    post 'shopcreate' => 'shops#create', :as => 'shopcreate'
    post 'newserviceorder' => 'serviceorders#create', :as => 'newserviceorder'
    post 'newproductorder' => 'productorders#create', :as => 'newproductorder'
    post 'newfeedback' => 'prodorderfeedbacks#create', :as => 'newfeedback'
  end
  end

end
