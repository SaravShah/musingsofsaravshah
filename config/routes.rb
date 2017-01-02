Rails.application.routes.draw do

  root to: 'blog/posts#index'

  #Expecting /author/posts/new or /post/id
  namespace :author do 
  	resources :posts #Defining all the possible routes post/id, put, diff http requests diff actions
  end

  #/ or /posts or anything
  scope module: 'blog' do 
	get 'about' => 'pages#about', as: :about
	get 'contact' => 'pages#contact', as: :contact
	get 'posts' => 'posts#index', as: :posts
	get 'posts/:id' => 'posts#show', as: :post

  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
