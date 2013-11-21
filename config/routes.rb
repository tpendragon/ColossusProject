Volunteer::Application.routes.draw do
  devise_for :users

  root :to => "index#index"
  resources :projects
end
