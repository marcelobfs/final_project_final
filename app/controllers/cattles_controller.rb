class CattlesController < ApplicationController
  def index
    @cattles = Cattle.all

    render("cattle_templates/index.html.erb")
  end

  def show
    @vaccination = Vaccination.new
    @weighting = Weighting.new
    @pregnancy = Pregnancy.new
    @cattle = Cattle.find(params.fetch("id_to_display"))

    render("cattle_templates/show.html.erb")
  end

  def new_form
    @cattle = Cattle.new

    render("cattle_templates/new_form.html.erb")
  end

  def create_row
    @cattle = Cattle.new

    @cattle.brinco = params.fetch("brinco")
    @cattle.data_compra_ou_desmame = params.fetch("data_compra_ou_desmame")
    @cattle.data_nascimento = params.fetch("data_nascimento")
    @cattle.origem = params.fetch("origem")
    @cattle.raca = params.fetch("raca")
    @cattle.sexo = params.fetch("sexo")
    @cattle.pai = params.fetch("pai")
    @cattle.brinco_mae = params.fetch("brinco_mae")
    @cattle.peso_entrada = params.fetch("peso_entrada")
    @cattle.preco_por_kilo = params.fetch("preco_por_kilo")
    @cattle.status = params.fetch("status")

    if @cattle.valid?
      @cattle.save

      redirect_back(:fallback_location => "/cattles", :notice => "Cattle created successfully.")
    else
      render("cattle_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @cattle = Cattle.find(params.fetch("prefill_with_id"))

    render("cattle_templates/edit_form.html.erb")
  end

  def update_row
    @cattle = Cattle.find(params.fetch("id_to_modify"))

    @cattle.brinco = params.fetch("brinco")
    @cattle.data_compra_ou_desmame = params.fetch("data_compra_ou_desmame")
    @cattle.data_nascimento = params.fetch("data_nascimento")
    @cattle.origem = params.fetch("origem")
    @cattle.raca = params.fetch("raca")
    @cattle.sexo = params.fetch("sexo")
    @cattle.pai = params.fetch("pai")
    @cattle.brinco_mae = params.fetch("brinco_mae")
    @cattle.peso_entrada = params.fetch("peso_entrada")
    @cattle.preco_por_kilo = params.fetch("preco_por_kilo")
    @cattle.status = params.fetch("status")

    if @cattle.valid?
      @cattle.save

      redirect_to("/cattles/#{@cattle.id}", :notice => "Cattle updated successfully.")
    else
      render("cattle_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @cattle = Cattle.find(params.fetch("id_to_remove"))

    @cattle.destroy

    redirect_to("/cattles", :notice => "Cattle deleted successfully.")
  end
end
