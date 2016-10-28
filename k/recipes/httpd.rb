#
# Cookbook Name:: k
# Recipe:: httpd
#
# Copyright (c) 2016 vaibhav.gulati@tothenew.com, All Rights Reserved.


remote_file "/tmp/httpd-#{node['httpd']['version']}.tar.gz" do
  source "http://archive.apache.org/dist/httpd/httpd-#{node['httpd']['version']}.tar.gz"
  notifies :run, "bash[install_program]", :immediately
end

bash "install_program" do
  user "root"
  cwd "/tmp"
  code <<-EOH
    tar -zxf httpd-#{node['httpd']['version']}.tar.gz 
    (cd httpd-#{node['httpd']['version']}/ && ./configure  --prefix=/usr/local/apache2 && make && make install)
  EOH
  action :nothing
end
