ActiveAdmin::Dashboards.build do
  section "Recently updated content" do
    table_for PaperTrail::Version.order('id desc').limit(20) do # Use PaperTrail::Version if this throws an error
      column "Item" do |v| v.item end
      column "Type" do |v| v.item_type.underscore.humanize end
      column "Modified at" do |v| v.created_at.to_s :long end
    end
  end
end
