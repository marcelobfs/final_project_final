class Cattle < ApplicationRecord
  
      require 'csv'
   
      def self.update_weaning(file)
         CSV.foreach(file.path, headers: true, header_converters: :symbol) do |row|
            
            row_to_update = Cattle.where(brinco: row[:brinco])
            
            brinco_mae ={}
            row_to_update.each do |find_cow|
            brinco_mae[:brinco_mae] = find_cow.brinco_mae
            end
            
            MarketPrice.order('created_at desc').limit(1).each do |cur_price|
            row[:price_per_kilo] = cur_price.current_price
            end
            
            row[:status] = "engorda"
            
            row_to_update.update row.to_hash
            
            cow_to_update = Cattle.where(brinco: brinco_mae[:brinco_mae])
            
            cow_status ={}
            cow_status[:status] = "vazia"
            
            
            cow_to_update.update cow_status.to_hash
            

         end
      end
      
      def self.import_birth(file)
         CSV.foreach(file.path, headers: true, header_converters: :symbol) do |row|
         
         row[:status] = "mamando"
         row[:origem] = "crioulo"
         
         Cattle.create! row.to_hash
         
         vaca = Pregnancy.where(brinco: row[:brinco_mae])
         row_to_update = Cattle.where(brinco: row[:brinco])
         cow_to_update = Cattle.where(brinco: row[:brinco_mae])
            
            nome={}
            vaca.each do |achar_pai|
            nome[:pai] = achar_pai.touro
            end
         
         status ={}
         status[:prenha] = 0
         cow_status ={}
         cow_status[:status] = "amamentando"
            
         row_to_update.update nome.to_hash
         cow_to_update.update cow_status.to_hash
         vaca.update status.to_hash
         
         #my_object.update row.to_hash - definir atualizacao da tabela de gravidez

         
         end
      end
      
      def self.import(file)
         CSV.foreach(file.path, headers: true, header_converters: :symbol) do |row|
         
         row[:status] = "engorda"
         
         Cattle.create! row.to_hash
         end
      end
  
  # Direct associations

  has_many   :vaccinations,
             :dependent => :destroy

  has_many   :weightings,
             :dependent => :destroy

  has_many   :pregnancies,
             :dependent => :destroy

  has_one    :cattle_sale,
             :dependent => :destroy

  has_one    :death,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
