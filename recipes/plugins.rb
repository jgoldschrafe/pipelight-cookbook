#
# Cookbook Name:: pipelight
# Recipe:: plugins
#

node['pipelight']['enabled_plugins'].each do |plugin|
  pipelight_plugin plugin do
    action :enable
  end
end
