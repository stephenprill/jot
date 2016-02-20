Rails.application.routes.draw do
  get 'sessions/new'

  get 'users/new'

  get 'welcome/index'

  root 'welcome#index'

  resources :notes
end
