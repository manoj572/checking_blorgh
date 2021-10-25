Rails.application.routes.draw do
  root 'articles#home'
  get '/articles/about', to: 'articles#about'
  get '/articles/signup', to: 'articles#signpage'
  get '/articles/login', to: 'articles#loginpage'
  post '/articles/signup', to: 'articles#signpage_new'
  post '/articles/login', to: 'articles#loginpage_new'
  resources :articles
end
