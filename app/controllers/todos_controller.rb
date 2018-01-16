class TodosController < ApplicationController
	def index
		@todo = Todo.all
	end

	def new
		@todo = Todo.new
		render :new
	end

	def create
		@todo = Todo.new(todo_params)
		
		if @todo.save
			redirect_to todos_path
		else
			render :new
		end
	end

	def show
		identifica_params
	end

	def edit
		identifica_params
	end

	def update
		identifica_params
		if @todo.update(todo_params)
			@todo.save
      		redirect_to todos_path
    	else
     		render :edit
    	end
	end

	def destroy
		identifica_params
		@todo.destroy
    	redirect_to todos_path
	end

	def completed
		identifica_params
		@todo.completed = true
		@todo.save
		redirect_to todos_path
	end

	private

	def todo_params
		params.require(:todo).permit(:description, :completed)
	end

	def identifica_params
		@todo = Todo.find(params[:id])
	end
end




# class TodosController < ApplicationController

# 	def index
# 		@todos = Todo.all
# 	end

# 	def new
# 		@todo = Todo.new
# 		render :new
# 	end

# 	def create
# 		@todo = Todo.new(todo_params)
		
# 		if @todo.save
# 			redirect_to todos_path
# 		else
# 			render :new
# 		end
# 	end

# 	def show
# 		@todo = Todo.find(params[:id])
# 	end	

# 	def edit
# 		@todo = Todo.find(params[:id])
# 	end

# 	def update
# 		@todo = Todo.find(params[:id])
# 		if @todo.update(todo_params)
#       redirect_to todos_path
#     else
#       render :edit
#     end
# 	end

# 	def destroy
# 		@todo = Todo.find(params[:id])
# 		@todo.destroy
#     redirect_to todos_path
# 	end

# 	def complete
# 		@todo = Todo.find(params[:id])
# 		@todo.completed = true
# 		@todo.save
# 		redirect_to todos_path
# 	end

# 	def list
# 		@todos = Todo.all
# 	end

# 	private
# 	def todo_params
# 		params.require(:todo).permit(:description, :completed, :id)
# 	end

# end