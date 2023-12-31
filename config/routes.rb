Rails.application.routes.draw do
  get 'reviews/new'
  resources :restaurants, only: %i[index show new create] do
    resources :reviews, only: [:new, :create]
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
