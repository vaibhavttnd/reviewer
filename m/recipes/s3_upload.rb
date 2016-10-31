#
# Cookbook Name:: m
# Recipe:: s3_upload
#
# Copyright (c) 2016 vaibhav.gulati@tothenew.com, All Rights Reserved.


template "/tmp/s3_upload.sh" do
   source "default.erb"
   mode "0644"
   variables(
     :file => node["file_path"],
     :bucket => node["bucket"],
     :access_key => node["access_key"],
     :secret_key => node["secret_key"]
   )
   notifies :run, "execute[s3-upload-file]", :immediately
end

execute 's3-upload-file' do
  command 'bash /tmp/s3_upload.sh'
  action :nothing
end
