package 'tree' do
  action :install
end

package 'ntp' do
  action :install
end

template '/etc/motd' do
  source 'motd.erb'
  variables(
    :name => 'Adam Parkin'
  )
  action :create
end

package 'git' do
  action :install
end
