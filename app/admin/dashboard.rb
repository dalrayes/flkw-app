ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    div class: "blank_slate_container", id: "dashboard_default_message" do
      # span class: "blank_slate" do
        # span I18n.t("active_admin.dashboard_welcome.welcome")
        # small I18n.t("active_admin.dashboard_welcome.call_to_action")
      # end
    end

    columns do
      column do
        panel "Recent Arrangements" do
          table_for Arrangement.order("updated_at desc").limit(5) do
            column :name do |arr|
              link_to arr.name, admin_arrangements_path(arr)
            end
            column :updated_at
          end
          strong {link_to "VIEW ALL ARRANGEMENTS", admin_arrangements_path}
        end
      end
    end
  end 
end
