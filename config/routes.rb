Myflix::Application.routes.draw do
  root 'static_pages#home'
  get 'signup' => 'users#new'

  resources :categories

  resources :videos do
    collection do
      get :search, to: 'videos#search'
    end
  end

  get 'home', to: 'videos#index'
  get 'ui(/:action)', controller: 'ui'
end
