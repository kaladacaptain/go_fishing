Rails.application.routes.draw do
  root 'static_pages#index'
  get 'static_pages/about', as: '/about'

  resources :reservations

  resources :charges
end
