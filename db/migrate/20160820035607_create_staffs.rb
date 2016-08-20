class CreateStaffs < ActiveRecord::Migration
  def change
    create_table :staffs do |t|
      t.string :name
      t.string :position
      t.attachment :image

      t.timestamps
    end
  end
end
