class Vaccination < ApplicationRecord
  
  require 'csv'
   
      def self.import(file)
         CSV.foreach(file.path, headers: true, header_converters: :symbol) do |row|
            
         Vaccination.create! row.to_hash
         
            catalog = Cattle.where(brinco: row[:brinco])
            row_to_update = Vaccination.where(brinco: row[:brinco])
            
            id={}
            catalog.each do |cattle_id|
            id[:cattle_id] = cattle_id.id
            end
            
            row_to_update.update id.to_hash
         
         end
      end
  
  # Direct associations

  belongs_to :cattle

  # Indirect associations

  # Validations

end
