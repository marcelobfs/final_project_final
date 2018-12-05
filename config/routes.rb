Rails.application.routes.draw do
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
