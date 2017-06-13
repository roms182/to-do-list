class TasksController < ApplicationController
  def index
    @task = Task.new
    @tasks = Task.all
    @sumtime = Task.sum(:time)
  end

  def create
    @task = Task.new(task_params)

    if @task.save
      redirect_to root_path
    else
      render :index
    end
  end

  def edit
  end

  def destroy
    Task.find(params[:id]).delete
    redirect_to root_path
  end

  private

  def task_params
    params.require(:task).permit(:order, :title, :time)
  end
end
