class TasksController < ApplicationController
  before_action :set_tasks
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  # GET events/1/tasks
  def index
    @tasks = @event.tasks
  end

  # GET events/1/tasks/1
  def show
  end

  # GET events/1/tasks/new
  def new
    @task = @event.tasks.build
  end

  # GET events/1/tasks/1/edit
  def edit
  end

  # POST events/1/tasks
  def create
    @task = @event.tasks.build(task_params)

    if @task.save
      redirect_to(@event, :flash => { :success => 'Task was successfully created.'})
    else
      render action: 'new'
    end
  end

  # PUT events/1/tasks/1
  def update
    if @task.update_attributes(task_params)
      redirect_to(@event, :flash => { :success => 'Task was successfully updated.'})
    else
      render action: 'edit'
    end
  end

  # DELETE events/1/tasks/1
  def destroy
    @task.destroy

    redirect_to(@event, :flash => { :success => 'Task was successfully deleted.'})
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tasks
      @event = Event.find(params[:event_id])
    end

    def set_task
      @task = @event.tasks.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def task_params
      params.require(:task).permit(:name)
    end
end
