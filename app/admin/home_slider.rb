ActiveAdmin.register HomeSlider do

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

  permit_params :name, :body, :button, :button_url, :position, :status, :image
  filter :id
  filter :name
  filter :position

  form do |f|
    f.inputs "Home Slider Details" do
      f.input :name
      f.input :body
      f.input :button
      f.input :button_url
      f.input :position
      f.input :image
      f.input :status, :label => 'active'
    end
    f.actions
  end

  show do |slider|
    attributes_table do
      row :name
      row :body
      row :button
      row :button_url
      row :position
      row :image do
        image_tag(slider.image.url(:thumb))
      end
      row :status, :label => 'active'
      # Will display the image on show object page
    end
  end

  index do
    column :id

    column :image do |slider|
      image_tag(slider.image.url(:thumb))
    end

    column :name
    column :body
    column :button
    column :button_url
    column :position

    column :status, :label => 'active'
    actions
  end

end
