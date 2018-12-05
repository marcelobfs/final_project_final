class BirthsController < ApplicationController
  
   def import
       
    params.permit(:brinco, :first_weight)
    
    Cattle.import_birth(params[:file])
    record_activity("Subiu atualização de nascimentos")
    redirect_to("/cattles", :notice => "Dados de nascimento importados com sucesso!")

   end

end
