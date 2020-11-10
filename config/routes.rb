Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # C
  get '/tasks/new', to: 'tasks#new', as: :new_task
  post '/tasks', to: 'tasks#create'
  # R all
  get '/tasks', to: 'tasks#index'
  # R one
  get '/tasks/:id', to: 'tasks#show', as: :task
  # U
  get '/tasks/:id/edit', to: 'tasks#edit', as: :edit_tasks
  patch '/tasks/:id', to: 'tasks#update'
  # D
  delete '/tasks/:id', to: 'tasks#destroy'
end
