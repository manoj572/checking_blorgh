Blorgh::Engine.routes.draw do
    root to: "users#index"
    resources :users do
        resources :comments
    end
    
end
