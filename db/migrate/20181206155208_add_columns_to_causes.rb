class AddColumnsToCauses < ActiveRecord::Migration[5.0]
  def change
    add_column :causes, :charity, :string
    add_column :causes, :mission, :string
  end
end
