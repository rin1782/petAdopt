Rails.application.routes.draw do
  resources :pets
  resources :users
  delete "/pets/:id", to: "pets#destroy"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
