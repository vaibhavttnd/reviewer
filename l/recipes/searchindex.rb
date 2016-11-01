#
# Cookbook Name:: l
# Recipe:: searchindex
#
# Copyright (c) 2016 Vaibhav Gulati, All Rights Reserved.

#Assumption vg.pem placed on node.

dbnodes = search(:node, "role:bastion")
dbnodes.each do |result|

template "/tmp/grant#{result['ipaddress']}.sh" do
   source "grant.erb"
   mode "0755"
   variables(
     :ip => result['ipaddress']
   )
end

execute 'scp-script' do
command "scp -i ~/Downloads/vg.pem /tmp/grant#{result['ipaddress']}.sh ubuntu@#{node['db']['ip']}:/tmp/grant#{result['ipaddress']}.sh"
notifies :run, "execute[permission]", :immediately
end

execute 'permission' do
command "ssh -i ~/Downloads/vg.pem ubuntu@#{node['db']['ip']} 'bash /tmp/grant#{result['ipaddress']}.sh'"
action :nothing
end

end

