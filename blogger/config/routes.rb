Rails.application.routes.draw do
  root to: 'articles#index'
  resources :articles do
    resources :comments
  end
  root 'articles#index'
end
