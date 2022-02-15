Rails.application.routes.draw do
  # # Verb 'path', to: 'controller#action'

  # # Read all tasks
  # get '/tasks', to: 'tasks#index'

  # # Create a task
  # get '/tasks/new', to: 'tasks#new', as: :new_task
  # post '/tasks', to: 'tasks#create'

  # # Read a task
  # get '/tasks/:id', to: 'tasks#show', as: :task

  # # Update a task
  # get '/tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  # patch '/tasks/:id', to: 'tasks#update'

  # # Delete a task
  # delete '/tasks/:id', to: 'tasks#destroy'

  resources :tasks
end
