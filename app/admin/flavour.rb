ActiveAdmin.register Flavour do

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

  permit_params :name

  form do |f|
    f.inputs "Flavours" do
      f.input :name
    end

    f.actions
  end

  show do
    attributes_table do
      row :name
    end
  end

  index do
    column :id
    column :name

    actions
  end

end
