#
# Cookbook Name:: web_cb
# Recipe:: run
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

if node.role?('nginx_role')
   pvdr = 'nginx_cb_nginx_provider'
elsif node.role?('apache_role')
   pvdr = 'apache_cb_apache_provider'
else
   execute 'bash_command' do
      command "echo 'nothing to do.. bye'"
   end
end

web_cb_wrc "install web_server" do
  action :install
  provider pvdr
end

web_cb_wrc "ws nginx" do
  type_of_server "modified with chef"
  action :setup
  provider pvdr
end

web_cb_wrc "enable & start nginx" do
  action [:enable, :start]
  provider pvdr
end
