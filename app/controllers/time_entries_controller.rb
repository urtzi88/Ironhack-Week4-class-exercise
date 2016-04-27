class TimeEntriesController < ApplicationController

  def index
    @project = Project.find(params[:project_id])
    @time_entries = @project.time_entries.where("date > ?", (Date.today.beginning_of_month - 1.month))
  end

  def new
    @project = Project.find(params[:project_id])
    @time_entry = @project.time_entries.new
  end

  def create
    @project = Project.find(params[:project_id])
    @project.time_entries.create(
      hours: params[:time_entry][:hours],
      minutes: params[:time_entry][:minutes],
      comment: params[:time_entry][:comment],
      date: Date.parse(params[:time_entry][:date])
    )
    redirect_to(time_entries_path)
  end

end
