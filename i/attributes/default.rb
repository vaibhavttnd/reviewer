#
# Cookbook:: i
# Attributes:: default
#
# Copyright 2016 vaibhav.gulati@tothenew.com
#
# All rights reserved - Do Not Redistribute
#

default['docroot'] = '/var/www/html'
default["sites"] = { "port" => 80, "servername" => "vaibhav.org", "serveradmin" => "webmaster@vaibhav.org" }
default['apache2_log'] = '/var/log/apache2'
