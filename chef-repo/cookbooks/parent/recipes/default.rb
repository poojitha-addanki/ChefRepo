#
# Cookbook Name:: parent
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe 'child'
Chef::Log.info("Hello recipe I am in #{node['oracle_170417_cookbook']['git_instller']}")