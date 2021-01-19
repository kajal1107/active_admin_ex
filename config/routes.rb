Rails.application.routes.draw do
  ActiveAdmin.routes(self)
	resources :freshers, only: [:new, :create]
	resources :experiences, only: [:new, :create]
	root 'welcome#index'
end
