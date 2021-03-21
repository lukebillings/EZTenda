Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
   resources :tenders, only: [:index, :show, :new, :create]
end
