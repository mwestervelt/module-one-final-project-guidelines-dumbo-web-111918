class RenameCharitysToCharities < ActiveRecord::Migration[5.0]
  def change
    rename_table :charitys, :charities
  end
end
