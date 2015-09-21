Rails.application.routes.draw do
	get 'profiles/profile'
  devise_for :users
  resources :events
  
  root 'home#index'

end
