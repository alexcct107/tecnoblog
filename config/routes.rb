Rails.application.routes.draw do
  devise_for :users
  resources :articles
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

  

