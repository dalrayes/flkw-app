ActiveAdmin.register Arrangement do


  index do
    column :name do |arrangement|
      link_to arrangement.name, admin_arrangement_path(arrangement)
    end

    column "Flowers" do |arrangement|
      arrangement.flowers.map(&:flower_type).join(', ')
    end

    column :availability
    column 'Show on site?', :visibility
    column :price, :sortable => :price do |bouquet|
      number_to_currency(bouquet.price,unit: "KWD ")
    end
    actions
  end

  show do |details|
    attributes_table do
      row :image do
        arrangement.image? ? image_tag(arrangement.image.url, height:'100') : content_tag(:span, 'No photo yet')
      end
      row :name
      row :item_number
      row :flowers do |arrangement|
        arrangement.flowers.map(&:flower_type).join(', ')
      end
      row :price
      row :width
      row :height
      row :container_type
      row :description
      row :availability
      row :visibility
      active_admin_comments
    end
  end

  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs "Bouquet Details" do
      f.input :name
      f.input :item_number
      f.input :price
      f.input :width
      f.input :height
      f.input :container_type, as: :radio, :collection => ["vase", "box"]
      f.input :description
      f.input :availability, as: :radio, collection: ["available", "not_available"]
      f.input :visibility, as: :radio, collection:  ["visible", "not_visible"]
      f.input :image, hint: f.arrangement.image? ? image_tag(f.arrangement.image.url, height: '100') : content_tag(:span, "Upload JPG/PNG/GIF image")
    end
    f.actions
  end

  filter :name
  filter :width
  filter :height
  filter :availability
  filter :visibility
  filter :price

  permit_params :name, :category_id, :item_number, :price, :availability, :width, :height, :description, :visibility, :container_type, :image

end