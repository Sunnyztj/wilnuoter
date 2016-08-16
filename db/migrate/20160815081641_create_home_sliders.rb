class CreateHomeSliders < ActiveRecord::Migration
  def change
    create_table :home_sliders do |t|
      t.string  :name
      t.string  :body
      t.string  :button
      t.string  :button_url
      t.integer :position, :default => 0, :null => false
      t.boolean :status
      t.attachment :image

      t.timestamps
    end
  end
end
