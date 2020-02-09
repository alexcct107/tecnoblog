Rails.application.routes.draw do
  resources :articles do
  resources :comments, only: [:create, :destroy, :update]
  end
  devise_for :users
  get '/route', to: 'controller#method'
  root 'welcome#index'
end


=begin
  get "/articles" index
  post "/articles" create
  delete "/articles/:id" destroy
  get "/articles/:id" show
  get "/articles/new" new
  get "/articles/:id/edit" edit
  patch "/articles/:id" update
  put "/articles/:id" update
=end

  

