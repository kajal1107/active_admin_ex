Rails.application.routes.draw do
  devise_for :users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
	resources :freshers, only: [:new, :create]
	resources :experiences, only: [:new, :create]
	root 'welcome#index'
end
