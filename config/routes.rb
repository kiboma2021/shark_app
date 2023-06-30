Rails.application.routes.draw do
  root "sharks#index"
  
  resources :sharks do
    resources :comments
    resources :posts
  end

end
