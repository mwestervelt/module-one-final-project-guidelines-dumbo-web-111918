class CreateCharityCauses < ActiveRecord::Migration[5.0]
  def change
    create_table :charity_causes do |t|
      t.integer :charity_id
      t.integer :cause_id
    end 
  end
end
