Rails.application.routes.draw do
  resources :locations
  get 'sessions/new'

root'static_pages#home'
get 'help'=> 'static_pages#help'
get 'about'=> 'static_pages#about'
get 'contact' => 'static_pages#contact'
get 'faq'=> 'static_pages#faq'
get 'signup' => 'users#new'
get 'login'	=> 'sessions#new'
post 'login' => 'sessions#create'
delete 'logout' =>'sessions#destroy'
get 'locations'=> 'locations#index'
get 'editlocation'=> 'locations#edit'

resources :users do
resources :microposts,      only: [:create, :destroy]
resources :relationships,   only: [:create, :destroy]
end
end 
