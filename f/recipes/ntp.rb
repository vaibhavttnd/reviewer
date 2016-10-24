#
# Cookbook Name:: f
# Recipe:: ntp
#
# Copyright (c) 2016 vaibhav.gulati@tothenew.com, All Rights Reserved.

package 'ntp'

cookbook_file '/et/ntp.conf' do
  source 'ntp.conf'
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end
