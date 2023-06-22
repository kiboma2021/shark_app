Rails.application.routes.draw do
  root "sharks#index"
  
  resources :sharks do
    resources :posts
  end

end
