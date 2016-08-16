class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string   :name
      t.text     :body
      t.integer  :parent_id
      t.string   :url_name
      t.attachment :banner_image

      t.timestamps
    end

    add_index :pages, :url_name
    add_index :pages, :parent_id
  end
end
