Rails.application.routes.draw do
  get 'home/index'
  get '/heroes', to: 'heroes#index'
  get '/heroes/:hero', to: 'heroes#hero', as: 'hero'

  root 'home#index'
end
