class CreateActivityLogs < ActiveRecord::Migration[5.1]
  def change
    create_table :activity_logs do |t|
      t.string :user_name
      t.string :action
      t.string :activity_description
      t.string :file_name

      t.timestamps
    end
  end
end
