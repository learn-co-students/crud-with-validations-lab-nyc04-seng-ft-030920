Rails.application.routes.draw do
  get 'songs/index'

  get 'songs/create'

  get 'songs/edit'

  get 'songs/new'

  get 'songs/show'

  get 'song/s'

  get 'song/creaate'

  get 'song/update'

  get 'song/destroy'

  resources :models
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
