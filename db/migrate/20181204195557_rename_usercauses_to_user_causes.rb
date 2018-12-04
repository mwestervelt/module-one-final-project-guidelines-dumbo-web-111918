class RenameUsercausesToUserCauses < ActiveRecord::Migration[5.0]
  def change
    rename_table :usercauses, :user_causes
  end
end
