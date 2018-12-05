class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception
  
  before_action :authenticate_user!
 
  def record_activity(note)
    @activity = ActivityLog.new
    @activity.user_name = current_user.first_name
    @activity.action = action_name
    @activity.activity_description = note
    if params[:file].nil?
      @file_name = "Atualização manual"
    else
      @file_name = params[:file].original_filename
    end
    @activity.file_name = @file_name
    @activity.save
  end

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, :keys => [:first_name, :last_name])

    devise_parameter_sanitizer.permit(:account_update, :keys => [:first_name, :last_name])
  end
end
