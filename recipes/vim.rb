#
# Cookbook Name:: sensu-tutorial
# Recipe:: vim 
#

yum_package "vim" 

cookbook_file "/root/.vimrc" do
  source "vimrc"
  mode 0755
end
