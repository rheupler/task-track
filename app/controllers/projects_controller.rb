class ProjectsController < ApplicationController

  def new
    @project = Project.new
  end

  def create
    @project = Project.create(project_params)
    if @project.save
      flash[:notice] = "Project added!"
      redirect_to root_path
    else
      render :index
    end
  end

  private
  def project_params
    params.require(:project).permit(:title, :description)
  end

end
