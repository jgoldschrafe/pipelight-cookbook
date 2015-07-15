use_inline_resources if defined?(use_inline_resources)

def whyrun_supported?
  true
end

action :disable do
  link "/usr/lib/mozilla/plugins/libpipelight-#{new_resource.name}.so" do
    action :delete
  end

  execute "disable Pipelight plugin #{new_resource.name}" do
    command "pipelight-plugin --disable #{new_resource.name}"
    user 'root'
    action :run
    only_if "pipelight-plugin --list-enabled-all | grep '^#{new_resource.name}$'"
  end
end

action :enable do
  if new_resource.accept_license
    execute "enable Pipelight plugin #{new_resource.name}" do
      command "pipelight-plugin --accept --enable #{new_resource.name}"
      user 'root'
      action :run
      not_if "pipelight-plugin --list-enabled-all | grep '^#{new_resource.name}$'"
    end

    link "/usr/lib/mozilla/plugins/libpipelight-#{new_resource.name}.so" do
      to "/usr/lib/pipelight/libpipelight-#{new_resource.name}.so"
      action :create
    end
  else
    raise "Must accept license agreement to enable Pipelight plugin #{new_resource.name}"
  end
end

action :lock do
  execute "lock Pipelight plugin #{new_resource.name}" do
    command "pipelight-plugin --lock #{new_resource.name}"
    user 'root'
    action :run
    only_if { ::File.exist?("/usr/lib/pipelight/libpipelight-#{new_resource.name}.so") }
  end
end

action :unlock do
  execute "unlock Pipelight plugin #{new_resource.name}" do
    command "pipelight-plugin --unlock #{new_resource.name}"
    user 'root'
    action :run
    not_if { ::File.exist?("/usr/lib/pipelight/libpipelight-#{new_resource.name}.so") }
  end
end
