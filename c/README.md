# c

TODO: Enter the cookbook description here.


client.pem :
Chef communicates and authenticated itself to the Chef server using client.pem file located in /etc/chef/client.pem.

chef-validator.pem :
During the initial chef-client run, the chef-client will register with the Chef server using the private key assigned to the chef-validator, after which the chef-client will obtain a client.pem private key for all future authentication requests to the Chef server.

The validator key is used to create new clients on the Chef Server.

Once the attacker gets hold of it, he can pretend he's a node in your infrastructure and have access to the same information any node has.


admin.pem : 

Got answer but not sure : It is used to create validator's which in turn will be used to create client.pem.
