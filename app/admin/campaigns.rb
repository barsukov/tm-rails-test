ActiveAdmin.register Campaign do
  
  index do
    column :name
    column :budget
    column :platforms do |campaign|
        campaign.platforms.map { |p| p.name }.join(' ')
    end
    actions
  end


  form do |f|
    f.inputs "Campaign" do
      f.input :name
      f.input :budget
      f.input :platforms, as: :check_boxes, collection: Platform.all, required: true
    f.actions
    end
  end
end
