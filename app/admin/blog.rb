ActiveAdmin.register Blog do

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
  permit_params :name, :body, :presence, :feature_image

  form do |f|
    f.inputs "Blog" do
      f.input :name
      f.input :body
      # f.input :presence
      f.input :feature_image
    end

    f.actions
  end

  show do |blog|
    attributes_table do
      row :name
      row :body
      # row :presence
      row :feature_image do
        image_tag(blog.feature_image.url(:thumb))
      end
    end
  end

  index do
    column :id
    column :name
    column :body
    # column :presence
    column :feature_image do |blog|
      image_tag(blog.feature_image.url(:thumb))
    end

    actions
  end
end
