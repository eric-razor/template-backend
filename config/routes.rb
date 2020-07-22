Rails.application.routes.draw do
  devise_for :users
  
  devise_scope :user do
    post "/login", to: "users/sessions#create"
  end
end
