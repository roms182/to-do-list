class TasksController < ApplicationController
  def index
    @task = Task.new
    @tasks = Task.all
    @sumtime = Task.sum(:time)
  end

  def create
    @task = Task.new(task_params)

    if @task.save
      respond_to do |format|
        format.html { redirect_to root_path }
      # if the response format is javascript, do something else...
        format.js { }
      end
    else
      render :index
      respond_to do |format|
       format.html { render 'restaurants/show' }
       format.js  # <-- idem
      end
    end
  end

  def edit
  end

  def destroy
    @task = Task.find(params[:id])
    @task.delete

    respond_to do |format|
      format.js { }
    end
  end

  private

  def task_params
    params.require(:task).permit(:title, :time)
  end
end
