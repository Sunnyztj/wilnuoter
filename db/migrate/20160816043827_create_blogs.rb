class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string   :name
      t.text     :body
      t.string   :url_name
      t.attachment :feature_image

      t.timestamps
    end
    add_index :blogs, :url_name
  end
end
