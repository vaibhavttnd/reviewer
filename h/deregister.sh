#
# Cookbook Name:: k
# Script:: deregister
#
# Copyright (c) 2016 vaibhav.gulati@tothenew.com, All Rights Reserved.


#!/bin/bash

node_name=$1

knife node delete $node_name
