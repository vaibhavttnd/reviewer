#
# Cookbook Name:: m
# Recipe:: default
#
# Copyright (c) 2016 vaibhav.gulati@tothenew.com, All Rights Reserved.

include_recipe 'm::git'
include_recipe 'm::openssl'
include_recipe 'm::s3_upload'
