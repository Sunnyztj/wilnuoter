ActiveAdmin.register ProductImage do

  permit_params :image, :name, :product_id

  form do |f|
    f.inputs "Details" do
      f.input :product_id, as: :select, collection: Product.all
      f.input :name
      f.input :image, required: false, as: :file, :hint => f.template.image_tag(f.object.image.url(:small))
    end
    f.actions
  end

  index do
    column "Product" do |product_image|
      "#{product_image.product == nil ? '' : product_image.product.name}"
    end
    column :name
    column :image do |c|
      image_tag(c.image.url(:small))
    end
    actions
  end

  show do |product_image|
    attributes_table do
      row "product" do |product_image|
        "#{product_image.product == nil ? '' : product_image.product.name}"
      end
      row :id
      row :name
      row :image do
        image_tag(product_image.image.url(:small))
      end
      row :created_at
      row :updated_at
    end
    active_admin_comments
  end

end
