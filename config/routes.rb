Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root 'pages#home'
get 'about', to: 'pages#about'

resources :articles
#this will create routes to database pass through model.
#this line will create index,create,new,edit,show,update and destroy paths.

end
