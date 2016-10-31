# n

TODO: Enter the cookbook description here.

knife ec2 server create -r 'role[webserver]' -I ami-2d39803a -f t2.micro --security-group-ids sg-239fda5b --ssh-key vg -i <path_to_key> --ssh-user ubuntu --aws-access-key-id '<acess-key>' --aws-secret-access-key "secret-key"
