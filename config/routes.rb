Rails.application.routes.draw do
  root 'static#home'
  get 'home', to: 'static#home'

end
