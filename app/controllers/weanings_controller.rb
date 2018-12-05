class WeaningsController < ApplicationController
  
   def import
    
    Cattle.update_weaning(params[:file])
    record_activity("Subiu atualização de desmame")
    redirect_to("/cattles", :notice => "Dados de desmame importados com sucesso!")

   end

end
