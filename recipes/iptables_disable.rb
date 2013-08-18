#
# Cookbook Name:: sensu-tutorial
# Recipe:: iptables_disable 
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

# stolen from 
# https://github.com/2600hz/chef_solo/blob/master/cookbooks/basics/recipes/iptables_disable.rb

service "iptables" do
    action [:stop, :disable]
      ignore_failure true
end

ruby_block "remove_iptables_disable" do
  block do
    Chef::Log.info("Removing iptables_disable recipe from run_list")
    node.run_list.remove("recipe[basics::iptables_disable]") if node.run_list.include?("recipe[basics::iptables_disable]")
 end
end
