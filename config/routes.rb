Rails.application.routes.draw do
  get 'projects/signup'
  get 'projects/signpage'
  get 'projects/loginpage'
 root 'articles#home'
 get 'about',to: 'articles#about'
 resources :articles
end
