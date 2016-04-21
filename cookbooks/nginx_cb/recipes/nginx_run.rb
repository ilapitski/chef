#
# Cookbook Name:: nginx_cb
# Recipe:: nginx_run
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

web_cb_wrc "install nginx" do
action :install
provider "nginx_cb_nginx_provider"
end

web_cb_wrc "ws nginx" do
type_of_server "modified with chef"
action :setup
provider "nginx_cb_nginx_provider"
end


web_cb_wrc "enable & start nginx" do
action [:enable, :start]
provider "nginx_cb_nginx_provider"
end
