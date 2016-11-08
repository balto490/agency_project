Rails.application.routes.draw do
	mount Commontator::Engine => '/commontator'
  	resources :posts
  	devise_for :users, controllers: { registrations: 'registrations' }
  
    root 'home#index'

  	get '/comments' => 'comments#index', as: 'comments'
  	get 'users/:id' => 'home#show'
end
