module V1
  class TasksController < ApplicationController
    def index
      @project = Project.find_by(id: params[:project_id])
      if @project.nil?
        head(404)
      else
        render json: @project.tasks
      end
    end

    def show
      @task = Task.find_by(id: params[:id])
      if @task.nil?
        head(404)
      else
        render json: @task
      end
    end

    def create
      @project = Project.find_by(id: params[:project_id])
      @task = @project.tasks.create(task_params)

      if @task.persisted?
        render json: @task
      else
        head(400)
      end
    end

    private

    def task_params
      params.require(:task).permit(:name, :description, :progress)
    end
  end
end
