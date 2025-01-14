unless platform_family?('rhel', 'amazon', 'fedora')
  apt_update
end

rundeck_server_install 'package' do
  acl_policies node['rundeck']['acl_policies']
  uuid '2f1d7b81-f8ec-4dcc-b538-bfcfa05fee9a'
  action :install
end

rundeck_apache 'package' do
  action :install
end

project_properties = {
  'service.FileCopier.default.provider': 'jsch-scp',
}

rundeck_project 'test' do
  description 'test project'
  label 'my test project'
  display_motd 'none'
  executions_disable false
  project_properties project_properties
  action :create
end

rundeck_project 'shouldnotexist' do
  action :delete
end
