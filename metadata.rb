name             'rundeck'
maintainer       'Sous Chefs'
maintainer_email 'help@sous-chefs.org'
license          'Apache-2.0'
description      'Installs and configures Rundeck'
version          '9.0.0'

depends          'java', '< 12.0.2' # adoptopenjdk_linux_install commented out?
depends          'apache2', '>= 9.0.0'

%w(ubuntu centos fedora redhat scientific oracle rocky debian).each do |os|
  supports os
end

source_url 'https://github.com/sous-chefs/rundeck'
issues_url 'https://github.com/sous-chefs/rundeck/issues'
chef_version '>= 15.5'
