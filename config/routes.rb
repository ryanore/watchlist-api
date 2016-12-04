Rails.application.routes.draw do
  scope module: 'api' do
    namespace :v1 do
			resources :movies
			resources :tags

			resources :users do
				resources :movies, shallow: true
				resources :tags, shallow: true
			end

			post 'authenticate', to: 'authentication#authenticate'
			get 'search', to: 'media#search'
    end
  end
end
