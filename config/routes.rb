Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'welcome#index'
  get '/register', to: 'users#new'
  post '/register', to: 'users#create'
  get '/login', to: "sessions#new"
  post '/login', to: "sessions#create"
end
