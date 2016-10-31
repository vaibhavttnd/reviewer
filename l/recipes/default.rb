#
# Cookbook Name:: search
# Recipe:: default
#
# Copyright (c) 2016 Vaibhav Gulati, All Rights Reserved.

#Assumption vg.pem placed on the node.

dbnodes = search(:node, "role:bastion")
dbnodes.each do |result|

template "/tmp/grant#{result['ipaddress']}.sh" do
   source "grant.erb"
   mode "0755"
   variables(
     :ip => result['ipaddress']
   )
end

execute 'my-cnf' do
command "scp -i ~/Downloads/vg.pem /tmp/grant#{result['ipaddress']}.sh ubuntu@54.158.123.226:/tmp/grant#{result['ipaddress']}.sh"
end

execute 'my-cnf' do
command "ssh -i ~/Downloads/vg.pem ubuntu@54.158.123.226 'bash /tmp/grant#{result['ipaddress']}.sh'"
end

end
