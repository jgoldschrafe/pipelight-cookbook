use_inline_resources if defined?(use_inline_resources)

def whyrun_supported?
  true
end

action :install do
  tar_extract new_resource.source do
    download_dir '/tmp'
    group lazy { Etc.getgrgid(Etc.getpwnam(new_resource.user).gid).name }
    user new_resource.user
    target_dir lazy { Dir.home(new_resource.user) }
    creates lazy { "#{Dir.home(new_resource.user)}/.cache/pipelight/plugininfo-#{new_resource.plugin}" }
    action :extract
  end
end
