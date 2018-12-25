Rails.application.routes.draw do
  root 'top_pages#index'
  get '/books/new', to:'books#new'
  get '/books/index', to:'books#index'
  resources :books
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
