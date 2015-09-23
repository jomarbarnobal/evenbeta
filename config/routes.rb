Rails.application.routes.draw do
  get 'dashboards/index'

	get 'profiles/profile'
  devise_for :users, controllers: { registrations: "registrations"}
  resources :events
  
  root 'home#index'

end
