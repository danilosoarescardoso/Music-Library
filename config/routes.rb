Rails.application.routes.draw do
  get 'startup/index'

  get 'welcome/index'

  root 'welcome#index'

  get 'startup/teste'

get 'index', to: 'startup#index'

get 'about', to: 'startup#about'


resources :artists
root 'artists#index'

resources :albums
root 'albums#index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
