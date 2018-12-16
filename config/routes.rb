Rails.application.routes.draw do
  root 'top_pages#index'
  get 'top_pages/index'
  get 'books/new'
  root 'top_pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
