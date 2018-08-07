class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def new
    @taks = Task.new
  end

  def show
    @task = Task.find(params[:id])
  end

  def create
    @task = Task.new(task_params)

  private
  def task_params
    params.require(:task).permit(:title, :details)
  end

end
