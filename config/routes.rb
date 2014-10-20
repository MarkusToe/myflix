Myflix::Application.routes.draw do
  root    'static_pages#home'
  get     'signup'  => 'users#new'
  get     'login'   => 'sessions#new'
  post    'login'   => 'sessions#create'
  delete  'logout'  => 'sessions#destroy'

  resources :categories
  resources :users

  resources :videos do
    collection do
      get :search, to: 'videos#search'
    end
  end

  get 'home', to: 'videos#index'
  get 'ui(/:action)', controller: 'ui'
end
