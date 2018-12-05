class CattleSalesController < ApplicationController
  def index
    @q = CattleSale.ransack(params[:q])
    @cattle_sales = @q.result(:distinct => true).includes(:cattle).page(params[:page]).per(10)

    render("cattle_sale_templates/index.html.erb")
  end

  def show
    @cattle_sale = CattleSale.find(params.fetch("id_to_display"))

    render("cattle_sale_templates/show.html.erb")
  end

  def new_form
    @cattle_sale = CattleSale.new

    render("cattle_sale_templates/new_form.html.erb")
  end

  def create_row
    @cattle_sale = CattleSale.new

    @cattle_sale.cattle_id = params.fetch("cattle_id")
    @cattle_sale.brinco = params.fetch("brinco")
    @cattle_sale.peso = params.fetch("peso")
    @cattle_sale.preco_por_kilo = params.fetch("preco_por_kilo")

    if @cattle_sale.valid?
      @cattle_sale.save

      redirect_back(:fallback_location => "/cattle_sales", :notice => "Cattle sale created successfully.")
    else
      render("cattle_sale_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @cattle_sale = CattleSale.find(params.fetch("prefill_with_id"))

    render("cattle_sale_templates/edit_form.html.erb")
  end

  def update_row
    @cattle_sale = CattleSale.find(params.fetch("id_to_modify"))

    @cattle_sale.cattle_id = params.fetch("cattle_id")
    @cattle_sale.brinco = params.fetch("brinco")
    @cattle_sale.peso = params.fetch("peso")
    @cattle_sale.preco_por_kilo = params.fetch("preco_por_kilo")

    if @cattle_sale.valid?
      @cattle_sale.save

      redirect_to("/cattle_sales/#{@cattle_sale.id}", :notice => "Cattle sale updated successfully.")
    else
      render("cattle_sale_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @cattle_sale = CattleSale.find(params.fetch("id_to_remove"))

    @cattle_sale.destroy

    redirect_to("/cattle_sales", :notice => "Cattle sale deleted successfully.")
  end
end
