Rails.application.routes.draw do
	root to: 'books#index'

	get 'books', to: 'books#top_books'
  resources :books
  resources :book_bategories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
