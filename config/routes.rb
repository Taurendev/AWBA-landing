Rails.application.routes.draw do
  root 'landing#index'

  get '/index' => 'home#index', :as => :index
  get '/about' => 'home#about', :as => :about
  get '/contact' => 'home#contact', :as => :contact
  get '/board' => 'home#board', :as => :board
end
