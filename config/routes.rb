Rails.application.routes.draw do

  devise_for :users, path: '',
  					 path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register'}

	get 'logged_in', to: 'static#logged_in', as: 'successful_login'

	resources :jobs
	resources :companies

	root to: 'static#home'
end
