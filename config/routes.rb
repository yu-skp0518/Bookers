Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :books
  get 'top' => 'books#top'
  get 'books' => 'books#index'
  get 'book' => 'books#new'
  post 'books' => 'books#create'
  get 'books/:id' => 'books#show', as:'book_path'
end