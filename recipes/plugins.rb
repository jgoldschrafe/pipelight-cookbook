#
# Cookbook Name:: pipelight
# Recipe:: plugins
#

node['pipelight']['enabled_plugins'].each do |plugin|
  pipelight_plugin plugin do
    accept_license node['pipelight']['plugins'][plugin]['accept_license']
    action :enable
  end
end
