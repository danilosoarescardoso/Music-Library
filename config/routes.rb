Rails.application.routes.draw do
  get 'startup/index'

  get 'welcome/index'

  root 'welcome#index'

  get 'startup/teste'

#  get '/index', to: 'layouts/application.html.erb'

resources :artists


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
