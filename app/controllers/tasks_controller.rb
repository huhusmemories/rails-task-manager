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
    redirect_to task_path(@task)
  end

  def show
    # raise
    @task = Task.find(params[:id])
    # raise
  end

  private

  # by default rails prevent you from creating a new task, we need strong params
  def task_params
    params.require(:task).permit(:title, :details, :completed)
    # params.require("task").permit("title", "details", "completed")
  end
end
