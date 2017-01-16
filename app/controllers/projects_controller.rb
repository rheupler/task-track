class ProjectsController < ApplicationController

  def new
    @project = Project.new
  end

  def create
    @project = Project.create(project_params)
    @session = @project.sessions.new(session_params)
    @project.user_id=current_user.id if current_user
    if @project.save
      flash[:notice] = "Project added!"
      redirect_to root_path
    else
      render :index
    end
  end

  def update

  end

  def delete
    @project = Project.find(params[:id])
    @project.destroy
    redirect_to root_path
  end

  def show
    @project = Project.find(params[:id])
    @session = Session.new(session_params)
  end

  def edit
  end

  private
  def project_params
    params.require(:project).permit(:title, :description, :goal_time)
  end

  def session_params
    params.require(:session).permit(:start_time);
  end

end
