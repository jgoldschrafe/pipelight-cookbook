#
# Cookbook Name:: pipelight
# Recipe:: install
#

apt_package 'pipelight' do
  options '--install-recommends'
  action :install
end

execute 'update Pipelight dependency-installer script' do
  command 'pipelight-plugin --update'
  user 'root'
  action :run
end
