Rails.application.routes.draw do
  root "articles#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # get "/articles", to: "articles#index"
  # get "/articles/:id", to: "articles#show"
  # get "/articles/new", to: "articles#new"

  # resources :article, only: ['show', 'index']

  # get '/articles/download', to: 'articles#download', as: :article_download

  resources :articles do
    resources :comments
  end
end
