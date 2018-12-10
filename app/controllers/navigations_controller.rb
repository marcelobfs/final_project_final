class NavigationsController < ApplicationController
  def index
    @activity_log = ActivityLog.all.order("created_at DESC")
    #@market_prices = @q.result(:distinct => true).page(params[:page]).per(10)

    render("navigation_templates/home_page.html.erb")
  end

  def upload

    render("navigation_templates/file_upload.html.erb")
  end
  
  def report
    @weightings = Weighting.all
    @lota = Weighting.where(lote: "Lote A")
    @lotb = Weighting.where(lote: "Lote B")
    @lotc = Weighting.where(lote: "Lote C")
    @lotd = Weighting.where(lote: "Lote D")
    
    @output = []
    results = []
      @lota.each do |lote|
    peso = lote.peso
    results = results.push(peso)
    end
    @output = @output.push(results.sum/[results.count,1].max)
    results = []
        @lotb.each do |lote|
    peso = lote.peso
    results = results.push(peso)
    end
    @output = @output.push(results.sum/[results.count,1].max)
    results = []
        @lotc.each do |lote|
    peso = lote.peso
    results = results.push(peso)
    end
    @output = @output.push(results.sum/[results.count,1].max)
    results = []
        @lotd.each do |lote|
    peso = lote.peso
    results = results.push(peso)
    end
    @output = @output.push(results.sum/[results.count,1].max)
    
    
    

    render("navigation_templates/reports.html.erb")
  end

end
