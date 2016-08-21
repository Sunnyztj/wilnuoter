ActiveAdmin.register Staff do

  permit_params :image, :name, :position, :role

  form do |f|
    f.inputs "Details" do
      f.input :name
      f.input :role
      f.input :position
      f.input :image, required: false, as: :file, :hint => f.template.image_tag(f.object.image.url(:small))
    end
    f.actions
  end

  index do
    column :name
    column :role
    column :position
    column :image do |c|
      image_tag(c.image.url(:small))
    end
    actions
  end

  show do |product_image|
    attributes_table do
      row :id
      row :name
      row :role
      row :position
      row :image do
        image_tag(product_image.image.url(:small))
      end
    end
    active_admin_comments
  end

end
