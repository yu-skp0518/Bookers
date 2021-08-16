Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :books
  get '/top' => 'books#top'
  # get '/book' => 'books#index'
  # get '/book' => 'books#new'
  # post '/books' => 'books#create'
  # get '/books/:id' => 'books#show', as:'book_path'
  # get 'books/:id/edit' => 'books#edit', as:'book_edit'
  # patch '/books/:id' => 'books#update', as:'book_update'
  # delete 'books/:id' => 'books#destroy', as:'book_destroy'
end