class Weighting < ApplicationRecord
  
  require 'csv'
   
      def self.import(file)
         CSV.foreach(file.path, headers: true, header_converters: :symbol, encoding: "UTF-8") do |row|
            
        unformatted_date = row[:data]
        date = Date.strptime(unformatted_date, "%d/%m/%y")
        row[:created_at] = date
        row = row.tap { |hs| hs.delete(:data) }
         
         Weighting.create row.to_hash
         
            catalog = Cattle.where(brinco: row[:brinco])
            row_to_update = Weighting.where(brinco: row[:brinco])
            
            id={}
            catalog.each do |cattle_id|
            id[:cattle_id] = cattle_id.id
            end
            
            row_to_update.update id.to_hash
         
         end
      end
  
  # Direct associations

  belongs_to :cattle, required: false

  # Indirect associations

  # Validations
  
  validates :brinco, uniqueness: { scope: :created_at,
    message: "mais de uma pesagem por brinco nesta data" }

end
