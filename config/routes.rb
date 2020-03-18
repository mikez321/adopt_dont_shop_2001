Rails.application.routes.draw do
  root 'shelters#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'shelters#index'
end
