#
# Cookbook Name:: sensu-tutorial
# Recipe:: server 
# 
# set up the sensu server

include_recipe "monitor::master"
include_recipe "monitor::redis"
include_recipe "monitor::rabbitmq"
include_recipe "sensu_files"
