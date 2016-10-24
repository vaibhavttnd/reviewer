#
# Cookbook Name:: i
# Recipe:: install
#
# Copyright (c) 2016 vaibhav.gulati@tothenew.com, All Rights Reserved.

package 'apache2'

template "/etc/apache2/sites-available/000-default.conf" do
   source "default.erb"
   mode "0644"
   variables(
     :document_root => node["docroot"],
     :port => node["sites"]["port"],
     :serveradmin => node["sites"]["serveradmin"],
     :servername => node["sites"]["servername"],
     :error_log => node['apache2_log']
   )
end

service "apache2" do
  action :restart
end

