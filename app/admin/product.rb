ActiveAdmin.register Product do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

  permit_params :name, :url_name, :varietal, :description, :status, :vineyard, :winemaking, :colour, :aroma, :alcohol, :country, :bottle_size, :retail_price, :friends_price, :vintage, :review_points, :review_author, :review_body, :position, :sold_out, :product_code, :image, flavour_ids: []

  form do |f|
    f.inputs "Products" do
      f.input :name
      f.input :description, :as => :ckeditor
      f.input :image, as: :file, :hint => image_tag(f.object.image.url(:small))
      f.input :status
      f.input :retail_price
      f.input :flavours, :as => :check_boxes, :collection => Flavour.all
    end

    f.actions
  end

  show do |product|
    attributes_table do
      row :name
      row :description
      row :status
      row :retail_price
      row :image do
        image_tag(product.image.url(:thumb))
      end
      row :flavour do
        product.flavours.map(&:name).join(', ')
      end
    end
  end

  index do
    column :id

    column :image do |product|
      image_tag(product.image.url(:thumb))
    end

    column :name
    column :description
    column :status
    column :retail_price

    column :flavour do |product|
      product.flavours.map(&:name).join(', ')
    end

    actions
  end
end
