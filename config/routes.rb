Rails.application.routes.draw do
  get 'movies/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  get '/mains/mains' => 'mains#mains'
  get '/lottos/index' => 'lottos#index'
  get '/lottos/new' => 'lottos#new'
  get '/lottos/recent' => 'lottos#recent'
  
  root 'mains#mains'
  
  # get '/reviews' => 'reviews#index', as: :reviews
  # post '/reviews' => 'reviews#create'
  
  # get '/reviews/new' => 'reviews#new', as: :new_review
  # get '/reviews/:id/edit' => 'reviews#edit', as: :edit_review
  
  # get '/reviews/:id' => 'reviews#show', as: :review
  # delete '/reviews/:id' => 'reviews#destroy'
  # patch '/reviews/:id' => 'reviews#update'
  # put '/reviews/:id' => 'reviews#update'
  
  resources :reviews
  resources :comments
  
  # Comment
  # post '/comments' => 'comments#create'
  # delete '/comments/:id' => 'comments#destroy'

end  
  
  