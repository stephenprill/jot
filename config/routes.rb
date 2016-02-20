Rails.application.routes.draw do
  get 'users/new'

  get 'welcome/index'

  root 'welcome#index'

  resources :notes
end
