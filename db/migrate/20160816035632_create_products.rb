class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string   :name
      t.string   :url_name
      t.string   :varietal
      t.text     :description
      t.string   :status
      t.text     :vineyard
      t.text     :winemaking
      t.string   :colour
      t.string   :aroma
      t.text     :flavour
      t.string   :alcohol
      t.string   :country
      t.string   :bottle_size
      t.decimal  :retail_price, precision: 10, scale: 2
      t.decimal  :friends_price, precision: 10, scale: 2
      t.string   :vintage
      t.string   :review_points
      t.string   :review_author
      t.text     :review_body
      t.integer  :position
      t.boolean  :sold_out, default: false
      t.string   :product_code
      t.attachment :image

      t.timestamps
    end

    add_index :products, :product_code
    add_index :products, :url_name
  end
end
