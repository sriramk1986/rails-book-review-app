Rails.application.routes.draw do
  root to: 'books#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :books do
    resources :reviews, only: [:new, :create]
  end
end
