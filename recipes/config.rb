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
