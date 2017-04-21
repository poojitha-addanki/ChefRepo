#
# Cookbook Name:: TestCookBook
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

node.default['TestDirctoryPath']='C:/tmp'
node.default['FileName']='testFile.txt'
node.default['owner']='Administrator'
node.default['group']='Administrator'
node.default['mode']='0755'


if node['platform'] != 'windows'
	node.default['owner']='root'
	node.default['group']='root'
	node.default['mode']='0755'
	node.default['TestDirctoryPath']='/tmp/test'

end
directory "#{node['TestDirctoryPath']}" do
  owner node.default['owner']
  group node.default['group']
  mode node.default['mode']
  recursive  true
  action :create
  not_if { Dir.exist?("#{node['TestDirctoryPath']}") }
end
cookbook_file "#{node['TestDirctoryPath']}/#{node['FileName']}" do
  source "#{node.default['FileName']}"
  action :create
end