#
# Cookbook Name:: pipelight
# Recipe:: repo
#

apt_repository "pipelight-ubuntu-stable-#{node['lsb']['codename']}" do
  uri 'ppa:pipelight/stable'
  distribution node['lsb']['codename']
  action :add
end
