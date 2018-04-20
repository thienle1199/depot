Rails.application.routes.draw do
  default_url_options :host => "localhost:3000"
  get 'admin/index'
  get 'admin', to: 'admin#index'

  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end
  
  resources :users
  scope '(:locale)' do
    resources :orders
    resources :line_items
    resources :carts
    root 'store#index'
  end
  resources :products do
    get :who_bought, on: :member
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
