Volunteer::Application.routes.draw do
  mount Mercury::Engine => '/'

  devise_for :users

  root :to => "index#index"
  resources :projects do
    member { put :mercury_update }
    collection { get :search }
  end
end
