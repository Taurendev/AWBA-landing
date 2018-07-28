Rails.application.routes.draw do

  devise_for :users, path: '', path_names: {sign_in: 'login', sign_out: 'logout', sign_up: 'register'}
  resources :users, :only => [:index]

  root 'landing#index' # TEMPORARY - REMOVE WHEN LIVE

  #root 'home#index'
  get '/index' => 'home#index', :as => :index
  get '/about' => 'home#about', :as => :about
  get '/contact' => 'home#contact', :as => :contact
  get '/board' => 'home#board', :as => :board

  get '/dashboard' => 'admin_home#dashboard', :as => :admin_dashboard
  get '/member_home' => 'member#home', :as => :member_home

end
