#
# Cookbook Name:: TestCookBook
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
node.default['AttributeValueInRecipie']='AttributeValueInRecipie'
Chef::Log.info("Hello recipe I am in #{node['AttributeValueInRecipie']}")

Chef::Log.debug("Hello recipe I am in oracle for debug")