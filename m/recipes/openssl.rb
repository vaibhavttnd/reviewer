#
# Cookbook Name:: m
# Recipe:: openssl
#
# Copyright (c) 2016 vaibhav.gulati@tothenew.com, All Rights Reserved.

include_recipe 'openssl'

directory '/etc/apache2/ssl' do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end

openssl_x509 '/etc/apache2/ssl/mycert.pem' do
  common_name 'www.example.com'
  org 'ttn'
  org_unit 'ttn-devops'
  country 'IN'
  expire 365 
end
