Rails.application.routes.draw do
  get 'chats/create'
  get 'notice/create'
  get 'projects/new'
  get 'projects/index'
  get 'projects/create'
  # get 'groups/new'
  # get 'groups/index'
  # get 'groups/create'
  # get 'new/create'
  # get 'new/index'
  # get 'tasks/new'
  # get 'tasks/index'
  devise_for :users, controllers: { registrations: 'users/registrations' }
  resources :users, only: [:show]
  resources :tasks, only: %i[index new create destroy]
  resources :groups, only: %i[index new create show destroy]
  resources :projects, only: %i[index new create show destroy]
  root 'users#profile'
  get 'externals_task', to: 'tasks#externals'
  get 'managing_employees', to: 'managers#employees'
  get 'future_tasks', to: 'tasks#future'
  get 'mark_task_done', to: 'tasks#done'
  post 'done_post', to: 'tasks#done_post'
  post 'managing_employees', to: 'notice#create'
  post 'notice_create', to: 'notice#create'
  post '/new_chat/:id', to: 'chats#create'

  resources :notice

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  mount ActionCable.server, at: '/cable'
end
