class ProjectsController < ApplicationController
  before_filter :authenticate_user!
  def new
    @project = Project.new(params[:project])
  end
  def create
    @project = Project.create(params[:project].merge(:user_id => current_user.id))
    if @project.persisted?
      flash[:success] = "Project Created"
      redirect_to project_path(@project)
    else
      flash[:danger] = @project.errors.full_messages.join("<br>")
      render :action => :new
    end
  end
  def show
    @project = Project.find(params[:id])
  end
end
