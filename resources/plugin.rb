actions :disable, :enable, :lock, :unlock

default_action :enable

attribute :name, :kind_of => String, :name_attribute => true
attribute :accept_license, :kind_of => [FalseClass, TrueClass], :default => false
