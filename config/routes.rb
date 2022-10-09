Rails.application.routes.draw do
  resources :comments
  resources :posts
  get "posts/:id/comments", to:"posts#comments"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
