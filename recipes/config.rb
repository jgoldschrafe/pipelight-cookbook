#
# Cookbook Name:: pipelight
# Recipe:: config
#

cookbook_file '/usr/share/pipelight/configs/pipelight-x64-flash' do
  source 'config/pipelight-x64-flash'
  user 'root'
  group 'root'
  mode 00644
  action :create
end

apt_package 'pipelight' do
  options '--install-recommends'
  action :install
end

execute 'update Pipelight dependency-installer script' do
  command 'pipelight-plugin --update'
  user 'root'
  action :run
end
