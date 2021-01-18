Rails.application.routes.draw do
	resources :freshers, only: [:new, :create]
	resources :experiences, only: [:new, :create]
	root 'welcome#index'
end
