class RenamePositionToRoleInStaff < ActiveRecord::Migration
  def change
    rename_column :staffs, :position, :role
  end
end
