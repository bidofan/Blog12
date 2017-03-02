Rails.application.routes.draw do
  get 'teams/index'
  get 'welcome/index'
  root 'welcome#index'
  resources :teams do
  	resources :footballers
  end
  resources :articles do
   resources :comments
  end

end