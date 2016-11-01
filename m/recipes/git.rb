#
# Cookbook Name:: m
# Recipe:: git
#
# Copyright (c) 2016 vaibhav.gulati@tothenew.com, All Rights Reserved.

package 'git'

git "/tmp/openssl" do
  repository "https://github.com/opscode-cookbooks/openssl"
  revision "HEAD"
  action :sync
end
