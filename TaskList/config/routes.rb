Rails.application.routes.draw do
root 'tasks#index'

#task routes

get '/tasks/' => 'tasks#index'
get	'tasks/new' => 'tasks#new'
get '/tasks/:id' => 'tasks#show', :as => :task
post '/tasks/' => 'tasks#create'
delete '/tasks/:id' => 'tasks#destroy'
get 'tasks/:id/edit' => 'tasks#edit'
patch 'tasks/:id' => 'tasks#update'

#people routes

get '/people/' => 'people#index'
get '/people/new' => 'people#new'
get '/people/:id' => 'people#show'

end
