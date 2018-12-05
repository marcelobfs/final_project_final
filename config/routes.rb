Rails.application.routes.draw do
  # Routes for the Vaccination resource:

  # CREATE
  get("/vaccinations/new", { :controller => "vaccinations", :action => "new_form" })
  post("/create_vaccination", { :controller => "vaccinations", :action => "create_row" })

  # READ
  get("/vaccinations", { :controller => "vaccinations", :action => "index" })
  get("/vaccinations/:id_to_display", { :controller => "vaccinations", :action => "show" })

  # UPDATE
  get("/vaccinations/:prefill_with_id/edit", { :controller => "vaccinations", :action => "edit_form" })
  post("/update_vaccination/:id_to_modify", { :controller => "vaccinations", :action => "update_row" })

  # DELETE
  get("/delete_vaccination/:id_to_remove", { :controller => "vaccinations", :action => "destroy_row" })

  #------------------------------

  # Routes for the Weighting resource:

  # CREATE
  get("/weightings/new", { :controller => "weightings", :action => "new_form" })
  post("/create_weighting", { :controller => "weightings", :action => "create_row" })

  # READ
  get("/weightings", { :controller => "weightings", :action => "index" })
  get("/weightings/:id_to_display", { :controller => "weightings", :action => "show" })

  # UPDATE
  get("/weightings/:prefill_with_id/edit", { :controller => "weightings", :action => "edit_form" })
  post("/update_weighting/:id_to_modify", { :controller => "weightings", :action => "update_row" })

  # DELETE
  get("/delete_weighting/:id_to_remove", { :controller => "weightings", :action => "destroy_row" })

  #------------------------------

  # Routes for the Pregnancy resource:

  # CREATE
  get("/pregnancies/new", { :controller => "pregnancies", :action => "new_form" })
  post("/create_pregnancy", { :controller => "pregnancies", :action => "create_row" })

  # READ
  get("/pregnancies", { :controller => "pregnancies", :action => "index" })
  get("/pregnancies/:id_to_display", { :controller => "pregnancies", :action => "show" })

  # UPDATE
  get("/pregnancies/:prefill_with_id/edit", { :controller => "pregnancies", :action => "edit_form" })
  post("/update_pregnancy/:id_to_modify", { :controller => "pregnancies", :action => "update_row" })

  # DELETE
  get("/delete_pregnancy/:id_to_remove", { :controller => "pregnancies", :action => "destroy_row" })

  #------------------------------

  # Routes for the Cattle resource:

  # CREATE
  get("/cattles/new", { :controller => "cattles", :action => "new_form" })
  post("/create_cattle", { :controller => "cattles", :action => "create_row" })

  # READ
  get("/cattles", { :controller => "cattles", :action => "index" })
  get("/cattles/:id_to_display", { :controller => "cattles", :action => "show" })

  # UPDATE
  get("/cattles/:prefill_with_id/edit", { :controller => "cattles", :action => "edit_form" })
  post("/update_cattle/:id_to_modify", { :controller => "cattles", :action => "update_row" })

  # DELETE
  get("/delete_cattle/:id_to_remove", { :controller => "cattles", :action => "destroy_row" })

  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
