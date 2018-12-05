class VaccinationsController < ApplicationController
  def index
    @vaccinations = Vaccination.all

    render("vaccination_templates/index.html.erb")
  end

  def show
    @vaccination = Vaccination.find(params.fetch("id_to_display"))

    render("vaccination_templates/show.html.erb")
  end

  def new_form
    @vaccination = Vaccination.new

    render("vaccination_templates/new_form.html.erb")
  end

  def create_row
    @vaccination = Vaccination.new

    @vaccination.cattle_id = params.fetch("cattle_id")
    @vaccination.brinco = params.fetch("brinco")
    @vaccination.tipo_vacina = params.fetch("tipo_vacina")

    if @vaccination.valid?
      @vaccination.save

      redirect_back(:fallback_location => "/vaccinations", :notice => "Vaccination created successfully.")
    else
      render("vaccination_templates/new_form_with_errors.html.erb")
    end
  end

  def create_row_from_cattle
    @vaccination = Vaccination.new

    @vaccination.cattle_id = params.fetch("cattle_id")
    @vaccination.brinco = params.fetch("brinco")
    @vaccination.tipo_vacina = params.fetch("tipo_vacina")

    if @vaccination.valid?
      @vaccination.save

      redirect_to("/cattles/#{@vaccination.cattle_id}", notice: "Vaccination created successfully.")
    else
      render("vaccination_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @vaccination = Vaccination.find(params.fetch("prefill_with_id"))

    render("vaccination_templates/edit_form.html.erb")
  end

  def update_row
    @vaccination = Vaccination.find(params.fetch("id_to_modify"))

    @vaccination.cattle_id = params.fetch("cattle_id")
    @vaccination.brinco = params.fetch("brinco")
    @vaccination.tipo_vacina = params.fetch("tipo_vacina")

    if @vaccination.valid?
      @vaccination.save

      redirect_to("/vaccinations/#{@vaccination.id}", :notice => "Vaccination updated successfully.")
    else
      render("vaccination_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row_from_cattle
    @vaccination = Vaccination.find(params.fetch("id_to_remove"))

    @vaccination.destroy

    redirect_to("/cattles/#{@vaccination.cattle_id}", notice: "Vaccination deleted successfully.")
  end

  def destroy_row
    @vaccination = Vaccination.find(params.fetch("id_to_remove"))

    @vaccination.destroy

    redirect_to("/vaccinations", :notice => "Vaccination deleted successfully.")
  end
end
