Rails.application.routes.draw do
  devise_for :users
  get 'welcome/homepage'

  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'welcome#homepage'
  get '/', to: 'welcome#homepage'
  get '/more_info', to: 'posts#more'
  mount Commontator::Engine => '/commontator'
end
