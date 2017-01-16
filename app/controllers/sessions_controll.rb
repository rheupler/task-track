class SessionsController < ApplicationController

  def show
    @project = Project.find(params[:project_id])
    @session = Session.new

    @sessions = @project.sessions.all
  end

  def new
    @project = Project.find(params[:project_id])
    @session = Session.new
  end

  def create
    @project = Project.find(params[:project_id])
    @session = @project.sessions.new(session_params)
    @session.user_id=current_user.id if current_user
    if @session.save
      flash[:notice] = "Session added!"
      redirect_to project_path(@project)
    else
      render :new
    end
  end

  private
  def session_params
    params.require(:session).permit(:start_time)
  end

end
