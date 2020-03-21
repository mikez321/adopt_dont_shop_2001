Rails.application.routes.draw do
  root 'shelters#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/shelters', to: 'shelters#index'
  get '/shelters/new', to: 'shelters#new'
  get '/shelters/:id', to: 'shelters#show'
  post '/shelters/', to: 'shelters#create'
  delete '/shelters/:id', to: 'shelters#destroy'
  get '/shelters/:id/edit', to: 'shelters#edit'
  patch '/shelters/:id', to: 'shelters#update'
  get 'shelters/:id/pets', to: 'shelterpets#index'

  get '/pets', to: 'pets#index'
end
