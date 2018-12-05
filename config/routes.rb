Rails.application.routes.draw do
  # Routes for the Market price resource:

  # CREATE
  get("/market_prices/new", { :controller => "market_prices", :action => "new_form" })
  post("/create_market_price", { :controller => "market_prices", :action => "create_row" })

  # READ
  get("/market_prices", { :controller => "market_prices", :action => "index" })
  get("/market_prices/:id_to_display", { :controller => "market_prices", :action => "show" })

  # UPDATE
  get("/market_prices/:prefill_with_id/edit", { :controller => "market_prices", :action => "edit_form" })
  post("/update_market_price/:id_to_modify", { :controller => "market_prices", :action => "update_row" })

  # DELETE
  get("/delete_market_price/:id_to_remove", { :controller => "market_prices", :action => "destroy_row" })

  #------------------------------

  # Routes for the Activity log resource:

  # CREATE
  get("/activity_logs/new", { :controller => "activity_logs", :action => "new_form" })
  post("/create_activity_log", { :controller => "activity_logs", :action => "create_row" })

  # READ
  get("/activity_logs", { :controller => "activity_logs", :action => "index" })
  get("/activity_logs/:id_to_display", { :controller => "activity_logs", :action => "show" })

  # UPDATE
  get("/activity_logs/:prefill_with_id/edit", { :controller => "activity_logs", :action => "edit_form" })
  post("/update_activity_log/:id_to_modify", { :controller => "activity_logs", :action => "update_row" })

  # DELETE
  get("/delete_activity_log/:id_to_remove", { :controller => "activity_logs", :action => "destroy_row" })

  #------------------------------

  # Routes for the Cattle sale resource:

  # CREATE
  get("/cattle_sales/new", { :controller => "cattle_sales", :action => "new_form" })
  post("/create_cattle_sale", { :controller => "cattle_sales", :action => "create_row" })

  # READ
  get("/cattle_sales", { :controller => "cattle_sales", :action => "index" })
  get("/cattle_sales/:id_to_display", { :controller => "cattle_sales", :action => "show" })

  # UPDATE
  get("/cattle_sales/:prefill_with_id/edit", { :controller => "cattle_sales", :action => "edit_form" })
  post("/update_cattle_sale/:id_to_modify", { :controller => "cattle_sales", :action => "update_row" })

  # DELETE
  get("/delete_cattle_sale/:id_to_remove", { :controller => "cattle_sales", :action => "destroy_row" })

  #------------------------------

  # Routes for the Death resource:

  # CREATE
  get("/deaths/new", { :controller => "deaths", :action => "new_form" })
  post("/create_death", { :controller => "deaths", :action => "create_row" })

  # READ
  get("/deaths", { :controller => "deaths", :action => "index" })
  get("/deaths/:id_to_display", { :controller => "deaths", :action => "show" })

  # UPDATE
  get("/deaths/:prefill_with_id/edit", { :controller => "deaths", :action => "edit_form" })
  post("/update_death/:id_to_modify", { :controller => "deaths", :action => "update_row" })

  # DELETE
  get("/delete_death/:id_to_remove", { :controller => "deaths", :action => "destroy_row" })

  #------------------------------

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
