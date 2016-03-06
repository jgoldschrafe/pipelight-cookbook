#
# Cookbook Name:: pipelight
# Recipe:: repo
#

include_recipe 'rabbit_repo::apt'

apt_repository "pipelight-ubuntu-stable-#{node['lsb']['codename']}" do
  uri 'ppa:pipelight/stable'
  distribution node['lsb']['codename']
  action :add
end
