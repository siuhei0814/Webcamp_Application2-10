Rails.application.routes.draw do

  get 'users/edit'
  root to:'homes#top'
  devise_for :users
  resources :books, only:[:create,:update,:destroy]
  get 'books/:id' => 'books#show', as: 'bookshow'
  get 'books/:id/edit' => 'books#edit'
  post 'books/:id/edit' => 'books#edit', as: 'edit_book'

  resources :users, only:[:edit,:update]

  get 'users' => 'users#userindex'
  get 'books' => 'users#bookindex', as: 'bookindex'
  get '/home/about' => 'users#about'
  get 'users/:id' => 'users#usershow', as: 'usershow'

end
