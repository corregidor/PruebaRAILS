Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

	root 'todos#index'
  get '/todos', to: 'todos#index'
  get 'todos/new'
  post 'todos', to: 'todos#create'
  get 'todos/:id', to: 'todos#show', as: 'todo'
	# Crear la ruta '/todos/:id' que apunte al método todos#show con el verbo get y el prefijo todo.
  
  get 'todos/:id/edit', to: 'todos#edit', as:'edit'
	#Crear la ruta '/todos/:id/edit' que apunte al método todos#edit con el verbo get.

  patch 'todos/:id', to: 'todos#update'
	#Crear la ruta '/todos/:id' que apunte al método todos#update con el verbo patch.

  delete 'todos/:id', to: 'todos#destroy', as: 'destroy'
	#Crear la ruta '/todos/:id' que apunte al método todos#destroy con el verbo delete.

  post 'todos/:id/completed', to: 'todos#completed', as: 'completed'
	#Crear la ruta '/todos/:id/complete' que apunte al método todos#complete con el verbo get


  # get 'todos', to: 'todos#index'
  # get 'todos/new'

  # get 'todos/list'
  # post 'todos', to: 'todos#create'

  
  # get 'todos/:id', to: 'todos#show', as: 'todo'
  # get 'todos/:id/edit', to: 'todos#edit', as: 'editar'
  # patch 'todos/:id', to: 'todos#update'
  # delete 'todos/:id', to: 'todos#destroy', as: 'borrar'
  # get 'complete/:id', to: 'todos#complete', as: 'completar'


end
