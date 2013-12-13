ActiveAdmin.register Campaign do
  
  index do
    column :name
    column :budget
    column :platform
    actions
  end

  collection_action :history do
    @campaigns = Campaign.require_budget
    render "layouts/history"
  end
end
