class CreateCharities < ActiveRecord::Migration[5.0]
  def change
    create_table :charitys do |t|
      t.string :name
    end 
  end
end
