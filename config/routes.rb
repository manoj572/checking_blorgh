Rails.application.routes.draw do
  root 'articles#index'
  get 'articles/:id',to: 'articles#show'
  get '/articles/', to: 'articles#index'
  get '/article/', to: 'articles#new'
  post '/article', to: 'articles#create'
  
  resource :articles
end
