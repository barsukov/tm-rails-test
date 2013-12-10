ActiveAdmin.register Campaign do
  
  index do
    column :name
    column :budget
    column :platform
    actions
  end
end
