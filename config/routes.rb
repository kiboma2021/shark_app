Rails.application.routes.draw do
  resources :sharks
  root "articles#index"
end
