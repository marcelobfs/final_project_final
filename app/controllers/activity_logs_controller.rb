class ActivityLogsController < ApplicationController
  def index
    @activity_logs = ActivityLog.page(params[:page]).per(10)

    render("activity_log_templates/index.html.erb")
  end

  def show
    @activity_log = ActivityLog.find(params.fetch("id_to_display"))

    render("activity_log_templates/show.html.erb")
  end

  def new_form
    @activity_log = ActivityLog.new

    render("activity_log_templates/new_form.html.erb")
  end

  def create_row
    @activity_log = ActivityLog.new

    @activity_log.user_name = params.fetch("user_name")
    @activity_log.action = params.fetch("action")
    @activity_log.activity_description = params.fetch("activity_description")
    @activity_log.file_name = params.fetch("file_name")

    if @activity_log.valid?
      @activity_log.save

      redirect_back(:fallback_location => "/activity_logs", :notice => "Activity log created successfully.")
    else
      render("activity_log_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @activity_log = ActivityLog.find(params.fetch("prefill_with_id"))

    render("activity_log_templates/edit_form.html.erb")
  end

  def update_row
    @activity_log = ActivityLog.find(params.fetch("id_to_modify"))

    @activity_log.user_name = params.fetch("user_name")
    @activity_log.action = params.fetch("action")
    @activity_log.activity_description = params.fetch("activity_description")
    @activity_log.file_name = params.fetch("file_name")

    if @activity_log.valid?
      @activity_log.save

      redirect_to("/activity_logs/#{@activity_log.id}", :notice => "Activity log updated successfully.")
    else
      render("activity_log_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @activity_log = ActivityLog.find(params.fetch("id_to_remove"))

    @activity_log.destroy

    redirect_to("/activity_logs", :notice => "Activity log deleted successfully.")
  end
end
