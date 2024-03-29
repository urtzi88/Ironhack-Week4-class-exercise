class ProjectsController < ApplicationController

  def index
    @projects = Project.fetch_projects(30)
    render 'index'
  end

  def show
    @project = Project.find_by(id: params[:id])
    unless @project
      render 'no_project_found'
    end
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(
      name: params[:project][:name],
      description: params[:project][:description]
      )
    @project.save
    redirect_to('/projects')
  end

end
