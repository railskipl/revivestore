Deface::Override.new(:virtual_path => "layouts/admin",
                     :name => "auth_admin_login_navigation_bar",
                     :replace => "[data-hook='admin_login_navigation_bar'], #admin_login_navigation_bar[data-hook]",
                     :partial => "layouts/admin/login_nav")
