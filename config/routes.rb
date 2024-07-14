Rails.application.routes.draw do
  root 'employees#index'

  resources :employees
  resources :bills, only: [:new, :create, :index]
end
