class PregnanciesController < ApplicationController
  def index
    @q = Pregnancy.ransack(params[:q])
    @pregnancies = @q.result(:distinct => true).includes(:cattle).page(params[:page]).per(10)

    render("pregnancy_templates/index.html.erb")
  end

  def show
    @pregnancy = Pregnancy.find(params.fetch("id_to_display"))

    render("pregnancy_templates/show.html.erb")
  end

  def new_form
    @pregnancy = Pregnancy.new

    render("pregnancy_templates/new_form.html.erb")
  end

  def create_row
    @pregnancy = Pregnancy.new

    @pregnancy.cattle_id = params.fetch("cattle_id")
    @pregnancy.brinco = params.fetch("brinco")
    @pregnancy.touro = params.fetch("touro")
    @pregnancy.prenha = params.fetch("prenha")

    if @pregnancy.valid?
      @pregnancy.save

      redirect_back(:fallback_location => "/pregnancies", :notice => "Pregnancy created successfully.")
    else
      render("pregnancy_templates/new_form_with_errors.html.erb")
    end
  end

  def create_row_from_cattle
    @pregnancy = Pregnancy.new

    @pregnancy.cattle_id = params.fetch("cattle_id")
    @pregnancy.brinco = params.fetch("brinco")
    @pregnancy.touro = params.fetch("touro")
    @pregnancy.prenha = params.fetch("prenha")

    if @pregnancy.valid?
      @pregnancy.save

      redirect_to("/cattles/#{@pregnancy.cattle_id}", notice: "Pregnancy created successfully.")
    else
      render("pregnancy_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @pregnancy = Pregnancy.find(params.fetch("prefill_with_id"))

    render("pregnancy_templates/edit_form.html.erb")
  end

  def update_row
    @pregnancy = Pregnancy.find(params.fetch("id_to_modify"))

    @pregnancy.cattle_id = params.fetch("cattle_id")
    @pregnancy.brinco = params.fetch("brinco")
    @pregnancy.touro = params.fetch("touro")
    @pregnancy.prenha = params.fetch("prenha")

    if @pregnancy.valid?
      @pregnancy.save

      redirect_to("/pregnancies/#{@pregnancy.id}", :notice => "Pregnancy updated successfully.")
    else
      render("pregnancy_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row_from_cattle
    @pregnancy = Pregnancy.find(params.fetch("id_to_remove"))

    @pregnancy.destroy

    redirect_to("/cattles/#{@pregnancy.cattle_id}", notice: "Pregnancy deleted successfully.")
  end

  def destroy_row
    @pregnancy = Pregnancy.find(params.fetch("id_to_remove"))

    @pregnancy.destroy

    redirect_to("/pregnancies", :notice => "Pregnancy deleted successfully.")
  end
  
  def import
    Pregnancy.import(params[:file])
    record_activity("Subiu controle de prenhez")
    redirect_to("/uploads", :notice => "Dados de prenhez importados com sucesso!")

  end
end
