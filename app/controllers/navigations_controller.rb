class NavigationsController < ApplicationController
  def index
    @activity_log = ActivityLog.all.order("created_at DESC")
    #@market_prices = @q.result(:distinct => true).page(params[:page]).per(10)

    render("navigation_templates/home_page.html.erb")
  end

  def upload

    render("navigation_templates/file_upload.html.erb")
  end

end
