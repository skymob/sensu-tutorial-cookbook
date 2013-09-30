#
# Cookbook Name:: sensu-tutorial
# Recipe:: server 
# 
# set up the sensu server

include_recipe "monitor::master"
include_recipe "monitor::redis"
include_recipe "monitor::rabbitmq"

cookbook_file "/etc/sensu/handlers/mailer.rb" do
  source "handlers/mailer.rb"
  mode 0755
end

sensu_gem "mail" do
  version "2.4.0"
end
