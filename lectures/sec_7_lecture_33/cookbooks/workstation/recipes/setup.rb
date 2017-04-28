package 'tree' do
  action :install
end

package 'ntp' do
  action :install
end

file '/etc/motd' do
  content "This server is the property of Adam Parkin\n"
  group 'root'
  owner 'root'
  action :create
end

package 'git' do
  action :install
end
