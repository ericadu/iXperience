Rails.application.routes.draw do
  resources :places do
    resources :comments
    member do
      get 'like'
    end
  end

  root 'places#index'
end
