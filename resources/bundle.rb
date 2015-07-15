actions :install
default_action :install

attribute :plugin, :kind_of => String, :name_attribute => true
attribute :source, :kind_of => String, :required => true
attribute :user, :kind_of => String, :required => true
