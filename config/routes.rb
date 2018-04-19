Rails.application.routes.draw do
  get 'admin/index'
  get 'admin', to: 'admin#index'

  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end
  resources :users
  default_url_options :host => "localhost:3000"
  resources :orders
  resources :line_items
  resources :carts
  root 'store#index'
  resources :products do
    get :who_bought, on: :member
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
