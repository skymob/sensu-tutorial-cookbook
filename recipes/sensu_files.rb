#
# Cookbook Name:: sensu-tutorial
# Recipe:: sensu_files
#
# One-off files needed for Sensu tutorial at Velocity 2013

cookbook_file "/etc/sensu/handlers/mailer.rb" do
  source "handlers/mailer.rb"
  mode 0755
end
