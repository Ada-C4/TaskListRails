Rails.application.routes.draw do
root 'tasks#index'

get '/tasks/' => 'tasks#index'
get	'tasks/new' => 'tasks#new'
get '/tasks/:id' => 'tasks#show'
post '/tasks/' => 'tasks#create'
delete '/tasks/:id' => 'tasks#destroy'
get 'tasks/:id/edit' => 'tasks#edit'
patch 'tasks/:id' => 'tasks#update'

end
