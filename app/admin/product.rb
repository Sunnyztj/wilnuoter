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

  permit_params :name, :url_name, :varietal, :description, :status, :vineyard, :winemaking, :colour, :aroma, :flavour, :alcohol, :country, :bottle_size, :retail_price, :friends_price, :vintage, :review_points, :review_author, :review_body, :position, :sold_out, :product_code, :image

  form do |f|
    f.inputs "Products" do
      f.input :name
      f.input :description
      f.input :status
      f.input :retail_price
    end

    f.actions
  end

  show do
    attributes_table do
      row :name
      row :description
      row :status
      row :retail_price
    end
  end

  index do
    column :id
    column :name
    column :description
    column :status
    column :retail_price

    actions
  end
end
