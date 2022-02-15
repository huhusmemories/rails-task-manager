class TasksController < ApplicationController
  def index
    @tasks = Task.all
    # raise
  end

  def new
    # Make a new task (show the form and fill it)
    @task = Task.new
    # raise
  end

  def create
    # This is what happens when we hit "send"
    @task = Task.new(task_params)
    @task.save
    # raise
    redirect_to tasks_path
  end

  def show
    # raise
    set_task
    # raise
  end

  def edit
    # raise
    # Task.find(params[:id])
    set_task
  end

  def update
    set_task
    @task.update(task_params)
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
