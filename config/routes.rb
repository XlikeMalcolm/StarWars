Rails.application.routes.draw do
  root 'episodes#index'

  get '/episodes' => 'episodes#index'

  get '/episodes/:id' => 'episodes#show', as: :episode

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
