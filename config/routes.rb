Rails.application.routes.draw do
  # Verb 'path', to: 'controller#action'
  # Create
  get '/tasks/new', to: 'tasks#new'
  # Read
  get '/tasks', to: 'tasks#index'
  # Update
  get '/tasks/:id', to: 'tasks#edit'
  # Delete
  delete '/tasks/:id', to: 'tasks#destroy'
end
