#
# Cookbook Name:: patching
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
Chef::Log.info( "This is #{node['version']} version #{node['atrribute']}")
data = data_bag_item('TestDataBag', 'ubuntuCorrectNode')
Chef::Log.info("data item print data #{data['monitor_config']['secretKey']} ")

admins = data_bag('TestDataBag')
admins.each do |login|
  admin = data_bag_item('TestDataBag', login)
  Chef::Log.info("I am in #{node.name}")
  Chef::Log.info("I am in #{admin.id}")

  if node.name == admin.id
   Chef::Log.info("I am in #{node.name}")
  else
  	 Chef::Log.info("I am in esle part")
  end
  
end
chef_data_bag_item "TestDataBag" do 
  id "#{TestDataBag}/ubuntuCorrectNode"
  data_bag TestDataBag
  action :delete
end