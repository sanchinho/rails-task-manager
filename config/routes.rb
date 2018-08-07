Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # index
  get 'tasks', to: 'tasks#index'
  # new
  get 'tasks/new', to: 'tasks#new', as: :new
  # show
  get 'tasks/:id', to: 'tasks#show', as: :task
  # create
  post 'tasks', to: 'tasks#create', as: :create
  # update
  patch 'tasks/:id', to: 'tasks#update', as: :update_task
  # edit
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  # destroy
  delete 'tasks', to: 'tasks#destroy', as: :destroy
end
