class CreateUserCauses < ActiveRecord::Migration[5.0]
  def change
    create_table :user_causes do |t|
      t.integer :user_id
      t.integer :cause_id
    end 
  end
end
