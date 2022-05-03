Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'lessons', to: 'lessons#index'
  get 'lessons/new', to: 'lessons#new'
  get 'lessons/edit/:id', to: 'lessons#edit', as: 'edit_lessons'
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

  get 'users', to: 'users#index'
  get 'users/gioi_thieu', to: 'users#gioi_thieu'
  get 'users/n5', to: 'users#n5'
  get 'users/bang_chu_cai', to: 'users#bang_chu_cai'
  get 'users/minano_nihongo', to: 'users#minano_nihongo'
  get 'users/lessons/:id', to: 'users#lessons'
  get 'users/books/:id', to: 'users#books'

  get 'sections', to: 'sections#index'
  get 'sections/new', to: 'sections#new'
  get 'sections/edit/:id', to: 'sections#edit', as: 'edit_sections'
  put 'sections/update', to: 'sections#update'
  get 'sections/:id', to: 'sections#show', as: 'show_sections'
  delete 'sections/:id', to: 'sections#destroy', as: 'destroy_sections'
  post 'sections/create', to: 'sections#create'
end
