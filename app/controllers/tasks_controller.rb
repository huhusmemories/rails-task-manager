class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]
  def index
    @tasks = Task.all
  end

  def new
    # Make a new task (show the form and fill it)
    @task = Task.new
  end

  def create
    # This is what happens when we hit "send"
    @task = Task.new(task_params)
    @task.save
    redirect_to tasks_path
  end

  def show; end

  def edit; end

  def update
    @task.update(task_params)
    redirect_to tasks_path
  end

  def destroy
    @task.destroy
    redirect_to tasks_path
  end

  private
  # by default rails prevent you from creating a new task, we need strong params
  def task_params
    params.require(:task).permit(:title, :details, :completed)
    # params.require("task").permit("title", "details", "completed")
  end

  def set_task
    @task = Task.find(params[:id])
  end
end
