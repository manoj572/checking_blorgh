Rails.application.routes.draw do
  root 'articles#home'
  get 'about',to: 'articles#about'
  delete '/article/:id',to: 'articles#destroy'
  resources :articles
end
