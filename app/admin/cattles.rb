ActiveAdmin.register Cattle do

 permit_params :brinco, :data_compra_ou_desmame, :data_nascimento, :origem, :raca, :sexo, :pai, :brinco_mae, :peso_entrada, :preco_por_kilo, :status
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end
