Rails.application.routes.draw do
  # ************** READ ***********************
  get 'tasks/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # the route that get the user to all the tasks page localhost:3000/tasks
  get 'tasks', to: 'tasks#index'
  # *************** CREATE *********************
  # the route that get the user to the form where he will create a new task
  # set this route before the route that has route parametric :id because the router
  # will get the first route that has a route parametric so it will get the tasks/:id
  get 'tasks/new', to: 'tasks#new'
  # route post to send the task created (input) to the tasks DB
  post 'tasks', to: 'tasks#create'
  # **************** READ (ONE) *****************
  # the route that get the user to one task selected localhost:3000/tasks/:id
  get 'tasks/:id', to: 'tasks#show', as: :task
  # **************** UPDATE *********************
  # the route that get the user to the edit page localhost:3000/tasks/:id/edit
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit
  # the route to patch the parameters found by id to update it
  patch "tasks/:id", to: "tasks#update"
  # **************** DELETE *********************
  delete "tasks/:id", to: 'tasks#destroy'
end
