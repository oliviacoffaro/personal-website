class ProjectsController < ApplicationController

  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
  end

  private
    def params
      params.require(:project).permit(:title, :content)
    end
end
