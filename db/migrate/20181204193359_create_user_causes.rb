class CreateUserCauses < ActiveRecord::Migration[5.0]
  def change
    create_table :usercauses do |t|
      t.string :user_id
      t.string :cause_id
    end
  end
end
