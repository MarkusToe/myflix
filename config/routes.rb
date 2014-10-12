Myflix::Application.routes.draw do
  resources :categories

  resources :videos do
    collection do
      get :search, to: 'videos#search'
    end
  end

  get 'home', to: 'videos#index'
  get 'ui(/:action)', controller: 'ui'
end
