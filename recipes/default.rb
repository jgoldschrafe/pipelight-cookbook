#
# Cookbook Name:: pipelight
# Recipe:: default
#

include_recipe 'pipelight::repo'
include_recipe 'pipelight::install'
include_recipe 'pipelight::plugins'
