Rails.application.routes.draw do
	
  
  root 'static_pages#home', as: "home"
  
  
  get '/login', to: 'users#login' , as: "login"
  post 'users/login', to: 'users#new' 
  get '/contact', to: 'static_pages#contact'
  get '/about', to: 'static_pages#about' , as: "about"
  get '/about_me', to: 'static_pages#about_me', as: "nous"
  get '/about_my_group', to: 'static_pages#about_my_group', as: "atlantide"
  get '/users/:username', to: 'users#profil' , as: 'user'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
