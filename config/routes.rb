Rails.application.routes.draw do

	resources :movies
	resources :tags

	resources :users do
		resources :movies, shallow: true
		resources :tags, shallow: true
	end

	post 'authenticate', to: 'authentication#authenticate'

	get 'search', to: 'media#search'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
