class DeathsController < ApplicationController
  def index
    @deaths = Death.page(params[:page]).per(10)

    render("death_templates/index.html.erb")
  end

  def show
    @death = Death.find(params.fetch("id_to_display"))

    render("death_templates/show.html.erb")
  end

  def new_form
    @death = Death.new

    render("death_templates/new_form.html.erb")
  end

  def create_row
    @death = Death.new

    @death.cattle_id = params.fetch("cattle_id")
    @death.brinco = params.fetch("brinco")
    @death.causa = params.fetch("causa")

    if @death.valid?
      @death.save

      redirect_back(:fallback_location => "/deaths", :notice => "Death created successfully.")
    else
      render("death_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @death = Death.find(params.fetch("prefill_with_id"))

    render("death_templates/edit_form.html.erb")
  end

  def update_row
    @death = Death.find(params.fetch("id_to_modify"))

    @death.cattle_id = params.fetch("cattle_id")
    @death.brinco = params.fetch("brinco")
    @death.causa = params.fetch("causa")

    if @death.valid?
      @death.save

      redirect_to("/deaths/#{@death.id}", :notice => "Death updated successfully.")
    else
      render("death_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @death = Death.find(params.fetch("id_to_remove"))

    @death.destroy

    redirect_to("/deaths", :notice => "Death deleted successfully.")
  end
end
