class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.all
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to task_path(@task)
  end


  private

  def tasks_params
    params.required[:task].permit(:title, :details, :completed)
  end
end
