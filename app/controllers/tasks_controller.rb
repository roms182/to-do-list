class TasksController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:sort, :timer]

  def index
    @task = Task.new
    @tasks = Task.all
    @sumtime = Task.sum(:time)
  end

  def create
    @task = Task.new(task_params)
    @task.order = Task.all.count + 1
    @task.timer = 0

    if @task.save
      respond_to do |format|
        format.html { redirect_to root_path }
      # if the response format is javascript, do something else...
        format.js { }
      end
    else
      respond_to do |format|
       format.html {}
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

  def sort
    params[:order].each do |key, value|
      Task.find(value['id']).update_attribute(:order,value['position'])
    end
    render :nothing => true
  end

  def timer
    h = params[:timer]
    id = h['id'].split('-').last.to_i
    Task.find(id).update_attribute(:timer, h['timer'])
    render :nothing => true
  end

  private

  def task_params
    params.require(:task).permit(:title, :time, :order)
  end
end
