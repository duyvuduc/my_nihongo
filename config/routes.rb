Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'lessons', to: 'lessons#index'
  get 'lessons/new', to: 'lessons#new'
  get 'lessons/edit/:id', to: 'lessons#edit'
  put 'lessons/update', to: 'lessons#update'
  get 'lessons/:id', to: 'lessons#show', as: 'show_lessons'
  delete 'lessons/:id', to: 'lessons#destroy', as: 'destroy_lessons'
  post 'lessons/create', to: 'lessons#create'

  #book
  get 'books', to: 'books#index'
  get 'books/new', to: 'books#new'
  get 'books/edit/:id', to: 'books#edit'
  put 'books/update', to: 'books#update'
  get 'books/:id', to: 'books#show'
  delete 'books/:id', to: 'books#destroy'
  post 'books/create', to: 'books#create'
end
