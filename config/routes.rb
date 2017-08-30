Rails.application.routes.draw do
  # localhost:3000/welcome/index
  get 'welcome/index'

  resources :articles

  # localhost:3000
  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
